import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class ForgetPass extends StatelessWidget {
  final double weidth, height;

  ForgetPass(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //header of ForgetPass
            Positioned(
              right: 0,
              top: -7,
              child: Image(
                  width: weidth,
                  height: 250,
                  image: AssetImage('assets/forgethead@3x.png'),
                  fit: BoxFit.fill),
            ),
            // Arrow for submit
            Positioned(
              top: 650,
              right: 100,
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/loginSingupArrow@3x.png'),
                  ),
                ),
              ),
            ),
            // text right to Arrow for submit
            Positioned(
              top: 662,
              right: 200,
              child: Text(
                "Send Password",
                style: textStyle().style3,
              ),
            ),
            //Email submit area
            Positioned(
              top: 500,
              right: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.mail_outline,
                            color: Colors.black54,
                          ),
                          border: UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.black54,
                                  width: 0.5,
                                  style: BorderStyle.none)),
                          hintText: "Email"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
