
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:yandex_sirius/app/base_components/buttons/base_rounded_button.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/login/bloc/login_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/login/log_in_app_bar.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isFailure && state.errorMessage != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.errorMessage ?? l10n.authenticationFailure),
              ),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const LoginAppBar(),
              const SizedBox(height: 16),
              _EmailInput(),
              const SizedBox(height: 8),
              _PasswordInput(),
              const SizedBox(height: 8),
              _LoginButton(),
              const SizedBox(height: 8),
              _SignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_emailInput_textField'),
          onChanged: (email) => context
              .read<LoginBloc>()
              .add(LoginEvent.emailChanged(newEmail: email)),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: l10n.email,
              helperText: '',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.blueTooth),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.mario),
              ),
              labelStyle: context.textStyles.smallM
                  .copyWith(color: context.colors.borderColor)),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) => context
              .read<LoginBloc>()
              .add(LoginEvent.passwordChanged(newPassword: password)),
          obscureText: true,
          decoration: InputDecoration(
              labelText: l10n.password,
              helperText: '',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.borderColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.blueTooth),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.mario),
              ),
              labelStyle: context.textStyles.smallM
                  .copyWith(color: context.colors.borderColor)),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.success) {
          context.go('/map');
        }
      },
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : BaseRoundedButton(
                primaryText: l10n.login,
                action: () => state.isValid
                    ? context
                        .read<LoginBloc>()
                        .add(LoginEvent.logInWithCredentials())
                    : null);
        // ElevatedButton(
        //     key: const Key('loginForm_continue_raisedButton'),
        //     style: ElevatedButton.styleFrom(
        //       shape: RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(30),
        //       ),
        //       backgroundColor: const Color(0xFFFFD600),
        //     ),
        //     onPressed: state.isValid
        //         ? () => context
        //             .read<LoginBloc>()
        //             .add(LoginEvent.logInWithCredentials())
        //         : null,
        //     child: Text(l10n.login),
        //   );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = Localization.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_button'),
      onPressed: () {
        context.go('/login/sign_up');
      },
      child: Text(
        l10n.createAccount,
        style: context.textStyles.bodyM.copyWith(color: context.colors.black),
      ),
    );
  }
}
