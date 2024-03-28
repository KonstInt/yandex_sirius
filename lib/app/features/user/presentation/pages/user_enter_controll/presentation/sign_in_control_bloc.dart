import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/user_enter_controll/bloc/sign_in_control_bloc.dart';

class SignInControlWidget extends StatelessWidget {
  const SignInControlWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: GetIt.I<SignInControlBloc>()
          ..add(const SignInControlEvent.control()),
        child: BlocConsumer<SignInControlBloc, SignInControlState>(
          listener: (context, state) {
            state.mapOrNull(
                loggedIn: (_) => context.go('/map'),
                loggedOut: (_) => context.go('/login'));
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              orElse: () => const Center(),
            );
          },
        ),
      ),
    );
  }
}
