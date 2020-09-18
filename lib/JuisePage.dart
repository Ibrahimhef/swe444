import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Jusis extends StatelessWidget {
  final double weidth, height;

  Jusis(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //header of juise
            Positioned(
              top: -9,
              right: -15,
              child: Image(
                  width: weidth+30,
                  height: height/4,
                  image: AssetImage('assets/Jusis_page.png'),
                  fit: BoxFit.fill),
            ),
          ],
        ));
  }
}
