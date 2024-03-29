import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/bloc/search_bloc.dart';
import 'package:yandex_sirius/app/features/user/presentation/pages/search/search_field.dart';
import 'package:yandex_sirius/generated/l10n.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);

    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(
                content: Text('Friends'),
              ),
            );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ScreenUtilInit(
            child: SearchField(
              hintText: 'Search',
              onChanged: (value) {
                context.read<SearchBloc>().add(CreateUserList(value));
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const _UserList(),
        ],
      ),
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.status.isInProgress
            ? const Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.builder(
                  itemCount: state.peoples.length,
                  itemBuilder: (context, index) {
                    final person = state.peoples[index];
                    return Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            backgroundImage: (person.photoUrl == null ||
                                    person.photoUrl.isEmpty)
                                ? null
                                : NetworkImage(person.photoUrl),
                          ),
                          Text(person.name),
                          IconButton(
                            icon: Icon(
                              (!state.status.isInitial)
                                  ? Icons.add
                                  : Icons.accessible,
                              size: 30,
                            ),
                            onPressed: () {
                              context
                                  .read<SearchBloc>()
                                  .add(AddFriend(person.id, person.photoUrl));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ]);
                  },
                ),
              );
      },
    );
  }
}

class _SearchLine extends StatelessWidget {
  const _SearchLine();

  @override
  Widget build(BuildContext context) {
    final l10n = Localization.of(context);

    return BlocBuilder<SearchBloc, SearchState>(
      buildWhen: (previous, next) =>
          previous.peoples.length != next.peoples.length,
      builder: (context, state) {
        return Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black45, width: 2),
          ),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  key: const Key('searchField'),
                  onChanged: (value) {
                    context.read<SearchBloc>().add(CreateUserList(value));
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
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
