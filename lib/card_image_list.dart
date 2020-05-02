import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new CardImage("lago.jpg"),
            new CardImage("montalla.jpg"),
            new CardImage("playa.jpg"),
            new CardImage("rocas.jpg"),
          ],
        ),
    );
  }

}