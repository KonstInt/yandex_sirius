import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/login/login_page.dart';
import 'package:yandex_sirius/app/util/themes/app_theme.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Sirius',
          theme: AppTheme.lightTheme,
          localizationsDelegates: const [
            Localization.delegate,
          ],
          supportedLocales: Localization.delegate.supportedLocales,
          home: const LoginPage(),
        );
      },
    );
  }
}
