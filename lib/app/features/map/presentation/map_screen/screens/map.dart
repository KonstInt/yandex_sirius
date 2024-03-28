import 'package:flutter/material.dart';

import 'package:yandex_sirius/app/features/map/presentation/map_screen/screens/bottom_search_page/search_button.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Center(
            child: Expanded(child: SearchButton()),
          ),
        ],
      ),
    );
  }
}
