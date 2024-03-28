import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import 'package:rive/rive.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/map_bloc/bloc/map_bloc.dart';

class MapScreen extends StatelessWidget {
  MapScreen({super.key});

  final MapController _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MapBloc>.value(
      value: GetIt.I<MapBloc>(),
      child: Stack(
        children: [
          Expanded(
            child: FlutterMap(
              mapController: _mapController,
              options: const MapOptions(
                center: LatLng(0.0, 0.0),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                BlocBuilder<MapBloc, MapState>(builder: (context, state) {
                  final bloc = BlocProvider.of<MapBloc>(context);
                  bloc.add(FriendsMapEvent.started(_mapController));
                  return state.map(
                      updCoordinates: (state) {
                        final List<Marker> now = [];
                        final List<Marker> prev = [];
                        const backgroundAnimation = Center(
                            child: RiveAnimation.asset(
                          'assets/blobbino_felicino.riv',
                          fit: BoxFit.scaleDown,
                        ));
                        int cnt = 0;
                        for (final i in state.nowCoordinate) {
                          now.add(Marker(
                              point: LatLng(i.coordinate.latitude,
                                  i.coordinate.longitude),
                              child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Stack(children: [
                                    ((++cnt) < state.nowCoordinate.length)
                                        ? backgroundAnimation
                                        : const SizedBox(),
                                    Center(
                                        child: CircleAvatar(
                                      backgroundImage:
                                          Image.network(i.photoUrl).image,
                                      radius: 12,
                                    )),
                                  ]))));
                        }
                        for (final i in state.prevCoordinate) {
                          prev.add(Marker(
                            point: LatLng(
                                i.coordinate.latitude, i.coordinate.longitude),
                            child: const SizedBox(
                                height: 20.0, width: 20.0, child: Stack()),
                          ));
                        }
                        return AnimatedMarkerLayerGlobal(
                          previous: prev,
                          now: now,
                        );
                      },
                      initial: (state) => const AnimatedMarkerLayerGlobal(
                            previous: [],
                            now: [],
                          ));
                })
              ],
            ),
          ),
          const Positioned(
            bottom: 0,
            child: SizedBox(
                height: 50,
                child: Row(children: [
                  ButtonWithBlock(
                      event: FriendsMapEvent.goHome(), text: 'home'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.nextFriend(), text: 'next'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.showAllFriends(), text: 'friends'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.changeZoom(1), text: '+'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.changeZoom(-1), text: '-')
                ])),
          )
        ],
      ),
    );
  }
}

class ButtonWithBlock extends StatelessWidget {
  const ButtonWithBlock({required this.event, required this.text, super.key});

  final FriendsMapEvent event;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          final bloc = BlocProvider.of<MapBloc>(context);
          bloc.add(event);
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ));
  }
}

class AnimatedMarkerLayer extends AnimatedWidget {
  const AnimatedMarkerLayer(
      {required this.markerLayer, required this.previousLayer, required super.listenable, super.key});

  Animation<double> get _progress => listenable as Animation<double>;
  final List<Marker> markerLayer;
  final List<Marker>? previousLayer;

  @override
  Widget build(BuildContext context) {
    final List<Marker> markers = [];
    if (previousLayer == null || previousLayer!.length != markerLayer.length) {
      return MarkerLayer(markers: markerLayer);
    }
    for (int i = 0; i < previousLayer!.length; ++i) {
      final double tarLon =
          previousLayer![i].point.longitude * (1 - _progress.value) +
              markerLayer[i].point.longitude * _progress.value;
      final double tarLat = previousLayer![i].point.latitude * (1 - _progress.value) +
          markerLayer[i].point.latitude * _progress.value;
      markers.add(
          Marker(point: LatLng(tarLat, tarLon), child: markerLayer[i].child));
    }
    return MarkerLayer(markers: markers);
  }
}

class AnimatedMarkerLayerGlobal extends StatefulWidget {
  const AnimatedMarkerLayerGlobal({super.key, this.previous, this.now});

  final List<Marker>? previous;
  final List<Marker>? now;

  @override
  State<AnimatedMarkerLayerGlobal> createState() {
    return AnimatedMarkerLayerGlobalState();
  }
}

class AnimatedMarkerLayerGlobalState extends State<AnimatedMarkerLayerGlobal>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    _controller.reset();
    return AnimatedMarkerLayer(
        markerLayer: widget.now!,
        previousLayer: widget.previous,
        listenable: _controller..forward());
  }
}
