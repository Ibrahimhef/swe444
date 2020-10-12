import 'package:provider/provider.dart';
import 'package:swe444/List_info.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/database.dart';
import 'package:swe444/models/meals.dart';
import 'package:swe444/models/user.dart';
import 'package:swe444/profile.dart';
import 'package:swe444/NewRecipe.dart';

class Catogory extends StatefulWidget {
  final double weidth, height;
  final User user;
  Catogory(this.weidth, this.height, this.user);

  @override
  State<StatefulWidget> createState() {
    return catogory(weidth, height, 0, user);
  }
}

class catogory extends State<Catogory> {
  final double weidth, height;
  final User user;
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
  catogory(this.weidth, this.height, this._category, this.user);
  int mode = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {
      listInfo.category=0;
    });

    return StreamProvider<List<Meal>>.value(
      value: DatabaseService().meals,
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromRGBO(242, 171, 39, 1),
          height: 50,
          items: [
            Image.asset('assets/Juice_icon@3x.png'),
            Image.asset('assets/Appetizers_icon@3x.png'),
            Image.asset('assets/Main Dishes_icon@3x.png'),
            Image.asset('assets/Salads_icon@3x.png'),
            Image.asset('assets/Soup_icon@3x.png'),
            Image.asset('assets/Sweets_icon@3x.png'),
            Icon(Icons.person)
          ],
          onTap: selepage,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new AddPage(weidth, height, user)));
          },
          backgroundColor: Color(0xfff2780c),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Center(
            child: Text(
              cat1[_category],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OleoScript'),
            ),
          ),
          backgroundColor: Color(0xfff2b705),
          // elevation: 0,
          // bottomOpacity: 0,
        ),
        body: Container(
          child: new ListInfo(weidth, height),
        ),
      ),
    );
  }
  void selepage(int index) {
    print("email:${user.email}");
    setState(
          () {
        if (index < 6) {
          setState(() {
            listInfo.category = index;
            _category = index;
          });
        } else {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new Profile(weidth, height, [])));
        }
      },
    );
  }
}

class recipe {
  final String name, decraption, path, time;
  final int caterogry;
  recipe({this.name, this.decraption, this.path, this.time, this.caterogry});
  String getName() {
    return this.name;
  }
}
