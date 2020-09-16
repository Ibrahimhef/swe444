import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Singup extends StatelessWidget {
  final double weidth, height;

  Singup(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //Singup heder
            Positioned(
              right: 0,
              top: -7,
              child: Image(
                  width: weidth + 25,
                  height: 430,
                  image: AssetImage('assets/singupHeder@3x.png'),
                  fit: BoxFit.fill),
            ),
            // Arrow for submit
            Positioned(
              top: 657,
              right: 120,
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
              right: 240,
              child: Text("Sign-up", style: textStyle().style2),
            ),
            //Registration area
            Positioned(
              top: 460,
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
                            Icons.perm_identity,
                            color: Colors.black54,
                          ),
                          border: UnderlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.black54,
                                  width: 0.5,
                                  style: BorderStyle.none)),
                          hintText: "username"),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.mail_outline,
                            color: Colors.black54,
                          ),
                          // border: InputBorder.none,
                          hintText: "Email"),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          // border: InputBorder.none,
                          hintText: "Password"),
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          // border: InputBorder.none,
                          hintText: "Confirm password"),
                    ),
                  )
                ],
              ),
            ),
            //Have account action
            Positioned(
              top: 820,
              child: Container(
                width: weidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new LoginPage()));
                      },
                      child: Text("Have account?", style: textStyle().style1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
