import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/buttons_place.dart';
import 'package:flutter_application_1/widgets/title_place.dart';
import 'package:flutter_application_1/widgets/desc_place.dart';
import '../models/place.dart';

class DetailsPlace extends StatelessWidget {
  const DetailsPlace({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: ((context, constraints) {
      if(constraints.maxWidth >= 600) {
        // Tablet ou O rdinateur
        return descriptionLarge();
      }else{
        // Portable
        return descriptionSmall();
      }
    }));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(place.title),
        centerTitle: true,
      ),
      body: ListView(children: [
        Image.asset(
          place.image,
          height: 300,
          fit: BoxFit.cover,
         ),
        TitlePlace(place: place),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonsPlace(icon: Icons.call, label: 'CALL',),
            ButtonsPlace(icon: Icons.chat_rounded, label: 'CHAT',),
            ButtonsPlace(icon: Icons.share, label: 'SHARE',),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: DescPlace(place: place),
        )
        ]
      ),
    );
  }

  // Details pour le grand Widget
  Widget descriptionSmall(){
    return Text('Small');
  }

  Widget descriptionLarge(){
    return SingleChildScrollView(
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 6,
        margin: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
              place.image,
              fit: BoxFit.cover,
              ), 
            ),
            Expanded(
              child: Column(
                children: [
                  TitlePlace(place: place),
                  Row(children: [
                  ButtonsPlace(icon: Icons.call, label: 'CALL',),
                  ButtonsPlace(icon: Icons.chat_rounded, label: 'CHAT',),
                  ButtonsPlace(icon: Icons.share, label: 'SHARE',), 
                  ],),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DescPlace(place: place),
                  ),
                 
                ],


              ), 
            )
          ],
        ),
      
      ),
    );
  }

}
