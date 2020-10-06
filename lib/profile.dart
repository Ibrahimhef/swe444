import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/ListOwnRecipe.dart';

class Profile extends StatefulWidget {
  final double weidth, height;
  final List ListOfRecipeces;

  Profile(this.weidth, this.height, this.ListOfRecipeces);

  @override
  State<StatefulWidget> createState() {
    return profile(weidth, height, ListOfRecipeces);
  }
}

class profile extends State<Profile> {
  final double weidth, height;
  final List ListOfRecipeces;

  profile(this.weidth, this.height, this.ListOfRecipeces);

  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: -7,
              child: Image(
                image: AssetImage('assets/ProfileHead@3x.png'),
                width: weidth,
                height: height / 4,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: height * 0.88,
              right: 15,
              left: 15,
              child: Container(
                alignment: Alignment.center,
                width: weidth *0.5,
                child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () async {
                      await _auth.SignOut();
                      Navigator.of(context).pop();
                    },
                    child: Image(
                      image: AssetImage('assets/LogOutBouttin@3x.png'),
                      width: weidth * 0.4,
                      height: weidth * 0.2,
                    )),
              ),
            ),
            Positioned(
              top: 120,
left: 15,
                right: 15,
                child: Container(
                    width: weidth * 0.4,
                    height: height * 0.7,
                    child: ListOwnInfo(ListOfRecipeces, weidth * 0.8, height * 0.5)),

            )
          ],
        ),
      ),
    );
  }
}
