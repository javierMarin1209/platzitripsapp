import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage="assets/img/yuyis.jpeg";
  String name="Yuyis la sexy";
  String details ="1 review 5 photos";
  String comment="pues si cierto";
  Review(this.pathImage,this.name,this.details,this.comment);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_half = Container(
      margin: EdgeInsets.only(
          top:3.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 12.0,
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
          top:3.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 12.0,
      ),
    );
    final star= Container(
      margin: EdgeInsets.only(
          top:3.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 12.0,
      ),
    );
    final stars= Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 5.0
          ),
        ),
        star,
        star,
        star,
        star_half,
        star_border
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
     final userInfo = Container(
       margin: EdgeInsets.only(
           left: 20.0
       ),
       child: Text(
         details,
         textAlign: TextAlign.left,
         style: TextStyle(
           fontFamily: "Lato",
           fontSize: 13.0,
           color: Color(0xFFa3a5a7)
         ),
       ),
     );
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,
        ),
      ),
    );

    final userDetails= Column(
      children: <Widget>[
        userName,
        userInfo,
        userComment,
        
      ],
    );

    final photo= Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );
    final userInfoStars =Row(
      children: <Widget>[
        userInfo,
        stars
      ],
    );
    final info = Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfoStars,
        userComment
      ],
    );
    return Row(
      children: <Widget>[
        photo,
        info
      ],
    );
  }

}