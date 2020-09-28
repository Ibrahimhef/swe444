import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';
import 'wrapper.dart';

class Sign extends State<Signup> {
  final Function toggleView;
  final double weidth, height;
  Sign(this.weidth, this.height, {this.toggleView});

  final AuthServices _authServices = AuthServices();
  static String full_name = '';
  static String email = '';
  static String password = '';
  String error = '';
  static Text errorMessage = new Text("");
  static final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weidth,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: height * 0.85,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Form(
              key: _formKey1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontFamily: 'OleoScript', fontSize: 50),
                    ),
                  ),
                  //
                  SizedBox(height: 15),
                  //Full name
                  Container(
                    padding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
                    // padding: EdgeInsets.symmetric(horizontal: 5),
                    margin: EdgeInsets.symmetric(horizontal: weidth * 0.1),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      onChanged: (value) => full_name = value,
                      validator: (value) =>
                          value.isEmpty ? "Enter full name" : null,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Full name",
                        icon: Icon(
                          Icons.person,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: height * 0.02),
                  //Email
                  Container(
                    padding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
                    // padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(horizontal: weidth * 0.1),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      onChanged: (value) => email = value,
                      validator: (value) =>
                          value.isEmpty ? "Enter an email" : null,
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        icon: Icon(
                          Icons.email,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: height * 0.02),
                  //Password
                  Container(
                    padding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
                    // padding: EdgeInsets.symmetric(horizontal: 5),
                    margin: EdgeInsets.symmetric(horizontal: weidth * 0.1),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      onChanged: (value) => password = value,
                      validator: (value) =>
                          value.isEmpty ? "Enter a password" : null,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        icon: Icon(
                          Icons.lock_outline,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: height * 0.02),
                  //Password
                  Container(
                    padding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 5),
                    // padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(horizontal: weidth * 0.1),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffE0E0E0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Enter a password";
                        } else if (value != password) {
                          return "Check Password";
                          // ignore: unnecessary_statements
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm password",
                        icon: Icon(
                          Icons.lock_outline,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  //
                  SizedBox(height: height * 0.04),
                  //
                  RaisedButton(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.red)),
                    color: Color(0xffDD7804),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sign up',
                        style:
                            TextStyle(fontFamily: 'OleoScript', fontSize: 25),
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey1.currentState.validate()) {
                        dynamic result =
                            await _authServices.RegisterWithEmailAndPassword(
                                email, password);
                        if (result == null) {
                          error = 'Please supply a valid email';
                        } else {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new LoginPage()));
                        }
                      }
                    },
                  ),
                  //
                  SizedBox(height: height * 0.03),
                  //
                  //print errors in signUp (DEBUGING)
                  Container(
                    child: errorMessage,
                  )
                ],
              ),
            ),
          ),
          //Logo
          Positioned(
            right: weidth / 4,
            bottom: height / 1.34,
            child: Image(
                width: weidth / 2,
                image: AssetImage('assets/Saffron-logo.png'),
                fit: BoxFit.fill),
          ),
          //Signup heder
          Positioned(
            right: 0,
            top: 0,
            child: Image(
                width: weidth,
                image: AssetImage('assets/Header square.png'),
                fit: BoxFit.fill),
          ),

          // // Arrow for submit
          // Positioned(
          //   top: height * 0.82,
          //   left: weidth * 0.10,
          //   right: weidth * 0.10,
          //   child: Center(
          //     child: InkWell(
          //       onTap: () async {
          //         if (_formKey1.currentState.validate()) {
          //           // print("$email and $password");
          //           dynamic result =
          //               await _authServices.RegisterWithEmailAndPassword(
          //                   email, password);
          //           if (result == null) {
          //             error = 'please supply a valid email';
          //             setState(() {
          //               errorMessage =
          //                   Text(error, style: textStyle().style5(weidth));
          //             });
          //           } else {}
          //         }
          //       },
          //       child: Image(
          //         image: AssetImage('assets/Sign-up button.png'),
          //       ),
          //     ),
          //   ),
          // ),

          //Registration area

          // Form(
          //   key: _formKey1,
          //   child: Positioned(
          //     top: height * 0.31,
          //     left: weidth * 0.25,
          //     right: weidth * 0.15,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           margin: EdgeInsets.only(bottom: 52),
          //           width: weidth * 0.50,
          //           height: height / 20,
          //           child: TextFormField(
          //             onChanged: (value) => full_name = value,
          //             validator: (value) =>
          //                 value.isEmpty ? "fill the name" : null,
          //             textInputAction: TextInputAction.next,
          //             onFieldSubmitted: (_) =>
          //                 FocusScope.of(context).nextFocus(),
          //             decoration: InputDecoration(
          //                 border: UnderlineInputBorder(
          //                     borderSide: new BorderSide(
          //                         color: Colors.black54,
          //                         width: 0.5,
          //                         style: BorderStyle.none)),
          //                 hintText: "Full name"),
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(bottom: 50),
          //           width: weidth * 0.50,
          //           height: height / 20,
          //           child: TextFormField(
          //             onChanged: (value) => email = value,
          //             validator: (value) =>
          //                 value.isEmpty ? "Enter an email" : null,
          //             textInputAction: TextInputAction.next,
          //             onFieldSubmitted: (_) =>
          //                 FocusScope.of(context).nextFocus(),
          //             decoration: InputDecoration(
          //                 // border: InputBorder.none,
          //                 hintText: "Email"),
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(bottom: 54),
          //           width: weidth * 0.50,
          //           height: height / 20,
          //           child: TextFormField(
          //             onChanged: (value) => password = value,
          //             validator: (value) =>
          //                 value.isEmpty ? "Enter a password" : null,
          //             obscureText: true,
          //             textInputAction: TextInputAction.next,
          //             onFieldSubmitted: (_) =>
          //                 FocusScope.of(context).nextFocus(),
          //             decoration: InputDecoration(
          //                 // border: InputBorder.none,
          //                 hintText: "Password"),
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(bottom: 15),
          //           width: weidth * 0.50,
          //           height: height / 20,
          //           child: TextFormField(
          //             validator: (value) {
          //               if (value.isEmpty) {
          //                 return "Enter a password";
          //               } else if (value != password) {
          //                 return "Check Password";
          //                 // ignore: unnecessary_statements
          //               }
          //               return null;
          //             },
          //             obscureText: true,
          //             decoration: InputDecoration(
          //                 // border: InputBorder.none,
          //                 hintText: "Confirm password"),
          //           ),
          //         ),
          //         //print errors in signUp
          //         Container(
          //           child: errorMessage,
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          //Have account action
          // Positioned(
          //   top: height * 0.95,
          //   child: Container(
          //     width: weidth,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         InkWell(
          //           onTap: () {
          //             // Navigator.push(
          //             //     context,
          //             //     new MaterialPageRoute(
          //             //         builder: (context) => new LoginPage()));
          //             setState(() {
          //               errorMessage =
          //                   Text("", style: textStyle().style5(weidth));
          //             });
          //             widget.toggleView();
          //           },
          //           child: Text("Already have an account? Sign in",
          //               style: TextStyle(
          //                   fontFamily: 'OleoScript',
          //                   color: Colors.grey[600],
          //                   fontSize: weidth * 0.03)),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class Signup extends StatefulWidget {
  final Function toggleView;
  final double weidth, height;

  Signup(this.weidth, this.height, {this.toggleView});

  @override
  State<StatefulWidget> createState() {
    return Sign(weidth, height);
  }
}
