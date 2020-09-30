import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'package:swe444/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'TextStyle.dart';

class SubCategories extends StatefulWidget {
  final double weidth, height;
  int category;

  SubCategories(this.weidth, this.height, this.category);

  @override
  State<StatefulWidget> createState() {
    return subCategories(weidth, height, category);
  }
}

class subCategories extends State<SubCategories> {
  final double weidth, height;
  int category;
  var cat = [
    "assets/Juice_page@3x.png",
    "assets/Apptizers_page@3x.png",
    "assets/Main Dishes_page@3x.png",
    "assets/Salads_page@3x.png",
    "assets/Soup_page@3x.png",
    "assets/Sweets_page@3x.png"
  ];

  subCategories(this.weidth, this.height, this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(242, 171, 39, 1),
        height: 55,
        items: [
          Image(
            image: AssetImage('assets/Juice_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Appetizers_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Main Dishes_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Salads_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Soup_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Sweets _icon@3x.png'),
          ),
          Icon(Icons.person)
        ],
        onTap: (index) {
          setState(() {
            if (index < 6)
              category = index;
            else {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) =>
                      new Profile(weidth, height)));
            }
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(242, 171, 39, 1),

        child: Icon(Icons.add),
      ),
      body: Container(
        color: Colors.white,
        width: weidth,
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              right: -10,
              top: -7,
              child: Image(
                  width: weidth + 25,
                  height: height / 5,
                  image: AssetImage(cat[category]),
                  fit: BoxFit.fill),
            ),
            FractionalTranslation(
              translation: Offset(0, 0.2),
              child: Container(
                child: ListView(
                  children: [

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

