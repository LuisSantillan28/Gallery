
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/place.dart';


class DescPlace extends StatelessWidget {
  const DescPlace({Key? key, required this.place}) : super(key: key);

  final Place place;
  @override
  Widget build(BuildContext context) {
    return Text(place.description, textAlign: TextAlign.justify,);
  }
}