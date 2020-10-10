import 'package:provider/provider.dart';
import 'package:swe444/List_info.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/database.dart';
import 'package:swe444/models/meals.dart';
import 'package:swe444/profile.dart';
import 'package:swe444/NewRecipe.dart';

class Catogory extends StatefulWidget {
  final double weidth, height;

  Catogory(this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    return catogory(weidth, height, 0);
  }
}

class catogory extends State<Catogory> {
  final double weidth, height;
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

  List mealData() {
    List meal = [];
    final currentMeal = Provider.of<List<Meal>>(context);
    for (int i = 0; i < currentMeal.length; i++) {
      if (currentMeal[i].category == 5) {
        meal.add(currentMeal[i]);
      }
    }
  }

  void selepage(int index) {
    setState(
      () {
        if (index < 6) {
          setState(() {
            listInfo.category=index;
            _category= index;
          });
          // for (int i = 0; i < ListOfCateogry.length; i++) {
          //   if (ListOfCateogry[i].caterogry == category)
          //     ListOfCurrentCateogry.add(ListOfCateogry.elementAt(i));
          // }
        }
        // else {
        //   Navigator.push(
        //       context,
        //       new MaterialPageRoute(
        //           builder: (context) =>
        //               new Profile(weidth, height, ListOfCateogry)));
        // }
      },
    );
  }

  catogory(this.weidth, this.height, this._category);
  int mode = 0;
  @override
  Widget build(BuildContext context) {
    // ListOfCurrentCateogry.clear();
    // for (int i = 0; i < ListOfCateogry.length; i++) {
    //   if (ListOfCateogry[i].caterogry == _category)
    //     ListOfCurrentCateogry.add(ListOfCateogry.elementAt(i));
    // }
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
                    builder: (context) => new AddPage(weidth, height)));
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
          child: new ListInfo( weidth, height),
        ),
      ),
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
