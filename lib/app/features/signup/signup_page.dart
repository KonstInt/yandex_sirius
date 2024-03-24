import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/signup/signup_form1.dart';
import 'package:yandex_sirius/app/features/signup/signup_form2.dart';

import '../../../generated/l10n.dart';
import '../user/data/remote/firebase/service/firebase_user_service.dart';
import 'cubit/signup_cubit.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    //di
    final signupCubit = SignupCubit(FirebaseUserService());
    return Scaffold(
      appBar: AppBar(title: Text(l10n.signUp)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider<SignupCubit>.value(
          value: signupCubit,
          child: const PageWrapper(),
        ),
      ),
    );
  }
}

class PageWrapper extends StatelessWidget {
  const PageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) => state.map(
        firstPage: (state) => const SignUpForm1(),
        secondPage: (state) => const SignUpForm2(),
      ),
    );
  }
}
