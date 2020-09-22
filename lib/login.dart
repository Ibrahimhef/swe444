import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Login extends StatelessWidget {
  final Function toggleView;
  final double weidth, height;

  Login(this.weidth, this.height, {this.toggleView});

  final AuthServices _authServices = AuthServices();
  static String email = '';
  static String password = '';
  String error = '';
  static final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          height: height,
          width: weidth,
          child: Stack(
            children: [
              //login background
              Positioned(
                right: 0,
                top: 0,
                child: Image(
                    width: weidth,
                    image: AssetImage('assets/Background.png'),
                    fit: BoxFit.fill),
              ),
              //Sign in form
              Positioned(
                right: 0,
                top: height / 13,
                child: Image(
                    width: weidth,
                    image: AssetImage('assets/Sign in.png'),
                    fit: BoxFit.fill),
              ),
              //Sign in with google
              Positioned(
                right: weidth / 2.9,
                top: height / 1.2,
                child: Image(
                    image: AssetImage('assets/Google button.png'),
                    fit: BoxFit.fill),
              ),
              //login header
              Positioned(
                right: 0,
                top: 0,
                child: Image(
                    width: weidth,
                    image: AssetImage('assets/Header square.png'),
                    fit: BoxFit.fill),
              ),

              // Login area
              Positioned(
                top: height * 0.643,
                left: weidth * 0.10,
                right: weidth * 0.10,
                child: Center(
                  child: InkWell(
                    onTap: () async {
                      // Navigator.push(
                      //     context,
                      //     new MaterialPageRoute(
                      //         builder: (context) => new catogory()));
                      if (_formKey.currentState.validate()) {
                        dynamic result =
                            await _authServices.SignInWithEmailAndPassword(
                                email, password);
                        if (result == null) {
                          error = "email is invalid";
                        } else {}
                      }
                    },
                    child: Image(
                      image: AssetImage('assets/Start cooking.png'),
                    ),
                  ),
                ),
              ),

              //Username and password area
              Form(
                  key: _formKey,
                  child: Positioned(
                    top: height * 0.34,
                    left: weidth * 0.29,
                    right: weidth * 0.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 88),
                          width: weidth * 0.60,
                          height: height / 17,
                          child: TextFormField(
                            onChanged: (value) => email = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter an email" : null,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) =>
                                FocusScope.of(context).nextFocus(),
                            decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.black54,
                                        width: 0.5,
                                        style: BorderStyle.none)),
                                hintText: "Email"),
                          ),
                        ),
                        Container(
                          width: weidth * 0.60,
                          height: height / 20,
                          child: TextFormField(
                            onChanged: (value) => password = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter a password" : null,
                            obscureText: true,
                            decoration: InputDecoration(
                                // border: InputBorder.none,
                                hintText: "Password"),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: height * 0.95,
                child: Container(
                  width: weidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     new MaterialPageRoute(
                          //         builder: (context) => new SignupPage()));
                          toggleView();
                        },
                        child: Text("Don't have an account? Sign up",
                            style: TextStyle(
                                fontFamily: 'OleoScript',
                                color: Colors.grey[600],
                                fontSize: weidth * 0.03)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new ForgetPage()));
                        },
                        child: Text(" Forget password?",
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
    );
  }
}
