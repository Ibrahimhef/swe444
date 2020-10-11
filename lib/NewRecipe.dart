import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:swe444/Services/auth.dart';
import 'package:path/path.dart' as Path;
import 'package:swe444/Services/database.dart';
import 'package:swe444/models/profile.dart';
import 'package:swe444/models/user.dart';

class AddPage extends StatefulWidget {
  final double weidth, height;
  final User user;
  AddPage(this.weidth, this.height, this.user);
  @override
  State<StatefulWidget> createState() {
    return addPage(weidth, height, user);
  }
}

class addPage extends State<AddPage> {
  final AuthServices _auth = AuthServices();
  final User user;
  static final _formKey2 = GlobalKey<FormState>();
  File _image;
  static String uploadedFileURL;
  static int category;
  static String title;
  static String description;
  static String ingredients;
  static String step;
  static int duration;
  static String email;
  Future chooseFile() async {
    await ImagePicker.pickImage(source: ImageSource.gallery).then((image) {
      setState(() {
        _image = image;
      });
    });
  }

  Future uploadFile() async {
    StorageReference storageReference = FirebaseStorage.instance
        .ref()
        .child('recipes/${Path.basename(_image.path)}}');
    StorageUploadTask uploadTask = storageReference.putFile(_image);
    await uploadTask.onComplete;
    print('File Uploaded');
    storageReference.getDownloadURL().then((fileURL) {
      setState(() {
        uploadedFileURL = fileURL;
        // return fileURL;
        print(uploadedFileURL);
      });
    });
  }

  final double weidth, height;
  int _index = 0;
  addPage(this.weidth, this.height, this.user);
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
              Form(
                key: _formKey2,
                child: Positioned(
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
                                      onTap: chooseFile,
                                      child: Image(
                                        //image Path
                                        image: _image != null
                                            ? AssetImage(_image.path)
                                            : AssetImage(
                                                'assets/AddPic@3x.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3,
                                              bottom: 3,
                                              left: 16,
                                              right: 16),
                                          child: TextFormField(
                                            onChanged: (value) => title = value,
                                            validator: (value) => value.isEmpty
                                                ? "fill the title"
                                                : null,
                                            decoration: InputDecoration(
                                              hintText: "Enter Recipe title",
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
                                              top: 3,
                                              bottom: 3,
                                              left: 16,
                                              right: 16),
                                          child: TextFormField(
                                            onChanged: (value) =>
                                                description = value,
                                            validator: (value) => value.isEmpty
                                                ? "fill the description"
                                                : null,
                                            maxLines: 1,
                                            decoration: InputDecoration(
                                              hintText:
                                                  "Enter Recipe Description",
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
                                              top: 3,
                                              bottom: 3,
                                              left: 16,
                                              right: 16),
                                          child: TextFormField(
                                            onChanged: (value) =>
                                                ingredients = value,
                                            validator: (value) => value.isEmpty
                                                ? "fill the ingredients"
                                                : null,
                                            maxLines: 1,
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
                                              top: 3,
                                              bottom: 8,
                                              left: 16,
                                              right: 16),
                                          child: TextFormField(
                                            onChanged: (value) => step = value,
                                            validator: (value) => value.isEmpty
                                                ? "fill the steps"
                                                : null,
                                            maxLines: 1,
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
                                          padding: const EdgeInsets.only(
                                              top: 3,
                                              bottom: 8,
                                              left: 16,
                                              right: 16),
                                          child: TextFormField(
                                            onChanged: (value) =>
                                                duration = int.parse(value),
                                            validator: (value) => value.isEmpty
                                                ? "fill the duration"
                                                : null,
                                            // maxLines: 1,
                                            decoration: InputDecoration(
                                              hintText: "Enter recipe duration",
                                              border: UnderlineInputBorder(
                                                  borderSide: new BorderSide(
                                                      color: Colors.black54,
                                                      width: 0.5,
                                                      style: BorderStyle.none)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      alignment: WrapAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            child: chip(cat[0],
                                                "assets/Juice_icon@3x.png", 0)),
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            child: chip(
                                                cat[1],
                                                "assets/Appetizers_icon@3x.png",
                                                1)),
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            child: chip(
                                                cat[2],
                                                "assets/Main Dishes_icon@3x.png",
                                                2)),
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            child: chip(
                                                cat[3],
                                                "assets/Salads_icon@3x.png",
                                                3)),
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            child: chip(cat[4],
                                                "assets/Soup_icon@3x.png", 4)),
                                        Container(
                                            margin: EdgeInsets.all(5),
                                            child: chip(
                                                cat[5],
                                                "assets/Sweets_icon@3x.png",
                                                5)),
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
                      onPressed: () async {
                        if (_formKey2.currentState.validate() &&
                            _image != null) {
                          final user = Provider.of<User>(context);
                          Stream<List<profile1>> users =
                              await DatabaseService(uid: user.uid).users;
                          String email;
                          users.listen((event) {
                            print("length of data: ${event.length}");
                            event.forEach((element) {
                              if (element.uid == user.uid) {
                                email = element.email;
                                print("email email : $email");
                              }
                            });
                          });
                          // return fileURL;

                          uploadFile().whenComplete(() => {
                                DatabaseService(uid: user.uid).insertMeals(
                                    category,
                                    title,
                                    description,
                                    ingredients,
                                    step,
                                    duration,
                                    email,
                                    uploadedFileURL)
                              });
                          // uploadFile();

                          print(user.uid);
                          //   DatabaseService(uid: user.uid).insertMeals(
                          //       category,
                          //       title,
                          //       description,
                          //       ingredients,
                          //       step,
                          //       duration,
                          //       user.email,
                          //       uploadedFileURL);
                          // }
                        }
                      },
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

  Widget chip(String label, String path, int selectedIndex) {
    bool selected = false;
    return ChoiceChip(
      labelPadding: EdgeInsets.all(5.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child: Image(image: AssetImage(path)),
      ),
      label: Text(
        label,
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      backgroundColor: Colors.grey.shade300,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(6.0),
      selected: _index == selectedIndex,
      onSelected: (bool IsSelected) {
        setState(() {
          _index = IsSelected ? selectedIndex : null;
          category = _index;
          print(category);
        });
      },
      selectedColor: Color.fromRGBO(242, 201, 54, 1),
    );
  }
}
