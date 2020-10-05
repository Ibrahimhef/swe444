import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/screens/authenicate/authenticate.dart';
import 'package:swe444/wrapper.dart';
import 'TextStyle.dart';

class Profile extends StatefulWidget {
  final double weidth, height;

  Profile(this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    return profile(weidth, height);
  }
}

class profile extends State<Profile> {
  final double weidth, height;

  profile(this.weidth, this.height);

  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: -38,
              child: Image(
                image: AssetImage('assets/ProfileHead@3x.png'),
                width: weidth+20,
                height: height,
              ),
            ),
            Positioned(
              top: height * 0.91,
              child: Container(
                width: weidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                        onTap: () async {
                          await _auth.SignOut();
                          Navigator.of(context).pop();
                        },
                        child: Image(
                          image: AssetImage('assets/LogOutBouttin@3x.png'),
                          width: weidth * 0.4,
                          height: weidth * 0.2,
                        )),
                    InkWell(
                        onTap: () {},
                        child: Image(
                          image: AssetImage('assets/EditButton@3x.png'),
                          width: weidth * 0.4,
                          height: weidth * 0.2,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
