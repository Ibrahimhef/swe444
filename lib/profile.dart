import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/ListOwnRecipe.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:swe444/Services/database.dart';
import 'package:swe444/models/meals.dart';
import 'package:swe444/models/user.dart';
import 'package:swe444/shared/loading.dart';
import 'package:swe444/models/profile.dart';

class Profile extends StatefulWidget {
  final double weidth, height;
  final List ListOfRecipeces;
  final String name;
  final String email;
  Profile(
      this.weidth, this.height, this.ListOfRecipeces, this.email, this.name);

  @override
  State<StatefulWidget> createState() {
    return profile(weidth, height, ListOfRecipeces, this.email, this.name);
  }
}

class profile extends State<Profile> {
  final double weidth, height;
  final List ListOfRecipeces;
  final String name;
  final String email;
  profile(
      this.weidth, this.height, this.ListOfRecipeces, this.email, this.name);
  // List ListOwnRec = [];
  final AuthServices _auth = AuthServices();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    // collectInfo();
    return loading
        ? Loading()
        : Scaffold(
            body: Container(
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: -7,
                    child: Image(
                      image: AssetImage('assets/ProfileHead@3x.png'),
                      width: weidth,
                      height: height / 4.5,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: height * 0.89,
                    left: 100,
                    right: 100,
                    child: Container(
                      alignment: Alignment.center,
                      // color: Colors.black,
                      width: weidth / 5,
                      height: weidth / 5,
                      child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              // loading = true;
                            });
                            await _auth.SignOut();
                            Navigator.of(context).pop();
                          },
                          child: Image(
                            width: weidth * 0.4,
                            height: weidth * 0.2,
                            image: AssetImage('assets/LogOutBouttin@3x.png'),
                          )),
                    ),
                  ),
                  Positioned(
                      top: height / 4.5,
                      left: 25,
                      child: Container(
                        width: weidth * 0.8,
                        child: Material(
                          color: Colors.white,
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(25.0),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 7),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "$name",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "$email",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                    top: height / 4,
                    left: 15,
                    right: 15,
                    child: Container(
                        width: weidth * 0.4,
                        height: height * 0.7,
                        child: ListOwnInfo(
                            ListOfRecipeces, weidth * 0.8, height * 0.5)),
                  )
                ],
              ),
            ),
          );
  }
}
