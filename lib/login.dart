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
              //login header
              Positioned(
                right: 0,
                top: -7,
                child: Image(
                    width: weidth + 25,
                    height: height / 2.5,
                    image: AssetImage('assets/headOfLoginPage@3x.png'),
                    fit: BoxFit.fill),
              ),
              // Login area
              Positioned(
                top: height * 0.687,
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
                            await _authServices.SingInWithEmailAndPassword(
                                email, password);
                        if (result == null) {
                          error = "email is invalid";
                        } else {}
                      }
                    },
                    child: Image(
                      width: weidth * 0.4,
                      height: height * 0.05,
                      image: AssetImage('assets/singin.png'),
                    ),
                  ),
                ),
              ),

              //Username and password area
              Form(
                  key: _formKey,
                  child: Positioned(
                    top: height * 0.54,
                    left: weidth * 0.15,
                    right: weidth * 0.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          width: weidth * 0.75,
                          height: height / 20,
                          child: TextFormField(
                            onChanged: (value) => email = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter an email" : null,
                            textInputAction: TextInputAction.next,
                            onFieldSubmitted: (_) =>
                                FocusScope.of(context).nextFocus(),
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.perm_identity,
                                  color: Colors.black54,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.black54,
                                        width: 0.5,
                                        style: BorderStyle.none)),
                                hintText: "email"),
                          ),
                        ),
                        Container(
                          width: weidth * 0.75,
                          height: height / 20,
                          child: TextFormField(
                            onChanged: (value) => password = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter a password" : null,
                            obscureText: true,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.black54,
                                ),
                                // border: InputBorder.none,
                                hintText: "password"),
                          ),
                        )
                      ],
                    ),
                  )),
              Positioned(
                top: height * 0.9,
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
                          //         builder: (context) => new SingupPage()));
                          toggleView();
                        },
                        child:
                            Text("Sign-up", style: textStyle().style1(weidth)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new ForgetPage()));
                        },
                        child: Text(" Forget password?",
                            style: textStyle().style1(weidth)),
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
