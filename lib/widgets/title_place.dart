
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/place.dart';

class TitlePlace extends StatelessWidget {
  const TitlePlace({Key? key, required this.place}) : super(key: key);

final Place place;
  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                     child: Text(
                       place.title,
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 40),
                       ),
                    ), 
                    Container(
                     child: Text(place.subtitle),
                    ) 
                  ],
                ),
              ),
              Icon(Icons.favorite, color: Colors.red,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('123'),
              )
            ]),
        );
  }
}