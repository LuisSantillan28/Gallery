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
        // Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children:[
        //             Icon(Icons.call),
        //             Text('Call'),
        //             Icon(Icons.chat_rounded),
        //             Text('Chats'),
        //             Icon(Icons.contact_mail_rounded),
        //             Text('Contacto'),
        //           ],
        //     )
        //   ],
        // ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: DescPlace(place: place),
        )
        ]
      ),
    );
  }
}
