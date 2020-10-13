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
    TextIng= "${meal.ingredients}";
    TextSteps= "${meal.step}";

    return Scaffold(
          body: Container(
          width: weidth,
          height: height,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 30),
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      child: AutoSizeText(
                        "${meal.title}" + ",",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
                    width: weidth,
                    height: sizeW(height, 0.4),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 2,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Image.network(meal.imageURL.toString()),
                  ),
                  Container(
                    width: sizeW(weidth, 0.4),
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffCBDCC3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child:
                      Text(
                        "Estimated time: " + meal.duration.toString() + " min.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 5, left: 5),
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.transparent)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: AutoSizeText(
                          "${meal.description}",
                          style: TextStyle(fontSize: weidth * 0.06),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 8, bottom: 8, right: 5, left: 5),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(16.0),
                                        ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10 , bottom: 15, ),
                          decoration: BoxDecoration(
                            color: Color(0xffE1E1E1),
                            borderRadius: BorderRadius.circular(12.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(2, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(width: weidth/3,
                                child: FlatButton(
                                  child: Text(
                                    "Steps",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      TextIngOrSteps = TextSteps;
                                    });
                                  },
                                ),
                              ),
                              VerticalDivider(color: Colors.black, ),
                              Container(width: weidth/3,
                                child: FlatButton(
                                  child: Text(
                                    "Ingredients",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      TextIngOrSteps = TextIng;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 5, left: 5),
                          child: SizedBox(
                            child: Text(
                              TextIngOrSteps,
                              style: TextStyle(fontSize: weidth * 0.07),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
