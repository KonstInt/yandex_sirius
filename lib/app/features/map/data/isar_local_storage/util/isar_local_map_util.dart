// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/mappers/isar_local_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/mappers/isar_local_map_tag_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/service/isar_local_map_service.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

class IsarLocalMapUtil {
  IsarLocalCoordinateMapper mapperCoordinateMapper;
  IsarLocalMapTagMapper mapperTagMapper;
  IsarLocalMapService service;
  IsarLocalMapUtil({
    required this.mapperCoordinateMapper,
    required this.mapperTagMapper,
    required this.service,
  });
  Future<List<MapTagModel>> getMapTags() async {
    return (await service.getMapTags())
        .map((e) => mapperTagMapper.fromApi(e))
        .toList();
  }

  Future<CoordinateModel> getUserCoordinate() async {
    return mapperCoordinateMapper.fromApi(await service.getUserCoordinate());
  }

  Future<List<MapTagModel>> setMapTags(List<MapTagModel> mapTags) async {
    return (await service.setMapTags(
      mapTags.map((e) => mapperTagMapper.toApi(e)).toList(),
    ))
        .map((e) => mapperTagMapper.fromApi(e))
        .toList();
  }

  Future<CoordinateModel> setUserCoordinate(CoordinateModel coordinates) async {
    return mapperCoordinateMapper.fromApi(
      await service.setUserCoordinate(
        mapperCoordinateMapper.toApi(coordinates),
      ),
    );
  }
}
