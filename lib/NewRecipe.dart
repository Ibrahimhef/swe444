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

  initState() {
    category = 0;
  }

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
        final user = Provider.of<User>(context);
        Stream<List<profile1>> users = DatabaseService(uid: user.uid).users;
        // String email;
        users.listen((event) {
          // print("length of data: ${event.length}");
          event.forEach((element) {
            if (element.uid == user.uid) {
              email = element.email;
              print("email: ${element.email}");
              DatabaseService(uid: user.uid).insertMeals(
                  category,
                  title,
                  description,
                  ingredients,
                  step,
                  duration,
                  element.email,
                  fileURL);
              // print("email email : $email");
            }
          });
        });

        // return fileURL;
        print(uploadedFileURL);
      });
    });
  }

  final double weidth, height;
  static int index = 0;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff2780c),
        title: Text(
          'Add Recipe',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'OleoScript',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Color(0xffF5F5F5),
          height: height * 1.75,
          width: weidth,
          child: Stack(
            children: [
              Form(
                key: _formKey2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Img
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffE1E1E1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: EdgeInsets.only(bottom: 5),
                      width: sizeW(weidth, 0.875),
                      height: height * 0.25,
                      child: InkWell(
                        onTap: chooseFile,
                        child: Image(
                          //image Path
                          image: _image != null
                              ? AssetImage("${_image.path}")
                              : AssetImage('assets/Upload_pic.png'),
                        ),
                      ),
                    ),
                    // name
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 7, right: 7, bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.03),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        onChanged: (value) => title = value,
                        validator: (value) =>
                            value.isEmpty ? "fill the Name of Recipe" : null,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                        decoration: InputDecoration(
                          hintText: "Name:",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //Duration
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 7, right: 7, bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.03),
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        onChanged: (value) => duration = int.parse(value),
                        validator: (value) =>
                            value.isEmpty ? "fill the duration" : null,
                        // maxLines: 1,
                        decoration: InputDecoration(
                          hintText: "Est. cooking time:",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //Ingredients
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 7, right: 7, bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.03),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E0E0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        onChanged: (value) => ingredients = value,
                        validator: (value) =>
                            value.isEmpty ? "fill the ingredients" : null,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                        maxLines: (height * 0.008).ceilToDouble().toInt(),
                        decoration: InputDecoration(
                          hintText: "Ingredients:",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //Description
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 7, right: 7, bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.03),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E0E0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        onChanged: (value) => description = value,
                        validator: (value) =>
                            value.isEmpty ? "fill the description" : null,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                        maxLines: (height * 0.008).ceilToDouble().toInt(),
                        decoration: InputDecoration(
                          hintText: "Description:",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //Steps
                    Container(
                      padding: EdgeInsets.only(
                          top: 10, left: 7, right: 7, bottom: 5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.03),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE0E0E0),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        onChanged: (value) => step = value,
                        validator: (value) =>
                            value.isEmpty ? "fill the steps" : null,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) =>
                            FocusScope.of(context).nextFocus(),
                        maxLines: (height * 0.008).ceilToDouble().toInt(),
                        decoration: InputDecoration(
                          hintText: "Steps:",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    //Choose category divider
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Text(
                          '     Choose category     ',
                          style: TextStyle(
                              fontFamily: 'OleoScript',
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    //Category selection
                    Wrap(
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          child: chip(cat[0], "assets/Juice_icon@3x.png", 0),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          child:
                              chip(cat[1], "assets/Appetizers_icon@3x.png", 1),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          child:
                              chip(cat[2], "assets/Main Dishes_icon@3x.png", 2),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          child: chip(cat[3], "assets/Salads_icon@3x.png", 3),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          child: chip(cat[4], "assets/Soup_icon@3x.png", 4),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          child: chip(cat[5], "assets/Sweets_icon@3x.png", 5),
                        ),
                      ],
                    ),
                    //Save button
                    RaisedButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.red)),
                      color: Color(0xffDD7804),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8.0, left: 20, right: 20),
                        child: Text(
                          'Save',
                          style:
                              TextStyle(fontFamily: 'OleoScript', fontSize: 25),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey2.currentState.validate() &&
                            _image != null) {
                          // return fileURL;
                          uploadFile();
                          // uploadFile().then((value) =>
                          //     DatabaseService(uid: user.uid).insertMeals(
                          //         category,
                          //         title,
                          //         description,
                          //         ingredients,
                          //         step,
                          //         duration,
                          //         email,
                          //         uploadedFileURL));
                          // uploadFile().whenComplete(() => {
                          //       DatabaseService(uid: user.uid).insertMeals(
                          //           category,
                          //           title,
                          //           description,
                          //           ingredients,
                          //           step,
                          //           duration,
                          //           email,
                          //           uploadedFileURL)
                          //     });
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
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   top: height * 0.9,
              //   right: 15,
              //   left: 15,
              //   child: Container(
              //     alignment: Alignment.center,
              //     width: sizeW(weidth, 0.5),
              //     child: FlatButton(
              //       highlightColor: Colors.transparent,
              //       splashColor: Colors.transparent,
              //       onPressed: () async {
              //         if (_formKey2.currentState.validate() && _image != null) {
              //           // return fileURL;
              //           uploadFile();
              //           // uploadFile().then((value) =>
              //           //     DatabaseService(uid: user.uid).insertMeals(
              //           //         category,
              //           //         title,
              //           //         description,
              //           //         ingredients,
              //           //         step,
              //           //         duration,
              //           //         email,
              //           //         uploadedFileURL));
              //           // uploadFile().whenComplete(() => {
              //           //       DatabaseService(uid: user.uid).insertMeals(
              //           //           category,
              //           //           title,
              //           //           description,
              //           //           ingredients,
              //           //           step,
              //           //           duration,
              //           //           email,
              //           //           uploadedFileURL)
              //           //     });
              //           // uploadFile();

              //           print(user.uid);
              //           //   DatabaseService(uid: user.uid).insertMeals(
              //           //       category,
              //           //       title,
              //           //       description,
              //           //       ingredients,
              //           //       step,
              //           //       duration,
              //           //       user.email,
              //           //       uploadedFileURL);
              //           // }
              //         }
              //       },
              //       child: Image(
              //         image: AssetImage('assets/AddButton@3x.png'),
              //         width: weidth * 0.4,
              //         height: weidth * 0.2,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
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
      selected: index == selectedIndex,
      onSelected: (bool IsSelected) {
        setState(() {
          index = IsSelected ? selectedIndex : null;
          category = index;
          print(category);
        });
      },
      selectedColor: Color.fromRGBO(242, 201, 54, 1),
    );
  }

  double sizeW(double weidth, double ratio) {
    if (weidth <= 375) {
      return 354 * ratio;
    } else if (weidth > 375 && weidth <= 480) {
      return 436 * ratio;
    } else if (weidth > 480 && weidth < 800) {
      return 784 * ratio;
    } else
      return 900 * ratio;
  }

  double sizeh(double height) {
    if (height <= 569) {
      return 582 * 0.18;
    } else if (height > 569 && height <= 812) {
      return 740 * 0.18;
    } else if (height > 812 && height < 896) {
      return 882 * 0.19;
    } else if (height > 896 && height <= 1024) {
      return 992 * 0.19;
    } else
      return 1100 * 0.19;
  }
}
