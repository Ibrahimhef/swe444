import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/profile_list_info.dart';

class Profile_list extends StatefulWidget {
  final double weidth, height;
  final List meal;
  Profile_list(this.weidth, this.height, this.meal);
  @override
  State<StatefulWidget> createState() {
    return profile_list(weidth, height, 0, this.meal);
  }
}

class profile_list extends State<Profile_list> {
  final double weidth, height;
  List meal = [];
  List meal_cat;
  int _category;
  var cat = [
    "assets/Juice_page@3x.png",
    "assets/Apptizers_page@3x.png",
    "assets/Main Dishes_page@3x.png",
    "assets/Salads_page@3x.png",
    "assets/Soup_page@3x.png",
    "assets/Sweets_page@3x.png"
  ];
  var cat1 = ["Juice", "Appetizers", "Main Dishes", "Salads", "Soup", "Sweets"];
  profile_list(this.weidth, this.height, this._category, this.meal);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        appBar: AppBar(
          backgroundColor: Color(0xff262523),
          title: Text(
            "Your Recipes",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   backgroundColor: Color(0xff262523),
        //   height: 50,
        //   items: [
        //     Image.asset('assets/Juice_icon@3x.png'),
        //     Image.asset('assets/Appetizers_icon@3x.png'),
        //     Image.asset('assets/Main Dishes_icon@3x.png'),
        //     Image.asset('assets/Salads_icon@3x.png'),
        //     Image.asset('assets/Soup_icon@3x.png'),
        //     Image.asset('assets/Sweets_icon@3x.png'),
        //   ],
        //   onTap: (int index){
        //     setState(() {
        //       _category = index;
        //     });
        //   },
        // ),
        body: Container(
          child: new ListInfo_profile(weidth, height,meal),
        ),
    );
  }
}