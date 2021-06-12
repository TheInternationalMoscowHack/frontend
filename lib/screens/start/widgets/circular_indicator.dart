import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new CircularPercentIndicator(
      radius: 130.0,
      animation: true,
      animationDuration: 1200,
      lineWidth: 5.0,
      percent: 0.4,
      // center: new Text(
      //   "40 hours",
      //   style:
      //       new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      // ),
      circularStrokeCap: CircularStrokeCap.butt,
      backgroundColor: Colors.grey,
      progressColor: Colors.red,
    );
  }
}
