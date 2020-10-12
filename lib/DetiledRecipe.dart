import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:swe444/models/meals.dart';

class DetildPage extends StatefulWidget {
  final double weidth, height;
  final Meal meal;
  DetildPage(this.weidth, this.height, this.meal);

  @override
  State<StatefulWidget> createState() {
    return detildPage(weidth, height, meal);
  }
}

class detildPage extends State<DetildPage> {
  final double weidth, height;
  final Meal meal;
  detildPage(this.weidth, this.height, this.meal);

  @override
  Widget build(BuildContext context) {
    print(weidth);
    print(height);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xfff2b705),
          title: Text(
            "${meal.title}",
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
                height: height * 0.9,
                width: sizeW(weidth, 0.8),
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
                                width: sizeW(weidth, 0.8),
                                height: sizeh(height),
                                child: Image.network("${meal.imageURL}"),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                    top: 8, bottom: 8, right: 5, left: 5),
                                child: SizedBox(
                                  width: sizeW(weidth, 0.8),
                                  height: sizeh(height),
                                  child: AutoSizeText(
                                    "${meal.description}",
                                    style: TextStyle(fontSize: weidth * 0.08),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                    top: 8, bottom: 8, right: 5, left: 5),
                                child: SizedBox(
                                  width: sizeW(weidth, 0.8),
                                  height: sizeh(height),
                                  child: AutoSizeText(
                                    "${meal.ingredients}",
                                    style: TextStyle(fontSize: weidth * 0.08),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                    top: 8, bottom: 8, right: 5, left: 5),
                                child: SizedBox(
                                  width: sizeW(weidth, 0.8),
                                  height: sizeh(height),
                                  child: AutoSizeText(
                                    "${meal.step}",
                                    style: TextStyle(fontSize: weidth * 0.08),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(
                                    top: 8, bottom: 8, right: 5, left: 5),
                                child: SizedBox(
                                  width: sizeW(weidth, 0.8),
                                  height: height * 0.05,
                                  child: AutoSizeText(
                                    "${meal.duration}",
                                    style: TextStyle(fontSize: weidth * 0.03),
                                  ),
                                ),
                              )
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

  double sizeW(double weidth, double ratio) {
    if (weidth <= 375) {
      return 354 * ratio;
    } else if (weidth > 375 && weidth <= 480) {
      return 436 * ratio;
    } else if (weidth > 480 && weidth < 800) {
      return 784 * ratio;
    } else
      return 900 * ratio;
  }

  double sizeh(double height) {
    if (height <= 569) {
      return 582 * 0.18;
    } else if (height > 569 && height <= 812) {
      return 740 * 0.18;
    } else if (height > 812 && height < 896) {
      return 882 * 0.19;
    } else if (height > 896 && height <= 1024) {
      return 992 * 0.19;
    } else
      return 1100 * 0.19;
  }
}
