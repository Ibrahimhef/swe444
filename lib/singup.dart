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
                  height: height/2,
                  image: AssetImage('assets/singupHeder@3x.png'),
                  fit: BoxFit.fill),
            ),
            // Arrow for submit
            Positioned(
              top: height*0.798,
              left: weidth*0.10,
              right: weidth*0.10,
              child: Center(
                child: InkWell(
                  onTap: () {},
                  child: Image(
                    width: weidth*0.4,
                    height: height*0.05,
                    image: AssetImage('assets/singup.png'),
                  ),
                ),
              ),
            ),

            //Registration area
            Positioned(
              top: height*0.55,
              left: weidth*0.15,
              right: weidth*0.15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: weidth*0.75,
                    height: height/20,
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
                    width: weidth*0.75,
                    height: height/20,
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
                    width: weidth*0.75,
                    height: height/20,
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
                    width: weidth*0.75,
                    height: height/20,
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
              top: height*0.9,
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
                      child: Text("Have account?", style: textStyle().style1(weidth)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
