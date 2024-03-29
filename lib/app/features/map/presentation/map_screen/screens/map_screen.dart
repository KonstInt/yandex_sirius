import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import 'package:rive/rive.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/map_bloc/bloc/map_bloc.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late final MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: FlutterMap(
            mapController: mapController,
            options: const MapOptions(
                interactiveFlags:
                    InteractiveFlag.pinchZoom | InteractiveFlag.drag,
                initialCenter: LatLng(0.0, 0.0),
                maxZoom: 20,
                minZoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              ),
              BlocProvider<MapBloc>.value(
                value: GetIt.I<MapBloc>()
                  ..add(FriendsMapEvent.started(mapController)),
                child:
                    BlocBuilder<MapBloc, MapState>(builder: (context, state) {
                  final _markerSize = 50.0 * (mapController.camera.zoom / 9);
                  return state.map(
                    updCoordinates: (state) {
                      final List<Marker> now = [];
                      final List<Marker> prev = [];
                      const backgroundAnimation = Center(
                          child: RiveAnimation.asset(
                        'assets/blobbino_felicino.riv',
                      ));
                      int cnt = 0;
                      for (final i in state.nowCoordinate) {
                        now.add(
                          Marker(
                            width: _markerSize,
                            height: _markerSize,
                            point: LatLng(
                                i.coordinate.latitude, i.coordinate.longitude),
                            child: Stack(
                              children: [
                                ((++cnt) < state.nowCoordinate.length)
                                    ? backgroundAnimation
                                    : const SizedBox(),
                                i.photoUrl != null
                                    ? Center(
                                        child: CircleAvatar(
                                          backgroundImage: Image.network(
                                            i.photoUrl!,
                                            fit: BoxFit.fill,
                                          ).image,
                                          radius: _markerSize / 2 -
                                              0.15 * _markerSize,
                                        ),
                                      )
                                    :
                                    //TODO: empty photo
                                    const SizedBox(),
                              ],
                            ),
                          ),
                        );
                      }
                      for (final i in state.prevCoordinate) {
                        prev.add(
                          Marker(
                            height: _markerSize,
                            width: _markerSize,
                            point: LatLng(
                                i.coordinate.latitude, i.coordinate.longitude),
                            child: const SizedBox(height: 300.0, width: 300.0),
                          ),
                        );
                      }
                      return AnimatedMarkerLayerGlobal(
                        previous: prev,
                        now: now,
                      );
                    },
                    initial: (state) => const AnimatedMarkerLayerGlobal(
                      previous: [],
                      now: [],
                    ),
                    loading: (value) => const AnimatedMarkerLayerGlobal(
                      previous: [],
                      now: [],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: SizedBox(
              height: 50,
              child: BlocProvider<MapBloc>.value(
                value: GetIt.I<MapBloc>(),
                child: const Row(children: [
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
                ]),
              )),
        )
      ],
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
          BlocProvider.of<MapBloc>(context).add(event);
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ));
  }
}

class AnimatedMarkerLayer extends AnimatedWidget {
  const AnimatedMarkerLayer(
      {required this.markerLayer,
      required this.previousLayer,
      required super.listenable,
      super.key});

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
      final double tarLat =
          previousLayer![i].point.latitude * (1 - _progress.value) +
              markerLayer[i].point.latitude * _progress.value;
      markers.add(Marker(
          point: LatLng(tarLat, tarLon),
          height: markerLayer[i].height,
          width: markerLayer[i].width,
          child: markerLayer[i].child));
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
