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
  String TextIngOrSteps;
  String TextSteps;
  String TextIng;

  detildPage(this.weidth, this.height, this.meal);

  void initState() {
    TextIngOrSteps = "${meal.step}";
  }

  @override
  Widget build(BuildContext context) {
    TextIng = "${meal.ingredients}";
    TextSteps = "${meal.step}";

    return Scaffold(
      body: Container(
        width: weidth,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Stack(
            children: [
          Positioned(
          child: Container(
          width: weidth,
            height: height / 2.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(meal.imageURL.toString()),
                  fit: BoxFit.fill,
                )),
          ),
        ),
        Positioned(
          top: height / 2.7,
          right: 15,
          left: 15,
          child: Container(
            width: weidth * 0.6,
            height: height * 0.2,
            child: Column(
              children: [
                Container(
                  width: weidth * 0.5,
                  height: height * 0.03,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    color: Color.fromRGBO(242, 171, 39, 1),
                  ),
                  child: Text(
                    "${meal.title}",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  width: weidth * 0.5,
                  height: height * 0.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                        Offset(1, 3), // changes position of shadow
                      )
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Estimated time: " +
                          meal.duration.toString() +
                          " min.",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: height / 2.1,
          right: 15,
          left: 15,
          child: SingleChildScrollView(
            child: Column(
              children: [
              Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                  top: 8, bottom: 8, right: 5, left: 5),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: AutoSizeText(
                    "${meal.description}",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      top: 8, bottom: 5, right: 5, left: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: AutoSizeText("Ingredients:",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      bottom: 8, right: 5, left: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: AutoSizeText(
                        "${meal.ingredients}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      top: 8, bottom: 5, right: 5, left: 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: AutoSizeText("Steps:",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                   bottom: 8, right: 5, left: 15),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      child: AutoSizeText("${meal.step}",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
          ],
        ),
      ),
    ),
    ],
    ),
    ),
    ),
    );
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
