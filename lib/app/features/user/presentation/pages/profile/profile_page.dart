import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/profile/bloc/profile_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/profile/profile_form.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/search_from.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    //di
    //FirebaseUserService(), UserUseCase()

    final profile = ProfileBloc(FirebaseUserService(), UserUseCase());
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider.value(
          value: profile,
          child: const ProfileForm(),
        ),
      ),
    );
  }
}
