import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/places.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statesOfIndia = Places().getStatesOfIndia();

    return ListView.builder(
      padding: EdgeInsets.zero,
        itemCount: statesOfIndia.length+1,
        itemBuilder: (context, index) {
          if(index == 0){
          return DrawerHeader(           
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: ExactAssetImage('assets/img/india_chennai_flower_market.png')
              )
            ),
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
            child: Text('Header',style: TextStyle(
              color: Colors.white,
              fontSize: 25
            )),
          ));
          }else{
            return InkWell(
              onTap: () => {},
              child: ListTile(
                leading: Icon(Icons.location_city),
                title: Text(statesOfIndia[index -1]),
              ),
            );
          }
        });
  }
}
