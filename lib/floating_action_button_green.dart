import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{
  bool state=true;
  void onPressedFav(){
      Scaffold.of(context).showSnackBar(
          SnackBar(
              content: state ? Text("Añadido a favoritos") : Text("Eliminado de favoritos")
          )
      );
      setState(() {
        state ? state=false: state=true;
      });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        state ? Icons.favorite_border : Icons.favorite,
      ),
    );
  }

}