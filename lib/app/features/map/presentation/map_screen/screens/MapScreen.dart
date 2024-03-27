import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/map_bloc/bloc/map_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

// import 'package:yandex_sirius/app/features/map/presentation/map_screen/map_bloc/bloc/map_event.dart';
import 'package:flutter_map/src/gestures/map_events.dart';

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
                        List<Marker> now = [];
                        List<Marker> prev = [];
                        for (var i in state.nowCoordinate) {
                          now.add(Marker(
                              point: LatLng(i.coordinate.latitude,
                                  i.coordinate.longitude),
                              child: Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: Image.network(i.photoUrl).image,
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              )));
                        }
                        for (var i in state.prevCoordinate) {
                          prev.add(Marker(
                              point: LatLng(i.coordinate.latitude,
                                  i.coordinate.longitude),
                              child: Container(
                                height: 20.0,
                                width: 20.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: Image.network(i.photoUrl).image,
                                    fit: BoxFit.fill,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                              )));
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
                      event: FriendsMapEvent.showAllFriends(),
                      text: 'friends'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.changeZoom(1),
                      text: '+'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.changeZoom(-1),
                      text: '-')
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
      {super.key,
      required this.markerLayer,
      required this.previousLayer,
      required super.listenable});

  Animation<double> get _progress => listenable as Animation<double>;
  final List<Marker> markerLayer;
  final List<Marker>? previousLayer;

  @override
  Widget build(BuildContext context) {
    List<Marker> markers = [];
    if (previousLayer == null || previousLayer!.length != markerLayer.length) {
      return MarkerLayer(markers: markerLayer);
    }
    for (int i = 0; i < previousLayer!.length; ++i) {
      double tarLon =
          previousLayer![i].point.longitude * (1 - _progress.value) +
              markerLayer[i].point.longitude * _progress.value;
      double tarLat = previousLayer![i].point.latitude * (1 - _progress.value) +
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
