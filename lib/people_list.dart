import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'people.dart';

// ignore: camel_case_types
class peopleList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final list =ListView(
        children: ListTile.divideTiles(
          context: context,
          color: Color.fromRGBO(200, 200, 200, 1),
          tiles: [
            People("experience: 1 years", "yuyis.jpeg", "Julieth Cifuentes",true),
            People("experience: 2 years", "Andres.jpg", "Andres Marin",true),
            People("experience: 3 years", "mosca.jpeg", "Señora Mosca",false),
            People("experience: 4 years", "Rochi.jpg", "Maestro Rochi",false),
            People("experience: 1 years", "yuyis.jpeg", "Julieth Cifuentes",true),
            People("experience: 2 years", "Andres.jpg", "Andres Marin",true),
            People("experience: 3 years", "mosca.jpeg", "Señora Mosca",false),
            People("experience: 4 years", "Rochi.jpg", "Maestro Rochi",false),
            People("experience: 1 years", "yuyis.jpeg", "Julieth Cifuentes",true),
            People("experience: 2 years", "Andres.jpg", "Andres Marin",true),
            People("experience: 3 years", "mosca.jpeg", "Señora Mosca",false),
            People("experience: 4 years", "Rochi.jpg", "Maestro Rochi",false),
          ]
        ).toList(),
    );
    return Container(
      margin: EdgeInsets.only(
        top: 80.0,
      ),
      child: list,
    );
  }

}