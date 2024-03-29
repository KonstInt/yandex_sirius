import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/login/bloc/login_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //di

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider.value(
          value: GetIt.I<LoginBloc>(),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
