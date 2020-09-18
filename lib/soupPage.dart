import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Soup extends StatelessWidget {
  final double weidth, height;

  Soup(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: weidth,
      height: height,
    );
  }
}
