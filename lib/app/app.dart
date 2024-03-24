import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_sirius/app/features/signup/signup_page.dart';
import 'package:yandex_sirius/app/util/themes/app_theme.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';

import '../generated/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const SignUpPage(),
    );
  }
}
