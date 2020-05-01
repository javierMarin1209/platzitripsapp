import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget{

  String namePlace;
  int Stars;
  String descriptionPlace;
  DescriptionPlace(this.namePlace, this.Stars,this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(
          top:323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
          top:323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );
    final star= Container(
      margin: EdgeInsets.only(
        top:323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    final paragraf=Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 40.0
      ),
      child: Text(descriptionPlace,
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal
      )),
    );
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border
          ],
        )
      ],
    );
    final description =Container(
      child: Column(
        children: <Widget>[
          title_stars,
          paragraf,
        ],
      ),
    );
    return description;

  }

}