import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details_place.dart';
import 'package:flutter_application_1/widgets/app_bar.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/grid_cards.dart';

import '../models/place.dart';

class ScreenLarge extends StatelessWidget {
  const ScreenLarge({Key? key, required this.place, this.placeChanged}) : super(key: key);

  final Place place;
  final placeChanged ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:myAppBar(),
      body: Row(
  
        children: [
          Expanded(
            child: DrawerBody(),
            flex: 1,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(children: [
                Expanded(
                    flex: 1,
                    child: GridCards(isHorizontal: true, selectedPlace: placeChanged,)
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
