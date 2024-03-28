import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/signup/bloc/signup_bloc.dart';
import 'package:yandex_sirius/app/util/themes/extensions/build_context_ext.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class SignUpForm2 extends StatelessWidget {
  const SignUpForm2({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Navigator.pop(context);
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
              _ImagePicker(),
              const SizedBox(height: 8),
              _NickName(),
              const SizedBox(height: 8),
              _Name(),
              const SizedBox(height: 8),
              _Surname(),
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
    final l10n = Localization.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.alias != current.alias,
      builder: (context, state) {
        return TextField(
          key: const Key('nick_input'),
          onChanged: (nickName) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.nicknameChanged(nickname: nickName)),
          decoration: InputDecoration(
            labelText: l10n.alias,
            helperText: '',
            errorText: (state.errorMessage != null) ? state.errorMessage : null,
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
                .copyWith(color: context.colors.borderColor),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.alias != current.alias,
      builder: (context, state) {
        return TextField(
          key: const Key('name'),
          onChanged: (name) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.nameChanged(name: name)),
          decoration: InputDecoration(
            labelText: l10n.name,
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
                .copyWith(color: context.colors.borderColor),
          ),
          textInputAction: TextInputAction.next,
        );
      },
    );
  }
}

class _Surname extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.alias != current.alias,
      builder: (context, state) {
        return TextField(
          key: const Key('_Surname'),
          onChanged: (surname) => context
              .read<SignUpBloc>()
              .add(SignUpEvent.surnameChanged(surname: surname)),
          decoration: InputDecoration(
            labelText: l10n.surname,
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
                .copyWith(color: context.colors.borderColor),
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
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        state.mapOrNull(
          secondPage: (value) {
            if (value.status == FormzSubmissionStatus.success) {
              context.go('/map');
            }
          },
        );
      },
      builder: (context, state) {
        return state.status.isInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('sign_up_button'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orangeAccent,
                ),
                onPressed: state.isValid
                    ? () => context
                        .read<SignUpBloc>()
                        .add(SignUpEvent.signUpFormSubmitted())
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
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.photo != current.photo,
      builder: (context, state) {
        return Center(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                alignment: Alignment.bottomCenter,
                key: const Key('image_picker'),
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
                    context.read<SignUpBloc>().add(SignUpEvent.photoChanged());
                    FocusScope.of(context).unfocus();
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
