import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/place.dart';
import 'package:flutter_application_1/pages/details_place.dart';

import '../responsive_utils.dart';

class GridItem extends StatelessWidget {
  final Place place;
  final selectedPlace;

  const GridItem({Key? key , required this.place, this.selectedPlace }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10) ),  
      child: InkWell(
        child: GridTile(
          child: Ink.image(
            image: AssetImage(place.image),
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text(place.title),
            // leading: Icon(Icons.place),
            trailing: const Icon(Icons.favorite_border),
          ),
        ),
        onTap: () {
          

        switch (getWidthScreen(MediaQuery.of(context).size.width)) {
          case ScreenSize.small:
          case ScreenSize.medium:
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPlace(place:place)));
            break;
          case ScreenSize.large:
            selectedPlace(place);
            break;
        }

        }
      )
    );
  }
}