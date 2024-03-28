import 'package:flutter/material.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: context.textStyles.headlineB,
            ),
          ],
        ));
  }
}
