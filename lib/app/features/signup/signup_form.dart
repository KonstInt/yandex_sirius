import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';

import '../../../l10n/app_localizations_ru.dart';
import 'cubit/signup_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizationsRu();
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.of(context).pop();
        } else if (state.status.isFailure) {
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
              _ImagePicker(),
              const SizedBox(height: 8),
              _NickName(),
              const SizedBox(height: 8),
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

class _NickName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizationsRu();
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.alias != current.alias,
      builder: (context, state) {
        return TextField(
          key: const Key('nick_input'),
          onChanged: (email) =>
              context.read<SignupCubit>().nicknameChanged(email),
          decoration: InputDecoration(
            labelText: l10n.alias,
            helperText: '',
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizationsRu();
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_emailInput_textField'),
          onChanged: (email) => context.read<SignupCubit>().emailChanged(email),
          decoration: InputDecoration(
            labelText: l10n.email,
            helperText: '',
            errorText: state.errorMessage != null ? l10n.invalidEmail : null,
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
    final l10n = AppLocalizationsRu();
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<SignupCubit>().passwordChanged(password),
          obscureText: true,
          decoration: InputDecoration(
            labelText: l10n.password,
            helperText: '',
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
    final l10n = AppLocalizationsRu();
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextField(
          key: const Key('signUpForm_confirmedPasswordInput_textField'),
          onChanged: (confirmedPassword) => context
              .read<SignupCubit>()
              .confirmedPasswordChanged(confirmedPassword),
          obscureText: true,
          decoration: InputDecoration(
            labelText: l10n.confirmPassword,
            helperText: '',
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
    final l10n = AppLocalizationsRu();
    return BlocBuilder<SignupCubit, SignupState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('signUpForm_continue_elevatedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: state.isValid
                    ? () => context.read<SignupCubit>().signUpFormSubmitted()
                    : null,
                child: Text(l10n.signUp),
              );
      },
    );
  }
}

class _ImagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignupCubit, SignupState>(
      buildWhen: (previous, current) => previous.photo != current.photo,
      builder: (context, state) {
        return Center(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.bottomCenter,
                key: const Key("image_picker"),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: Colors.black45,
                  ),
                  image: (state.photo == '')
                      ? null
                      : DecorationImage(
                          image: MemoryImage(base64Decode(state.photo)),
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140, left: 70),
                child: IconButton(
                  onPressed: () {
                    context.read<SignupCubit>().photoChanged();
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                    size: 45,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
