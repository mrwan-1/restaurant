import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelCard extends StatelessWidget {
   TimelCard({
    Key? key,
    required this.title
  }) ;
String title;
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
          lineXY: 0.2,
          alignment: TimelineAlign.manual,
          endChild:  Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10),
     child: Text(title,style: TextStyle(fontSize: 25),),
          ), );
  }
}
