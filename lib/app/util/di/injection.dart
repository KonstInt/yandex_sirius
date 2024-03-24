import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/map/data/remote/firebase/mappers/firebase_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/remote/firebase/mappers/firebase_map_tag_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/remote/firebase/repository/firebase_remote_repository.dart';
import 'package:yandex_sirius/app/features/map/data/remote/firebase/service/firebase_map_service.dart';
import 'package:yandex_sirius/app/features/map/data/remote/firebase/util/firebase_map_util.dart';
import 'package:yandex_sirius/app/features/map/domain/manager/map_manager.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/remote/remote_map_repository.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/mappers/isar_friend_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/mappers/isar_user_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/repository/isar_user_repository.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/util/isar_user_util.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/mappers/firebase_friend_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/mappers/firebase_user_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/repository/firebase_user_repository.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/util/firebase_user_util.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/local_user_repository.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/remote_user_repository.dart';
import 'package:yandex_sirius/app/util/logger/logger.dart';

Future<void> setUpDI(DIOptions options) async {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  //TODO:
 /* getIt.registerLazySingleton<MyRouterDelegate>(() => MyRouterDelegate());
  getIt.registerLazySingleton<CustomRouteInformationParser>(
      () => CustomRouteInformationParser());
*/
  switch (options) {
    ///DEV OPTIONS
    case DIOptions.dev:
      await _setUpDev(getIt);
      break;

    ///PROD OPTIONS
    case DIOptions.prod:
      await _setUpProd(getIt);
      break;

    ///TEST OPTIONS
    case DIOptions.test:
      await _setUpTest(getIt);
      break;
  }
}

enum DIOptions { test, prod, dev }

Future<void> initFirebase() async {
  //TODO:
  logger.d('Firebase initialization started');
  /*await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  logger.d('Firebase initialized');
}

///SETUP DEV
Future<void> _setUpDev(GetIt getIt) async {
  await initFirebase();
  /*
  getIt.registerLazySingleton<FAnalytic>(() => FAnalyticProd());
  getIt.registerLazySingleton<FRemoteConfigs>(() => FRemoteConfigsProd());
  getIt.registerLazySingleton<FirebaseAppConfig>(
    () => FirebaseAppConfigProd(
      GetIt.I<FAnalytic>(),
      GetIt.I<FRemoteConfigs>(),
    ),
  );
  await GetIt.I<FirebaseAppConfig>().initRemoteConfigDev();
  GetIt.I<FirebaseAppConfig>().initCrashlytics();*/

  getIt
    //Register userUseCase
    ..registerSingleton(UserUseCase())
    //Register firebase map repository
    ..registerSingleton<FirebaseMapService>(FirebaseMapService())
    ..registerSingleton<FirebaseCoordinateMapper>(FirebaseCoordinateMapper())
    ..registerSingleton<FirebaseMapTagMapper>(FirebaseMapTagMapper())
    ..registerSingleton<FirebaseMapUtil>(FirebaseMapUtil(
        mapMapper: GetIt.I<FirebaseMapTagMapper>(),
        service: GetIt.I<FirebaseMapService>(),
        coordinateMapper: GetIt.I<FirebaseCoordinateMapper>()))
    ..registerSingleton<RemoteMapRepository>(
        FirebaseRemoteMapRepository(util: GetIt.I<FirebaseMapUtil>()))
    //Register map manager
    ..registerSingleton<MapManager>(MapManager(
        remoteMapRepository: GetIt.I<RemoteMapRepository>(),
        userUseCase: GetIt.I<UserUseCase>()))
    //Register remote user repository 
    ..registerSingleton<FirebaseUserService>(FirebaseUserService())
    ..registerSingleton<FirebaseFriendMapper>(FirebaseFriendMapper())
    ..registerSingleton<FirebaseUserMapper>(FirebaseUserMapper())
    ..registerSingleton<FirebaseUserUtil>(FirebaseUserUtil(
        mapper: GetIt.I<FirebaseUserMapper>(),
        service: GetIt.I<FirebaseUserService>()))
    ..registerSingleton<RemoteUserRepository>(FirebaseUserRepository(userUseCase: GetIt.I<UserUseCase>(), util: GetIt.I<FirebaseUserUtil>()))
    //Register local user repository
   ..registerSingleton<IsarUserService>(IsarUserService())
    ..registerSingleton<IsarFriendMapper>(IsarFriendMapper())
    ..registerSingleton<IsarUserMapper>(IsarUserMapper())
    ..registerSingleton<IsarUserUtil>(IsarUserUtil(
        mapper: GetIt.I<IsarUserMapper>(),
        service: GetIt.I<IsarUserService>()))
    ..registerSingleton<LocalUserRepository>(IsarUserRepository(userUseCase: GetIt.I<UserUseCase>(), util: GetIt.I<IsarUserUtil>()));
    
}

