import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(const _Initial()) {
    on<MapEvent>((event, emit) async {
      await event.map(
        started: (event) async => await start(event, emit),
        startFriendsPoling: (event) async =>
            await startFriendsPoling(event, emit),
        startSelfPoling: (event) async => await startSelfPoling(event, emit),
      );
    });
  }

  start(event, Emitter<MapState> emit) {}
  startFriendsPoling(event, Emitter<MapState> emit) {}
  startSelfPoling(event, Emitter<MapState> emit) {}
}
