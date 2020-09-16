import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Catogory extends StatelessWidget {
  final double weidth, height;

  Catogory(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //header of ForgetPass
            Positioned(
              right: -2,
              top: -1,
              child: Image(
                  width: weidth + 30,
                  height: 310,
                  image: AssetImage('assets/catogory@3x.png'),
                  fit: BoxFit.fill),
            ),
            Positioned(
              top: 32,
              right: 0,
              child: Container(
                width: weidth,
                height: 500,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: 140,
                                height: 160,
                                image: AssetImage('assets/salad@3x.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: 140,
                                height: 99,
                                image: AssetImage('assets/Soup@3x.png'),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image(
                              width: 140,
                              height: 160,
                              image: AssetImage('assets/mainD@3x.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(

                      height: 500,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: 140,
                                height: 99,
                                image: AssetImage('assets/Appatazer@3x.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: 140,
                                height: 160,
                                image: AssetImage('assets/Sweet@3x.png'),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image(
                              width: 140,
                              height: 99,
                              image: AssetImage('assets/Jusic@3x.png'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
