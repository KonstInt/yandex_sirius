import 'dart:ui';

import 'package:geolocator/geolocator.dart';
import 'package:workmanager/workmanager.dart';

abstract class GeoService {
  @pragma('vm:entry-point')
  static void callbackDispatcher() {
    Workmanager().executeTask((task, inputData) async {
      try {
        DartPluginRegistrant.ensureInitialized();
        await Geolocator.getCurrentPosition(
          timeLimit: const Duration(seconds: 20),
        );
      } catch (e) {}
      return Future.value(true);
    });
  }

  static Future<void> start() async {
    if (await Geolocator.checkPermission() != LocationPermission.always) {
      await Geolocator.requestPermission();
    }
    if (await Geolocator.checkPermission() != LocationPermission.always) {
      await Geolocator.requestPermission();
    }

    final wm = Workmanager();

    await wm.cancelAll();
    await wm.initialize(
      callbackDispatcher,
      isInDebugMode: true,
    );
    await wm.registerPeriodicTask(
      'task-identifier',
      'simplePeriodicTask',
      initialDelay: const Duration(seconds: 10),
    );
  }
}
