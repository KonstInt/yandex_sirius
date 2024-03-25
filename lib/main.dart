import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:yandex_sirius/app/app.dart';
import 'package:yandex_sirius/app/util/di/injection.dart';

void main() async {
  await setUpDI(DIOptions.dev);
  runApp(const App());
}
