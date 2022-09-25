import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details_place.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/grid_cards.dart';

import '../models/place.dart';

class ScreenLarge extends StatelessWidget {
  const ScreenLarge({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: DrawerBody(),
            flex: 1,
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              child: Column(children: [
                Expanded(
                    flex: 1,
                    child: GridCards(isHorizontal: true,)
                  ),
                Expanded(
                    flex: 2,
                    child: DetailsPlace(place: place)
                )
              ]),
            ),
            flex: 4,
          )
        ],
      ),
    );
  }
}
