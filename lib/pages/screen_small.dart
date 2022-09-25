import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_bar.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/grid_cards.dart';




Widget ScreenSmall() {
  return Scaffold(
    appBar: myAppBar(),
    drawer: Drawer(
      child: DrawerBody(),
    ),
    body: GridCards(),
  );
}
