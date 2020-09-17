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
              top: -2,
              child: Image(
                  width: weidth +20,
                  height: height/2.9,
                  image: AssetImage('assets/catogory@3x.png'),
                  fit: BoxFit.fill),
            ),
            Positioned(
              top: height*0.35,
              right: 0,
              child: Container(
                width: weidth,
                height: height,
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
                                width: weidth*0.39,
                                height: height/4.623,
                                image: AssetImage('assets/salad@3x.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: weidth*0.39,
                                height: height/7.41,
                                image: AssetImage('assets/Soup@3x.png'),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image(
                              width: weidth*0.39,
                              height: height/4.623,
                              image: AssetImage('assets/mainD@3x.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(


                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: weidth*0.39,
                                height: height/7.41,
                                image: AssetImage('assets/Appatazer@3x.png'),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: InkWell(
                              onTap: () {},
                              child: Image(
                                width: weidth*0.39,
                                height: height/4.623,
                                image: AssetImage('assets/Sweet@3x.png'),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image(
                              width: weidth*0.39,
                              height: height/7.41,
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
