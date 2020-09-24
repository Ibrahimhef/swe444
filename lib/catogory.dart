import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Catogory extends StatelessWidget {
  final double weidth, height;
  final AuthServices _auth = AuthServices();

  Catogory(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(217, 125, 13, 1),
          onPressed: () async {
            await _auth.SignOut();
          },
          child: Text("Logout", style: TextStyle(color: Colors.white,),)
        ),
        body: Container(
            height: height,
            width: weidth,
            child: Stack(
              children: [
                //header of ForgetPass
                Positioned(
                  right: -2,
                  top: -2,
                  child: Image(
                      width: weidth + 20,
                      height: height / 2.9,
                      image: AssetImage('assets/catogory@3x.png'),
                      fit: BoxFit.fill),
                ),
                Positioned(
                  top: height * 0.35,
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new salads()));
                                  },
                                  child: Image(
                                    width: weidth * 0.39,
                                    height: height / 4.623,
                                    image: AssetImage('assets/salad@3x.png'),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => new soup()));
                                  },
                                  child: Image(
                                    width: weidth * 0.39,
                                    height: height / 7.41,
                                    image: AssetImage('assets/Soup@3x.png'),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              new MainDishes()));
                                },
                                child: Image(
                                  width: weidth * 0.39,
                                  height: height / 4.623,
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
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new apptizers()));
                                  },
                                  child: Image(
                                    width: weidth * 0.39,
                                    height: height / 7.41,
                                    image:
                                        AssetImage('assets/Appatazer@3x.png'),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) =>
                                                new sweets()));
                                  },
                                  child: Image(
                                    width: weidth * 0.39,
                                    height: height / 4.623,
                                    image: AssetImage('assets/Sweet@3x.png'),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      new MaterialPageRoute(
                                          builder: (context) => new jusis()));
                                },
                                child: Image(
                                  width: weidth * 0.39,
                                  height: height / 7.41,
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
            )));
  }
}
