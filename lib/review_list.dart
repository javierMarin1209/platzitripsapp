import 'package:flutter/material.dart';
import 'review.dart';
class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: <Widget>[
        new Review("Andres.jpg", "Andres", "1 review 2 photos", "el hermanote"),
        new Review("yuyis.jpeg", "Yuyis la mas linda", "1 review 5 photos", "pos si cierto"),
        new Review("Rochi.jpg","maestro rochi","3 review 1 photo","que lindo"),
        new Review("mosca.jpeg","señora mosca","1 review 6 photos","Super el lugar recomendadisimo")

      ],
    );
  }
}
