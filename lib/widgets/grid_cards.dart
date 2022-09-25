import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/grid.item.dart';

import '../data/places.dart';
class GridCards extends StatelessWidget {

  const GridCards({Key? key, this.isHorizontal = false, this.selectedPlace}) : super(key: key);

  final isHorizontal;
  final selectedPlace;

  @override
  Widget build(BuildContext context) {


    int columCount;
    Axis axisDirection;

if(isHorizontal){
  columCount = 1;
  axisDirection =Axis.horizontal; 
}else{
  columCount = 2;
  axisDirection = Axis.vertical;
}



    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 10),
    crossAxisCount: columCount,
    childAspectRatio: 1 / 1.2,
    mainAxisSpacing: 20,
    scrollDirection: axisDirection,
    crossAxisSpacing: 20,
    children: renderItems(),
     );
  }

   List<Widget> renderItems(){
    return Places().getPlaces().map((place) => GridItem(place: place, selectedPlace: selectedPlace,)).toList();
  }
}