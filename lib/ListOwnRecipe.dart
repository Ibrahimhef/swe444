import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ListOwnInfo extends StatefulWidget {
  final double weidth, height;
  final List ListOfRecipeces;

  ListOwnInfo(this.ListOfRecipeces, this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    return listOwnInfo(ListOfRecipeces, weidth, height);
  }
}

class listOwnInfo extends State<ListOwnInfo> {
  final double weidth, height;
  List ListOfRecipeces;

  listOwnInfo(this.ListOfRecipeces, this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    return GlowingOverscrollIndicator(
      color: Color(0xfff2b705),
      axisDirection: AxisDirection.right,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ListOfRecipeces.length,
          itemBuilder: (context, index) {
            return InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: weidth,
                  height: height,
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: weidth,
                            height: height,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // recipe name
                                Container(
                                    alignment: Alignment.center,
                                    width: weidth,
                                    height: (height * 0.22) * 0.5,
                                    child: Text(
                                      ListOfRecipeces[index].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    )),
                                Container(
                                    margin: EdgeInsets.only(top: 8, bottom: 3),
                                    width: (weidth * 0.85) * 0.5,
                                    height: height * 0.3,
                                    child: Image.network(
                                        ListOfRecipeces[index].imageURL
                                        //image Path
                                        )),
                                // breif descraption
                                SizedBox(
                                    width: (weidth * 0.85) * 0.95,
                                    height: height * 0.35,
                                    child: AutoSizeText(
                                      ListOfRecipeces[index].description,
                                      style: TextStyle(fontSize: 18),
                                      maxLines: 6,
                                    )),
                              ],
                            ),
                          ),
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
