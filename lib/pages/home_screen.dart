import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/places.dart';
import 'package:flutter_application_1/pages/screen_medium.dart';
import 'package:flutter_application_1/pages/screen_large.dart';
import 'package:flutter_application_1/pages/screen_small.dart';
import 'package:flutter_application_1/responsive_utils.dart';
import 'package:flutter_application_1/widgets/grid.item.dart';

import '../models/place.dart';

class HomeScreen extends StatefulWidget {



  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Place selectedPlace= Places().getPlaces()[0]; 


  placeChanged(Place place){
    setState(() {
      selectedPlace = place;
    });
  }




  @override
  Widget build(BuildContext context) {
    Widget widget;

    ScreenSize screenSize = getWidthScreen(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).orientation);
    print(screenSize.runtimeType);
    switch (screenSize) {
      case ScreenSize.small:
        // Mostrar la vista Mobile
        widget = ScreenSmall();
        break;
      case ScreenSize.medium:
        // Mostrar la vista de Tablet
        widget = ScreenMedium();
        break;
      case ScreenSize.large:
        // Mostrar la vista de Laptop
        widget = ScreenLarge(place: selectedPlace, placeChanged: placeChanged,);
        break;
    }
    return widget;
  }
}
