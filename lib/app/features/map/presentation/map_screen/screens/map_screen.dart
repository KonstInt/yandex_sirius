import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import 'package:rive/rive.dart';
import 'package:yandex_sirius/app/base_components/bottom_sheets/bar_bottom_sheet.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/map_bloc/bloc/map_bloc.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/screens/bottom_search_page/search_button.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/profile/profile_page.dart';

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
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
              height: 50,
              child: Center(
                  child: BlocProvider<MapBloc>.value(
                value: GetIt.I<MapBloc>(),
                child: Row(children: [
                  Expanded(child: SizedBox()),
                  ButtonWithBlockIcon(
                    event: FriendsMapEvent.goHome(),
                    icon: CircleAvatar(
                        backgroundImage: Image.network(
                          'https://static-00.iconduck.com/assets.00/target-icon-2048x2048-lthjz0e2.png',
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ).image,
                        backgroundColor: Colors.white,
                        radius: 20),
                  ),
                  SearchButton(),
                  ButtonWithBlockIcon(
                    event: FriendsMapEvent.nextFriend(),
                    icon: CircleAvatar(
                        backgroundImage: Image.network(
                          'https://img.lovepik.com/free-png/20210926/lovepik-arrow-icon-png-image_401446207_wh1200.png',
                          fit: BoxFit.fill,
                          color: Colors.white,
                        ).image,
                        backgroundColor: Colors.white,
                        radius: 20),
                  ),

                  Expanded(child: SizedBox()),
                ]),
              ))),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
              height: 100,
              width: 50,
              child: BlocProvider<MapBloc>.value(
                value: GetIt.I<MapBloc>(),
                child: const Column(children: [
                  ButtonWithBlock(
                      event: FriendsMapEvent.changeZoom(1), text: '+'),
                  ButtonWithBlock(
                      event: FriendsMapEvent.changeZoom(-1), text: '-')
                ]),
              )),
        ),
        DataWidget()
      ],
    );
  }
}

class DataWidget extends StatefulWidget {
  DataWidget({super.key});

  bool isshow = false;

  @override
  State<StatefulWidget> createState() {
    return DataWidgetState();
  }
}

class DataWidgetState extends State<DataWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.isshow) {
      return Align(
        alignment: Alignment.center,
          child: SizedBox(
              width: 300,
              height: 150,
              child: GestureDetector(
                onTap: () {
                  widget.isshow = !widget.isshow;
                  setState(() {});
                },
                child: Container(
                  // color: Colors.black,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0)),
                      color: Colors.white),
                  child: Expanded(
                      child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(6),
                          child: CircleAvatar(
                            backgroundImage: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4j8yrVBdePKb7vbv7CKvpTUGxHqEeFobmQ0W6Y0wUMg&s',
                              fit: BoxFit.fill,
                            ).image,
                            radius: 50,
                          )),
                      const Padding(
                          padding: EdgeInsets.all(25),
                          child: Expanded(
                            child: Column(
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Text(
                                      'hehe@mail.ru',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                                Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Text(
                                      '@hehe123',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 17),
                                    )),
                              ],
                            ),
                          ))
                    ],
                  )),
                ),
              )));
    }
    return Center(
        child: SizedBox(
            width: 300,
            height: 150,
            child: GestureDetector(
              onTap: () {
                widget.isshow = !widget.isshow;
                setState(() {});
              },
            )));
  }
}

class ButtonWithBlock extends StatelessWidget {
  const ButtonWithBlock({required this.event, required this.text, super.key});

  final FriendsMapEvent event;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: const EdgeInsets.all(4),
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.white)),
                onPressed: () {
                  BlocProvider.of<MapBloc>(context).add(event);
                },
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.black),
                ))));
  }
}

class ButtonWithBlockIcon extends StatelessWidget {
  const ButtonWithBlockIcon(
      {required this.event, required this.icon, super.key});

  final FriendsMapEvent event;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateColor.resolveWith((states) => Colors.white)),
          onPressed: () {
            BlocProvider.of<MapBloc>(context).add(event);
          },
          child: icon,
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
