import 'package:swe444/SubCategories.dart';

import 'package:flutter/material.dart';

class ListInfo extends StatefulWidget {
  final List<recipe> ListOfRecipeces;

  const ListInfo(this.ListOfRecipeces);

  @override
  State<StatefulWidget> createState() {
    return listInfo(ListOfRecipeces);
  }
}

class listInfo extends State<ListInfo> {
  final List<recipe> ListOfRecipeces;

  listInfo(this.ListOfRecipeces);

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
                width: 350,
                height: 125,
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
                          width: 250,
                          height: 125,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // recipe name
                              Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  width: 250,
                                  height: 25,
                                  child: Text(
                                    ListOfRecipeces[index].name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )),
                              // breif descraption
                              Container(
                                  width: 250,
                                  height: 50,
                                  child:
                                      Text(ListOfRecipeces[index].decraption)),
                              Row(
                                children: [
                                  Container(
                                      width: 200,
                                      height: 20,
                                      padding: EdgeInsets.only(right: 25),
                                      child: Text("time  " +
                                          ListOfRecipeces[index].time)),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 125,
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
