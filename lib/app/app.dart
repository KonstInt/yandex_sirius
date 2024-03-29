import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/util/router/router.dart';
import 'package:yandex_sirius/app/util/themes/app_theme.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: _listenAcivUse(
            ch: MaterialApp.router(
              title: 'Flutter Sirius',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              localizationsDelegates: const [
                Localization.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''),
              ],
              routerConfig: GetIt.I<RoutingService>().router,
            ),
            context: context,
          ),
        );
      },
    );
  }

  Widget _listenAcivUse({required Widget ch, required BuildContext context}) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onPanDown: (_) {
        // TimerResetBooking.withTimer.generalTimerReset(context);
      },
      child: ch,
    );
  }
}
