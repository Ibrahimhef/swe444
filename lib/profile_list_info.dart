import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:provider/provider.dart';
import 'package:swe444/DetiledRecipe.dart';
import 'package:swe444/meal_item.dart';
import 'package:swe444/models/meals.dart';

class ListInfo_profile extends StatefulWidget {
  final double weidth, height;
  final List meal;
  ListInfo_profile(this.weidth, this.height, this.meal);

  @override
  State<StatefulWidget> createState() {
    return listInfo_pro(weidth, height,meal);
  }
}

class listInfo_pro extends State<ListInfo_profile> {
  final double weidth, height;
  final List meal;
  listInfo_pro(this.weidth, this.height, this.meal);
  @override
  Widget build(BuildContext context) {
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
