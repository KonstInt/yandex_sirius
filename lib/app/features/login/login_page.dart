import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_sirius/app/features/login/bloc/login_bloc.dart';

import '../../../generated/l10n.dart';
import '../user/data/remote/firebase/service/firebase_user_service.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    //di
    final signInBloc = LoginBloc(FirebaseUserService());
    return Scaffold(
      appBar: AppBar(title: Text(l10n.login)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider.value(
          value: signInBloc,
          child: const LoginForm(),
        ),
      ),
    );
  }
}
