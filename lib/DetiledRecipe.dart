import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class DetildPage extends StatefulWidget {
  final double weidth, height;
  final String Recipename;

  DetildPage(this.weidth, this.height, this.Recipename);

  @override
  State<StatefulWidget> createState() {
    return detildPage(weidth, height, Recipename);
  }
}

class detildPage extends State<DetildPage> {
  final double weidth, height;
  final String Recipename;

  detildPage(this.weidth, this.height, this.Recipename);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff2b705),
          title: Text(
            Recipename,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'OleoScript'),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
                height: height- (height*0.2),
                width: weidth - (weidth*0.2),
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(25.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: weidth + 30,
                          height: height,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 3),
                                  width: (weidth * 0.85),
                                  height: height * 0.3,
                                  child: Image(
                                    image:
                                        AssetImage("assets/Appetizers_icon@3x.png"),
                                  )),
                              Container(
                                child: Text(
                                  "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 10 , bottom: 10 , right: 5, left: 5),
                                child: Text(
                                  "2 large eggs eggs, beaten"
                                      "\n ¼ cup water"
                                      "\n 1 ½ cups Italian seasoned bread crumbs"
                                      "\n ½ teaspoon garlic salt",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10 , bottom: 10 , right: 5, left: 5),
                    child: Text(
                      "2 large eggs eggs, beaten"
                          "\n ¼ cup water"
                          "\n 1 ½ cups Italian seasoned bread crumbs"
                          "\n ½ teaspoon garlic salt",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10 , bottom: 10 , right: 5, left: 5),
                    child: Text(
                      "2 large eggs eggs, beaten"
                          "\n ¼ cup water"
                          "\n 1 ½ cups Italian seasoned bread crumbs"
                          "\n ½ teaspoon garlic salt",
                      style: TextStyle(fontSize: 20),
                    ),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ));
  }
}
