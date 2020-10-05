
import 'package:flutter/material.dart';

class ListInfo extends StatefulWidget {
  final double weidth, height;
  final List ListOfRecipeces;

  ListInfo(this.ListOfRecipeces, this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    print(ListOfRecipeces.length);
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
              padding: const EdgeInsets.all(10),
              child: Container(
                width: weidth * 0.82,
                height: weidth * 0.3,
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
                          width: weidth * 0.577,
                          height: weidth * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // recipe name
                              Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  width: weidth * 0.577,
                                  height: 25,
                                  child: Text(
                                    ListOfRecipeces[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: weidth * 0.0462),
                                  )),
                              // breif descraption
                              Container(
                                  width: weidth * 0.577,
                                  height: weidth * 0.12,
                                  child:
                                  Text(ListOfRecipeces[index].decraption)),
                              Row(
                                children: [
                                  Container(
                                      width: weidth * 0.466,
                                      height: weidth * 0.05,
                                      padding: EdgeInsets.only(right: 25),
                                      child: Text("time  " +
                                          ListOfRecipeces[index].time)),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: weidth * 0.231,
                          height: weidth * 0.3,
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