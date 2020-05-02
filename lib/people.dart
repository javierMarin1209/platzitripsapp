import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class People extends StatelessWidget{
  String photoPath;
  String descriptionName;
  String namePeople;
  bool state;
  People(this.descriptionName,this.photoPath,this.namePeople,this.state);
  @override
  Widget build(BuildContext context) {
     var mail = InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Enviado"),
            ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 10.0,
          left: 70.0,
          bottom: 10.0,
        ),
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: state ? Color.fromRGBO(205, 77, 74, 1): Color.fromRGBO(217, 217, 217, 1),
        ),
        child: Icon(
          Icons.mail,
          size: 50.0,
          color: state ? Colors.white: Color.fromRGBO(144, 144, 144, 1),
        ),
      )
    );
    final photo=Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 10.0,
        bottom: 10.0,
      ),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image:DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(photoPath)
        ),
      ),
    );
    final name =Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 10.0,
      ),
      child: Text(
        namePeople,
        style: TextStyle(
          fontFamily: "LatoBlack",
          fontSize: 17.0,
          color: Color.fromRGBO(117, 117, 117, 1)
        ),
      ),
    );
    final desc = Container(
      margin: EdgeInsets.only(
        top: 5.0,
        left: 10.0,
        right: 20.0,
      ),
      child: Text(
        descriptionName,
        style: TextStyle(
          fontFamily: "LatoLight",
          fontSize: 13.0,
            color: Color.fromRGBO(181, 181, 181, 1)
        ),
      ),
    );
    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        name,
        desc
      ],
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        photo,
        description,
        mail,
      ],
    );
  }


}