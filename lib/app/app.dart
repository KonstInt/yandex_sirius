import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import 'features/login/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const LoginPage(),
    );
  }
}
