import 'package:flutter/material.dart';
import 'package:platzitripsapp/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  String desc="The journey itself is a amazing experience. You have to cross "
      "many beautiful creeks and Streams along the way. And there several of other "
      "little but beautiful waterfalls you would meet on the sides of the trail. "
      "Dumbara Ella is the biggest and most beautiful waterfall among those. "
      "It has some unique beauty you can’t find in anywhere else in Sri Lanka. "
      "One could keep looking at the flow less curtain of Dumbara Ella forever I guess. "
      "\n\n"
      "If you are going on a two night trip this would be the best stop for your first night.";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            new DescriptionPlace("Bahamas",4,desc),
            new ReviewList()
          ],
        ),
        HeaderAppBar(),
      ],
    );
  }

}