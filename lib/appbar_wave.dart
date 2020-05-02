import 'dart:ui';

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var menu = InkWell(
        onTap: (){
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("POS NO QUIERO HACER NADA"),
            ),
          );
        },
        child: Icon(
            Icons.menu,
            size: 30.0,
            color: Colors.white,
          ),
    );
    return Column(
      children:<Widget>[
        ClipPath(
          clipper: Cabecera(),
          child: Container(
            height: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit:BoxFit.cover,
                image: AssetImage("busines.jpg"),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.4,
                  child: Container(
                    decoration:BoxDecoration(
                      color:Colors.blue,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Trabajoski",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: "LatoBlack",
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  alignment: Alignment(-0.0, -0.0),
                ),
                Container(
                  child: menu,
                  alignment: Alignment(-0.9, -0.3),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}

class Cabecera extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    var path= Path();
    path.lineTo(0.0, size.height-40.0);
    var firstControlPoint = new Offset(size.width/6, size.height-60);
    var firstEndPoint = new Offset(size.width/3, size.height-30.0);
    path.quadraticBezierTo(firstControlPoint.dx,firstControlPoint.dy,
        firstEndPoint.dx,firstEndPoint.dy);
    var secondControlPoint = new Offset( size.width*0.5,size.height);
    var secondEndPoint = new Offset(size.width*(4/6),size.height-30);
    path.quadraticBezierTo(secondControlPoint.dx,secondControlPoint.dy,
        secondEndPoint.dx,secondEndPoint.dy);
    var thirdControlPoint = new Offset(size.width*(5/6),size.height-60 );
    var thirdEndPoint = new Offset(size.width, size.height-40.0);
    path.quadraticBezierTo(thirdControlPoint.dx,thirdControlPoint.dy,
        thirdEndPoint.dx,thirdEndPoint.dy);
    path.lineTo(size.width, size.height-40.0);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {

    return null;
  }

}