import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_sirius/app/util/themes/app_theme.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          title: 'Flutter Sirius',
          theme: AppTheme.lightTheme,
          home: Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Text(
                    'Hello world!',
                    style: context.textStyles.descriptionB,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
