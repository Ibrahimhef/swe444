import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ListInfo extends StatefulWidget {
  final double weidth, height;
  final List ListOfRecipeces;

  ListInfo(this.ListOfRecipeces, this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    return listInfo(ListOfRecipeces, weidth, height);
  }
}

class listInfo extends State<ListInfo> {
  final double weidth, height;
  List ListOfRecipeces;

  listInfo(this.ListOfRecipeces, this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      color: Color(0xfff2b705),
      axisDirection: AxisDirection.down,
      child: ListView.builder(
          itemCount: ListOfRecipeces.length,
          itemBuilder: (context, index) {
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {},
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
                                      ListOfRecipeces[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                                // breif descraption
                                SizedBox(
                                    width: (weidth * 0.85) * 0.95,
                                    height: (height * 0.22) * 0.45,
                                    child: Text(
                                      ListOfRecipeces[index].decraption,
                                      style: TextStyle(fontSize: 18),
                                      overflow: TextOverflow.fade,

                                    )),

                                Center(
                                  child: Container(
                                    width: (weidth * 0.85) ,
                                    height: (height * 0.22) * 0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xffCBDCC3),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Estimated time " + ListOfRecipeces[index].time,
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
                            child: Image(
                              //image Path
                              image: AssetImage(ListOfRecipeces[index].path),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
