import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/main.dart';
import 'TextStyle.dart';

class Singup extends StatelessWidget {
  final double weidth, height;

  Singup(this.weidth, this.height);
  final AuthServices _authServices = AuthServices();
  String full_name = '';
  String email = '';
  String password = '';
  String error = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //Singup heder
            Positioned(
              right: 0,
              top: -7,
              child: Image(
                  width: weidth + 25,
                  height: height / 2,
                  image: AssetImage('assets/singupHeder@3x.png'),
                  fit: BoxFit.fill),
            ),
            // Arrow for submit
            Positioned(
              top: height * 0.798,
              left: weidth * 0.10,
              right: weidth * 0.10,
              child: Center(
                child: InkWell(
                  onTap: () async {
                    if (_formKey.currentState.validate()) {
                      // print("$email and $password");
                      dynamic result =
                          await _authServices.RegisterWithEmailAndPassword(
                              email, password);
                      if (result == null) {
                        // setState(() => error = 'please supply a valid email');
                        print(error);
                      } else {}
                    }
                  },
                  child: Image(
                    width: weidth * 0.4,
                    height: height * 0.05,
                    image: AssetImage('assets/singup.png'),
                  ),
                ),
              ),
            ),

            //Registration area
            Form(
              key: _formKey,
              child: Positioned(
                top: height * 0.55,
                left: weidth * 0.15,
                right: weidth * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: weidth * 0.75,
                      height: height / 20,
                      child: TextFormField(
                        onChanged: (value) => full_name = value,
                        validator: (value) =>
                            value.isEmpty ? "fill the name" : null,
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
                            hintText: "Full name"),
                      ),
                    ),
                    Container(
                      width: weidth * 0.75,
                      height: height / 20,
                      child: TextFormField(
                        onChanged: (value) => email = value,
                        validator: (value) =>
                            value.isEmpty ? "Enter an email" : null,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.mail_outline,
                              color: Colors.black54,
                            ),
                            // border: InputBorder.none,
                            hintText: "Email"),
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
                            hintText: "Password"),
                      ),
                    ),
                    Container(
                      width: weidth * 0.75,
                      height: height / 20,
                      child: TextFormField(
                        validator: (value) =>
                            value == password ? "Check the password" : null,
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black54,
                            ),
                            // border: InputBorder.none,
                            hintText: "Confirm password"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //Have account action
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
                                builder: (context) => new LoginPage()));
                      },
                      child: Text("Have account?",
                          style: textStyle().style1(weidth)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
