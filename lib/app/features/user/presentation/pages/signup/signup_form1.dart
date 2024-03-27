import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/bloc/signup_bloc.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class SignUpForm1 extends StatelessWidget {
  const SignUpForm1({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('success')),
            );
        } else if (state.status.isFailure && state.errorMessage != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? l10n.signUpFailure)),
            );
        }
      },
      child: Align(
        alignment: const Alignment(0, -1 / 3),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _EmailInput(),
              const SizedBox(height: 8),
              _PasswordInput(),
              const SizedBox(height: 8),
              _ConfirmedPasswordInput(),
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.emailChanged(email: email)),
          decoration: InputDecoration(
            labelText: l10n.email,
            helperText: '',
            errorText: (state.errorMessage != null)
                ? (state.errorMessage!.contains('email') ||
                        state.errorMessage!.contains('email.'))
                    ? state.errorMessage
                    : null
                : null,
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (newPassword) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.passwordChanged(password: newPassword)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: l10n.password,
            helperText: '',
            errorText: (state.errorMessage != null)
                ? (state.errorMessage!.contains('password') ||
                        state.errorMessage!.contains('password.'))
                    ? state.errorMessage
                    : null
                : null,
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _ConfirmedPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (confirmedPassword) => context.read<SignUpBloc>().add(
              SignUpEvent.confirmedPasswordChanged(
                  confirmedPassword: confirmedPassword)),
          obscureText: true,
          decoration: InputDecoration(
            labelText: l10n.confirmPassword,
            helperText: '',
            errorText: (state.errorMessage != null)
                ? (state.errorMessage!.contains('password') ||
                        state.errorMessage!.contains('password.'))
                    ? state.errorMessage
                    : null
                : null,
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('next_elevatedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: () {
                  if (state.isValid) {
                    FocusScope.of(context).unfocus();
                    context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.authenticationSubmitted());
                  }
                },
                child: Text(l10n.next),
              );
      },
    );
  }
}
