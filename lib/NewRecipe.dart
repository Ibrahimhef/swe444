import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  final double weidth, height;

  AddPage(this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    return addPage(weidth, height);
  }
}

class addPage extends State<AddPage> {
  final double weidth, height;

  addPage(this.weidth, this.height);

  @override
  Widget build(BuildContext context) {
    List cat = [
      "Juice",
      "Appetizers",
      "Main Dishes",
      "Salads",
      "Soup",
      "Sweets"
    ];
    List path = [
      "assets/Juice_icon@3x.png",
      "assets/Appetizers_icon@3x.png",
      "assets/Main Dishes_icon@3x.png",
      "assets/Salads_icon@3x.png",
      "assets/Soup_icon@3x.png",
      "assets/Sweets _icon@3x.png"
    ];

    int _defaultChoiceIndex = 0;

    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          height: height,
          width: weidth,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                top: -7,
                child: Image(
                    width: weidth + 20,
                    height: height / 3.5,
                    image: AssetImage('assets/AddHead@3x.png'),
                    fit: BoxFit.fill),
              ),
              Positioned(
                top: height / 4.4,
                child: Container(
                  width: weidth,
                  height: height / 1.5,
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: weidth + 30,
                            height: height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 3),
                                  width: (weidth * 0.85),
                                  height: height * 0.3,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: () {},
                                    child: Image(
                                      //image Path
                                      image: AssetImage('assets/AddPic@3x.png'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3, bottom: 3, left: 16, right: 16),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Recipe Name",
                                      border: UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.black54,
                                              width: 0.5,
                                              style: BorderStyle.none)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3, bottom: 3, left: 16, right: 16),
                                  child: TextFormField(
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      hintText: "Enter Recipe Description",
                                      border: UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.black54,
                                              width: 0.5,
                                              style: BorderStyle.none)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3, bottom: 3, left: 16, right: 16),
                                  child: TextFormField(
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      hintText: "Enter Ingredients",
                                      border: UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.black54,
                                              width: 0.5,
                                              style: BorderStyle.none)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3, bottom: 8, left: 16, right: 16),
                                  child: TextFormField(
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      hintText: "Enter Steps",
                                      border: UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.black54,
                                              width: 0.5,
                                              style: BorderStyle.none)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: cat.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ChoiceChip(
                                        labelPadding: EdgeInsets.all(5.0),
                                        avatar: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              image: AssetImage(path[index])),
                                        ),
                                        label: Text(
                                          cat[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                        backgroundColor: Colors.grey.shade300,
                                        elevation: 6.0,
                                        shadowColor: Colors.grey[60],
                                        padding: EdgeInsets.all(6.0),
                                        selectedColor:
                                            Color.fromRGBO(242, 201, 54, 1),
                                        selected: _defaultChoiceIndex == index,
                                        onSelected: (bool selected) {
                                          setState(() {
                                            _defaultChoiceIndex = selected ? index : null;
                                            print(_defaultChoiceIndex);
                                          });
                                        },
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.89,
                right: 15,
                left: 15,
                child: Container(
                  alignment: Alignment.center,
                  width: weidth * 0.5,
                  child: FlatButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/AddButton@3x.png'),
                        width: weidth * 0.4,
                        height: weidth * 0.2,
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
