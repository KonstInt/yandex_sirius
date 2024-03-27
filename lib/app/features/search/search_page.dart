import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yandex_sirius/app/features/login/bloc/login_bloc.dart';
import 'package:yandex_sirius/app/features/search/search_from.dart';

import '../../../generated/l10n.dart';
import '../user/data/remote/firebase/service/firebase_user_service.dart';
import 'bloc/search_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    //di
    final search = SearchBloc(FirebaseUserService());
    return Scaffold(
      appBar: AppBar(title: Text(l10n.friends)),
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
