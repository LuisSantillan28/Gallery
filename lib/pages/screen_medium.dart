import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/grid_cards.dart';

class ScreenMedium extends StatelessWidget {
  const ScreenMedium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: myAppBar(),
      body: Row(
        children: [
          Expanded(child:   DrawerBody(),flex: 2,),
          Expanded(child: GridCards(),flex: 5,),

        ],
      ),
    );
  }
}