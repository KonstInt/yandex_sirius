import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/bloc/search_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/search_from.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    //di
    final search = SearchBloc(FirebaseUserService(), UserUseCase());
    return Scaffold(
      appBar: AppBar(title: const Text('Friends')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider.value(
          value: search,
          child: const SearchForm(),
        ),
      ),
    );
  }
}
