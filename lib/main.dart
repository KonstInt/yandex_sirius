import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/app.dart';
import 'package:yandex_sirius/app/util/di/injection.dart';
import 'package:yandex_sirius/app/util/router/router.dart';

void main() async {
  await setUpDI(DIOptions.dev);
  FirebaseAuth.instance.authStateChanges().listen((user) {
    GetIt.I<RoutingService>().router.refresh();
  });
  //FirebaseAuth.instance.signOut();
  runApp(const App());
}
