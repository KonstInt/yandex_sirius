import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:yandex_sirius/app/features/search/bloc/search_bloc.dart';

import '../../../generated/l10n.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return BlocListener<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(l10n.userDoesNotExist),
              ),
            );
        }
      },
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _SearchLine(),
          SizedBox(height: 5),
          _UserList(),
        ],
      ),
    );
  }
}

class _SearchLine extends StatelessWidget {
  const _SearchLine({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);

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
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: l10n.search,
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

class _UserList extends StatelessWidget {
  const _UserList({super.key});

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
                    return Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            alignment: Alignment.bottomCenter,
                            key: const Key("image_picker"),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                color: Colors.black45,
                              ),
                              image: (person.photoUrl == '')
                                  ? null
                                  : DecorationImage(
                                      image: MemoryImage(
                                          base64Decode(person.photoUrl)),
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          Text(person.name),
                          FloatingActionButton(onPressed: () {}),
                        ],
                      ),
                    );
                  },
                ),
              );
      },
    );
  }
}
