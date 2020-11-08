import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swe444/Services/database.dart';
import 'package:swe444/meal_item.dart';
import 'package:swe444/models/meals.dart';
import 'package:swe444/models/profile.dart';
import 'package:swe444/models/user.dart';

class ListInfo_profile extends StatefulWidget {
  final double weidth, height;
  int cat;
  final List ListOfRecipeces;

  ListInfo_profile(this.weidth, this.height, this.ListOfRecipeces);

  @override
  State<StatefulWidget> createState() {
    return listInfo_pro(weidth, height, ListOfRecipeces);
  }
}

class listInfo_pro extends State<ListInfo_profile> {
  final double weidth, height;
  final List ListOfRecipeces;
  String MyEmail = '';
  static int cat;

  listInfo_pro(this.weidth, this.height, this.ListOfRecipeces);

  @override
  void initState() {
    cat = 0;
  }

  List meal = [];
  @override
  Widget build(BuildContext context) {
    meal = [];
    ListOfRecipeces.forEach((element) {
      if (element.category == cat) {
        meal.add(element);
      }
    });
    return GlowingOverscrollIndicator(
      color: Color(0xfff2b705),
      axisDirection: AxisDirection.down,
      child: ListView.builder(
          itemCount: meal.length,
          itemBuilder: (context, index) {
            return MealItem(weidth, height, meal[index]);
          }),
    );
  }
}
