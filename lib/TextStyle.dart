import 'package:flutter/material.dart';
class textStyle{
  TextStyle style1 = new TextStyle(
      fontSize: 20,
      color: Colors.black54,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline);
  TextStyle style2 = new TextStyle(
      color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 25);
  TextStyle style3= new TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.bold,
      fontSize: 20);

  TextStyle Size(double x){
    return  style1 = new TextStyle(
        color: Colors.black54, fontWeight: FontWeight.bold, fontSize: x*0.067);
  }
}