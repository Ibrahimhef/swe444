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

        child: Center(
          child: InkWell(
            onTap: () async {
              await _auth.SignOut();
              Navigator.of(context).pop();

            },
            child: Text("اطلع برا", style: TextStyle(fontSize: 50),),
          ),
        ),
      ),
    );
  }
}
