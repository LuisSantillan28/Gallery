import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/grid.item.dart';

import '../data/places.dart';

class GridCards extends StatelessWidget {
  const GridCards({Key? key, this.isHorizontal = false}) : super(key: key);

  final isHorizontal;
  @override
  Widget build(BuildContext context) {

    int columnCount;
    Axis axisDirection;

    if(isHorizontal){
      columnCount = 1;
      axisDirection = Axis.horizontal;
    }else{
      columnCount = 2;
      axisDirection = Axis.vertical;
    }

    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 10),
      crossAxisCount: columnCount,
      childAspectRatio: 1 / 1.2,
      mainAxisSpacing: 20,
      scrollDirection: axisDirection,
      crossAxisSpacing: 20,
      children: renderItems(),
    );
  }

  List<Widget> renderItems() {
    return Places().getPlaces().map((place) => GridItem(place: place)).toList();
  }
}
