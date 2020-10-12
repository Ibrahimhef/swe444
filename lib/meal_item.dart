import 'package:flutter/material.dart';
import 'package:swe444/DetiledRecipe.dart';
import 'package:swe444/models/meals.dart';

class MealItem extends StatelessWidget {
  final Meal meal;
  final double weidth, height;
  MealItem(this.weidth, this.height, this.meal);

  void SelectMeal(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return DetildPage(this.weidth, this.height, meal);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () => SelectMeal(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
          width: weidth * 0.85,
          height: height * 0.22,
          child: FittedBox(
            child: Material(
              // color: color[random.nextInt(9)],
              color: Colors.white,
              elevation: 5.0,
              borderRadius: BorderRadius.circular(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: weidth * 0.85,
                    height: height * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // recipe name
                        Container(
                            width: (weidth * 0.85) * 0.6,
                            height: (height * 0.22) * 0.2,
                            child: Text(
                              // ListOfRecipeces[index].name,
                              meal.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        // breif descraption
                        SizedBox(
                            width: (weidth * 0.85) * 0.95,
                            height: (height * 0.22) * 0.45,
                            child: Text(
                              // ListOfRecipeces[index].decraption,
                              meal.description,
                              style: TextStyle(fontSize: 18),
                              overflow: TextOverflow.fade,
                            )),

                        Center(
                          child: Container(
                            width: (weidth * 0.85),
                            height: (height * 0.22) * 0.15,
                            decoration: BoxDecoration(
                              color: Color(0xffCBDCC3),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                "Estimated time " +
                                    // ListOfRecipeces[index].time,
                                    meal.duration.toString(),
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: (weidth * 0.85) * 0.5,
                    height: height * 0.25,
                    decoration: BoxDecoration(
                      color: Color(0xffE1E1E1),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Image.network(meal.imageURL.toString()),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
