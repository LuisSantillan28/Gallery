import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App Salim Castro 180017',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.indigoAccent,
          title: Text('Places Salim Castro 180017'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}