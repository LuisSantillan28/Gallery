import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/place.dart';
import 'package:flutter_application_1/pages/details_place.dart';

class GridItem extends StatelessWidget {
  final Place place;
  const GridItem({Key? key , required this.place }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15.0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10) ),  
      child: InkWell(
        onTap: () => {Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsPlace(place: place))))} ,
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
      )
      );
  }
}