///SETUP PROD
Future<void> _setUpProd(GetIt getIt) async {
 /* await initFirebase();
  getIt.registerLazySingleton<FAnalytic>(() => FAnalyticProd());
  getIt.registerLazySingleton<FRemoteConfigs>(() => FRemoteConfigsProd());
  getIt.registerLazySingleton<FirebaseAppConfig>(
    () => FirebaseAppConfigProd(
      GetIt.I<FAnalytic>(),
      GetIt.I<FRemoteConfigs>(),
    ),
  );
  await GetIt.I<FirebaseAppConfig>().initRemoteConfigProd();
  GetIt.I<FirebaseAppConfig>().initCrashlytics();
  getIt.registerLazySingleton<AbstractTodoTasksRepository>(
    () => TodoDataRemoteRepository(
      RemoteApiUtil(
        RemoteToDoService(),
      ),
    ),
    instanceName: "RemoteRepository",
  );
  getIt.registerLazySingleton<AbstractTodoTasksRepository>(
    () => TodoDataLocalRepository(
      LocalApiUtil(
        LocalToDoService(),
      ),
    ),
    instanceName: "LocalRepository",
  );

  getIt.registerLazySingleton<AbstractSharedPrefsRepository>(
    () => SharedPrefsDataRepository(
      SharedPrefsApiUtil(
        SharedPrefsService(),
      ),
    ),
    instanceName: "SharedPrefsRepository",
  );*/
}

///SETUP TEST
Future<void> _setUpTest(GetIt getIt) async {
  /*getIt.registerLazySingleton<FAnalytic>(() => FAnalyticMock());
  getIt.registerLazySingleton<FRemoteConfigs>(() => FRemoteConfigsMock());
  getIt.registerLazySingleton<FirebaseAppConfig>(
    () => FirebaseAppConfigMock(
      GetIt.I<FAnalytic>(),
      GetIt.I<FRemoteConfigs>(),
    ),
  );
  getIt.registerSingleton<LocalToDoService>(MockLocalToDoService());
  getIt.registerSingleton<RemoteToDoService>(MockRemoteToDoService());
  getIt.registerSingleton<SharedPrefsService>(MockSharedPrefsService());
  getIt.registerLazySingleton<AbstractTodoTasksRepository>(
    () => TodoDataRemoteRepository(
      RemoteApiUtil(
        GetIt.I<RemoteToDoService>(),
      ),
    ),
    instanceName: "RemoteRepository",
  );
  getIt.registerLazySingleton<AbstractTodoTasksRepository>(
    () => TodoDataLocalRepository(
      LocalApiUtil(
        GetIt.I<LocalToDoService>(),
      ),
    ),
    instanceName: "LocalRepository",
  );

  getIt.registerLazySingleton<AbstractSharedPrefsRepository>(
    () => SharedPrefsDataRepository(
      SharedPrefsApiUtil(
        GetIt.I<SharedPrefsService>(),
      ),
    ),
    instanceName: "SharedPrefsRepository",
  );*/
}
