import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/bloc/search_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/search_from.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);
    //di
    return Scaffold(
      appBar: AppBar(title: const Text('Friends')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocProvider.value(
          value: GetIt.I<SearchBloc>(),
          child: const SearchForm(),
        ),
      ),
    );
  }
}
