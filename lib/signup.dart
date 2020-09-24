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
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: height,
            width: weidth,
            child: Stack(
              children: [
                //Signup background
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image(
                      width: weidth,
                      image: AssetImage('assets/Background.png'),
                      fit: BoxFit.fill),
                ),
                //Signup form
                Positioned(
                  right: 0,
                  top: height / 30,
                  child: Image(
                      width: weidth,
                      image: AssetImage('assets/Sign up.png'),
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
                // Arrow for submit
                Positioned(
                  top: height * 0.82,
                  left: weidth * 0.10,
                  right: weidth * 0.10,
                  child: Center(
                    child: InkWell(
                      onTap: () async {
                        if (_formKey1.currentState.validate()) {
                          // print("$email and $password");
                          dynamic result =
                              await _authServices.RegisterWithEmailAndPassword(
                                  email, password);
                          if (result == null) {
                            error = 'please supply a valid email';
                            setState(() {
                              errorMessage = Text(error,
                                  style: textStyle().style5(weidth));
                            });
                          } else {}
                        }
                      },
                      child: Image(
                        image: AssetImage('assets/Sign-up button.png'),
                      ),
                    ),
                  ),
                ),

                //Registration area

                Form(
                  key: _formKey1,
                  child: Positioned(
                    top: height * 0.31,
                    left: weidth * 0.25,
                    right: weidth * 0.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 52),
                          width: weidth * 0.50,
                          height: height / 20,
                          child: TextFormField(
                            onChanged: (value) => full_name = value,
                            validator: (value) =>
                                value.isEmpty ? "fill the name" : null,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) =>
                                FocusScope.of(context).nextFocus(),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.black54,
                                        width: 0.5,
                                        style: BorderStyle.none)),
                                hintText: "Full name"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50),
                          width: weidth * 0.50,
                          height: height / 20,
                          child: TextFormField(
                            onChanged: (value) => email = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter an email" : null,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) =>
                                FocusScope.of(context).nextFocus(),
                            decoration: InputDecoration(
                                // border: InputBorder.none,
                                hintText: "Email"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 54),
                          width: weidth * 0.50,
                          height: height / 20,
                          child: TextFormField(
                            onChanged: (value) => password = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter a password" : null,
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) =>
                                FocusScope.of(context).nextFocus(),
                            decoration: InputDecoration(
                                // border: InputBorder.none,
                                hintText: "Password"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 15),
                          width: weidth * 0.50,
                          height: height / 20,
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
                                // border: InputBorder.none,
                                hintText: "Confirm password"),
                          ),
                        ),
                        //print errors in signUp
                        Container(
                          child: errorMessage,
                        )
                      ],
                    ),
                  ),
                ),
                //Have account action
                Positioned(
                  top: height * 0.95,
                  child: Container(
                    width: weidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              errorMessage =
                                  Text("", style: textStyle().style5(weidth));
                            });
                            widget.toggleView();
                          },
                          child: Text("Already have an account? Sign in",
                              style: TextStyle(
                                  fontFamily: 'OleoScript',
                                  color: Colors.grey[600],
                                  fontSize: weidth * 0.03)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
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
