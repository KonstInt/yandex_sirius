import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

//TODO:check it
// ignore: one_member_abstracts
abstract class UserCoordinatesRepository {
  Future<CoordinateModel> getCoordinates();
}
