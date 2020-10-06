import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddPage extends StatelessWidget {
  final double weidth, height;

  const AddPage({this.weidth, this.height});
  @override
  Widget build(BuildContext context) {
    List cat = ["Juice", "Appetizers", "Main Dishes", "Salads", "Soup", "Sweets"];
    int SelectedCategory;
    return Container(
      color: Colors.white,
        height: height,
        width: weidth,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: -7,
              child: Image(
                  width: weidth+20,
                  height: height / 3.5,
                  image: AssetImage('assets/AddHead@3x.png'),
                  fit: BoxFit.fill),
            ),
            Positioned(
              top: height/4,
              child: Container(
                width: weidth,
                height: height/1.5 ,
                child: FittedBox(
                  child: Material(
                    color: Colors.white,
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(25.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: weidth+30,
                          height: height ,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 8, bottom:3),
                                width: (weidth * 0.85),
                                height: height * 0.3,
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  onTap: (){},
                                  child: Image(
                                    //image Path
                                    image: AssetImage('assets/AddPic@3x.png'),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.915,
              right: 15,
              left: 15,
              child: Container(
                alignment: Alignment.center,
                width: weidth * 0.5,
                child: FlatButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onPressed: () {},
                    child: Image(
                      image: AssetImage('assets/AddButton@3x.png'),
                      width: weidth * 0.4,
                      height: weidth * 0.2,
                    )),
              ),
            ),
          ],
        ));
  }
}
