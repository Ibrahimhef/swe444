import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/screens/authenicate/authenticate.dart';
import 'package:swe444/wrapper.dart';
import 'TextStyle.dart';

// class SubCategories extends StatefulWidget{
//   double weidth, height;
//   String category;
//   @override
//   State<StatefulWidget> createState() {
//     return subCategories(weidth, height, category);
//   }
//
// }

class SubCategories extends StatelessWidget {
  final double weidth, height;
  String category;

  SubCategories(this.weidth, this.height, this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: setAppBar(weidth, category),
      drawer: drawer(weidth, category, context),
      body: Container(
        height: height,
        width: weidth,
      ),
    );
  }
}

Widget setAppBar(double weidth, String name) {
  return AppBar(
      backgroundColor: Color.fromRGBO(217, 125, 13, 1),
      title: Text(name, style: textStyle().style4(weidth)));
}

Widget drawer(double weidth, String name, BuildContext context) {
  final AuthServices _auth = AuthServices();
  return Drawer(
    child: ListView(
      children: [
        Container(
          child: DrawerHeader(
            decoration: BoxDecoration(
                color: Color.fromRGBO(50, 62, 64, 1),
                image: DecorationImage(
                  image: AssetImage("assets/Drawer@3x.png"),
                  fit: BoxFit.fill,
                )),
          ),
        ),
        ListTile(
          title: Text("Salads"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Soup"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Main Dishes"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Appetizers"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Sweets"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Juice"),
          onTap: () {},
        ),
        ListTile(
          title: Text("Log Out"),
          onTap: () async {
            await _auth.SignOut();
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Wrapper()));
          },
        ),
      ],
    ),
  );
}
