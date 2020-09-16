import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Login extends StatelessWidget {
  final double weidth, height;

  Login(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {

    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //login header
            Positioned(
              right: 0,
              top: -7,
              child: Image(
                  width: weidth + 25,
                  height: 330,
                  image: AssetImage('assets/headOfLoginPage@3x.png'),
                  fit: BoxFit.fill),
            ),
            // Login area
            Positioned(
              top: 647,
              right: 120,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new catogory()));
                  },
                  child: Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/loginSingupArrow@3x.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 652,
              right: 240,
              child: Text("Sign-in", style: textStyle().style2),
            ),
            //Username and password area
            Positioned(
              top: 520,
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
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black54,
                          ),
                          // border: InputBorder.none,
                          hintText: "password"),
                    ),
                  )
                ],
              ),
            ),
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
                                builder: (context) => new SingupPage()));
                      },
                      child: Text("Sign-up", style: textStyle().style1),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new ForgetPage()));
                      },
                      child: Text(" Forget password?", style: textStyle().style1),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
