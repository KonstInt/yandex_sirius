import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:yandex_sirius/app/base_components/bottom_sheets/bar_bottom_sheet.dart';

import 'package:yandex_sirius/app/features/user/presentation/pages/search/search_page.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showBarModalBottomSheet(
          context: context,
          builder: (BuildContext context) => SearchPage(),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
      ),
      child: const Icon(Icons.add),
    );
  }
}
