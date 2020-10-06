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
    return ListView.builder(
        itemCount: ListOfRecipeces.length,
        itemBuilder: (context, index) {
          return InkWell(
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
                    elevation: 14.0,
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
                                  child: AutoSizeText(
                                    ListOfRecipeces[index].decraption,
                                    style: TextStyle(fontSize: 18),
                                    maxLines: 4,
                                  )),

                              Container(
                                  width: (weidth * 0.85) * 0.6,
                                  height: (height * 0.22) * 0.15,
                                  child: Text(
                                    "time: " + ListOfRecipeces[index].time,
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          width: (weidth * 0.85) * 0.5,
                          height: height * 0.25,
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
        });
  }
}
