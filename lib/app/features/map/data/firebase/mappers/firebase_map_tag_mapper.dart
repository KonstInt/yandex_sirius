import 'package:yandex_sirius/app/features/map/data/firebase/models/map_tag/firebase_api_map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

class FirebaseMapTagMapper {
  MapTagModel fromApi(FirebaseApiMapTagModel model) {
    return MapTagModel(
        photoUrl: model.photoUrl, id: model.id, coordinate: model.coordinate);
  }

  FirebaseApiMapTagModel toApi(MapTagModel model) {
    return FirebaseApiMapTagModel(
        photoUrl: model.photoUrl, id: model.id, coordinate: model.coordinate);
  }
}
