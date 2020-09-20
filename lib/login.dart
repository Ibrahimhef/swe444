import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Login extends StatelessWidget {
  final double weidth, height;

  Login(this.weidth, this.height);

  final AuthServices _authServices = AuthServices();
  String email = '';
  String password = '';
  String error = '';
  var email1 = TextEditingController(), password1 = TextEditingController();
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
                        print("${email} and ${password}");
                        print("${email1.text} (and) ${password1.text}");
                        dynamic result =
                            await _authServices.SingInWithEmailAndPassword(
                                email1.text, password1.text);
                        if (result == null) {
                          print(error);
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
                            controller: email1,
                            validator: (value) =>
                                value.isEmpty ? "Enter an email" : null,
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
                            controller: password1,
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
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new SingupPage()));
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
