import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/mappers/firebase_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/mappers/firebase_map_tag_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/repository/firebase_remote_repository.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/service/firebase_map_service.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/util/firebase_map_util.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/mappers/isar_local_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/mappers/isar_local_map_tag_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/repository/isar_local_map_storage_repository.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/service/isar_local_map_service.dart';
import 'package:yandex_sirius/app/features/map/data/isar_local_storage/util/isar_local_map_util.dart';
import 'package:yandex_sirius/app/features/map/data/local_coordinates/mappers/local_coordinates_api_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/local_coordinates/repository/local_coordinates_repository.dart';
import 'package:yandex_sirius/app/features/map/data/local_coordinates/service/local_coordinates_service.dart';
import 'package:yandex_sirius/app/features/map/data/local_coordinates/util/local_coordinates_util.dart';
import 'package:yandex_sirius/app/features/map/domain/manager/map_manager.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/coordinates/coordinates_repository.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/local_storage/local_storage_repository.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/remote/remote_map_repository.dart';
import 'package:yandex_sirius/app/features/map/presentation/map_screen/map_bloc/bloc/map_bloc.dart';
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
import 'package:yandex_sirius/app/features/user/presentation/pages/login/bloc/login_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/bloc/signup_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/user_enter_controll/bloc/sign_in_control_bloc.dart';
import 'package:yandex_sirius/app/util/logger/logger.dart';
import 'package:yandex_sirius/app/util/router/router.dart';
import 'package:yandex_sirius/firebase_options.dart';

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
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
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
    //Register the user coordinates repository
    ..registerSingleton<LocalCoordinatesService>(LocalCoordinatesService())
    ..registerSingleton<LocalCoordinatesApiCoordinateMapper>(
        LocalCoordinatesApiCoordinateMapper())
    ..registerSingleton<LocalCoordinatesUtil>(LocalCoordinatesUtil(
        service: GetIt.I<LocalCoordinatesService>(),
        mapper: GetIt.I<LocalCoordinatesApiCoordinateMapper>()))
    ..registerSingleton<UserCoordinatesRepository>(
        LocalCoordinatesRepository(util: GetIt.I<LocalCoordinatesUtil>()))
    //Register isar local map package
    ..registerSingleton<IsarLocalMapService>(IsarLocalMapService())
    ..registerSingleton<IsarLocalCoordinateMapper>(IsarLocalCoordinateMapper())
    ..registerSingleton<IsarLocalMapTagMapper>(IsarLocalMapTagMapper())
    ..registerSingleton<IsarLocalMapUtil>(IsarLocalMapUtil(
        service: GetIt.I<IsarLocalMapService>(),
        mapperCoordinateMapper: GetIt.I<IsarLocalCoordinateMapper>(),
        mapperTagMapper: GetIt.I<IsarLocalMapTagMapper>()))
    ..registerSingleton<LocalStorageRepository>(
        IsarLocalMapStorageRepository(util: GetIt.I<IsarLocalMapUtil>()))
    //Register map manager
    ..registerSingleton<MapManager>(MapManager(
      remoteMapRepository: GetIt.I<RemoteMapRepository>(),
      userUseCase: GetIt.I<UserUseCase>(),
      userCoordinatesRepository: GetIt.I<UserCoordinatesRepository>(),
    ))
    //Register remote user repository
    ..registerSingleton<FirebaseUserService>(FirebaseUserService())
    ..registerSingleton<FirebaseFriendMapper>(FirebaseFriendMapper())
    ..registerSingleton<FirebaseUserMapper>(
        FirebaseUserMapper(friendMapper: GetIt.I<FirebaseFriendMapper>()))
    ..registerSingleton<FirebaseUserUtil>(FirebaseUserUtil(
        mapper: GetIt.I<FirebaseUserMapper>(),
        service: GetIt.I<FirebaseUserService>()))
    ..registerSingleton<RemoteUserRepository>(FirebaseUserRepository(
        userUseCase: GetIt.I<UserUseCase>(), util: GetIt.I<FirebaseUserUtil>()))
    //Register local isar user repository
    ..registerSingleton<IsarUserService>(IsarUserService())
    ..registerSingleton<IsarFriendMapper>(IsarFriendMapper())
    ..registerSingleton<IsarUserMapper>(IsarUserMapper())
    ..registerSingleton<IsarUserUtil>(IsarUserUtil(
        mapper: GetIt.I<IsarUserMapper>(), service: GetIt.I<IsarUserService>()))
    ..registerSingleton<LocalUserRepository>(IsarUserRepository(
        userUseCase: GetIt.I<UserUseCase>(), util: GetIt.I<IsarUserUtil>()))
    //Map Bloc
    ..registerSingleton<MapBloc>(MapBloc(manager: GetIt.I<MapManager>()))
    //Register SignIn bloc
    ..registerSingleton<LoginBloc>(LoginBloc(GetIt.I<RemoteUserRepository>()))
    //Register SignUp bloc
    ..registerSingleton<SignUpBloc>(SignUpBloc(GetIt.I<RemoteUserRepository>()))
    //Register Router
    ..registerSingleton<RoutingService>(RoutingService())
    //Register SignInBloc
    ..registerSingleton<SignInControlBloc>(SignInControlBloc(
        GetIt.I<RemoteUserRepository>(), GetIt.I<UserUseCase>()));
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

  */
}
