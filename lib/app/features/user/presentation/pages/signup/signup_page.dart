import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/bloc/signup_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/signup_form1.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/signup_form2.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    //di
    return Scaffold(
      appBar: AppBar(title: Text(l10n.signUp)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider<SignUpBloc>.value(
          value: GetIt.I<SignUpBloc>(),
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) => state.map(
        firstPage: (state) => const SignUpForm1(),
        secondPage: (state) => const SignUpForm2(),
      ),
    );
  }
}
