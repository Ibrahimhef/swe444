import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget{
  final double weidth, height;

  AddPage(this.weidth, this.height);
  @override
  State<StatefulWidget> createState() {
    return addPage(weidth,height);
  }
}


class addPage extends State<AddPage> {
  final double weidth, height;
  int _index=0;
  addPage(this.weidth, this.height);
  @override
  Widget build(BuildContext context) {
    List cat = ["Juice", "Appetizers", "Main Dishes", "Salads", "Soup", "Sweets"];
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
                    width: weidth+20,
                    height: height / 3.5,
                    image: AssetImage('assets/AddHead@3x.png'),
                    fit: BoxFit.fill),
              ),
              Positioned(
                top: height/4.4,
                child: Container(
                  width: weidth,
                  height: height/1.5,
                  child: FittedBox(
                    child: Material(
                      color: Colors.white,
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(25.0),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: weidth+30,
                            height: height ,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 8, bottom:3),
                                  width: (weidth * 0.85),
                                  height: height * 0.3,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    onTap: (){},
                                    child: Image(
                                      //image Path
                                      image: AssetImage('assets/AddPic@3x.png'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3 , bottom: 3, left: 16 , right: 16),
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
                                  padding: const EdgeInsets.only(top:3 , bottom: 3, left: 16 , right: 16),
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
                                  padding: const EdgeInsets.only(top:3 , bottom: 3, left: 16 , right: 16),
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
                                  padding: const EdgeInsets.only(top:3 , bottom: 8, left: 16 , right: 16),
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
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Wrap(
                                    alignment: WrapAlignment.spaceEvenly,
                                    children: [
                                      Container(margin: EdgeInsets.all(5),child: chip(cat[0],"assets/Juice_icon@3x.png",0)),
                                      Container(margin: EdgeInsets.all(5),child: chip(cat[1],"assets/Appetizers_icon@3x.png",1)),
                                      Container(margin: EdgeInsets.all(5),child: chip(cat[2],"assets/Main Dishes_icon@3x.png",2)),
                                      Container(margin: EdgeInsets.all(5),child:  chip(cat[3], "assets/Salads_icon@3x.png",3)),
                                      Container(margin: EdgeInsets.all(5),child:  chip(cat[4],"assets/Soup_icon@3x.png",4)),
                                      Container(margin: EdgeInsets.all(5),child: chip(cat[5],"assets/Sweets _icon@3x.png",5)),
                                    ],
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
  Widget chip(String label, String path,int selectedIndex) {
    bool selected=false;
    return ChoiceChip(
      labelPadding: EdgeInsets.all(5.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child: Image(image: AssetImage(path)),
      ),
      label: Text(
        label,
        style: TextStyle(
            color: Colors.black,
            fontSize: 15
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(6.0),
      selected: _index == selectedIndex,
      onSelected: (bool IsSelected) {
        setState(() {
          _index = IsSelected ? selectedIndex : null;
          print(_index);
        });
      },
      selectedColor: Color.fromRGBO(242, 201, 54, 1),
    );
  }
}

