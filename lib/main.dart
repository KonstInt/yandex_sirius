
import 'package:flutter/material.dart';
import 'package:yandex_sirius/app/app.dart';
import 'package:yandex_sirius/app/util/di/injection.dart';

void main() async {
  await setUpDI(DIOptions.dev);
  runApp(const App());
}
