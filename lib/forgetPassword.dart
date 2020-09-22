import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/main.dart';
import 'package:swe444/screens/authenicate/authenticate.dart';
import 'TextStyle.dart';

class ForgetPass extends StatelessWidget {
  final Function toggleView;
  final double weidth, height;
  final AuthServices _authServices = AuthServices();
  ForgetPass(this.weidth, this.height, {this.toggleView});
  static String email = '';
  static final _formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: weidth,
        child: Stack(
          children: [
            //Background
            Positioned(
              right: 0,
              top: 0,
              child: Image(
                  width: weidth,
                  image: AssetImage('assets/Background.png'),
                  fit: BoxFit.fill),
            ),
            //Reset password form
            Positioned(
              right: 0,
              top: height / 4,
              child: Image(
                  width: weidth,
                  image: AssetImage('assets/Reset Password.png'),
                  fit: BoxFit.fill),
            ),
            //Forgot password header
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
              top: height * 0.683,
              left: weidth * 0.10,
              right: weidth * 0.10,
              child: Center(
                child: InkWell(
                  onTap: () async {
                    if (_formKey2.currentState.validate()) {
                      await _authServices.ForgetPassword(email);
                      Navigator.pop(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new LoginPage()));
                    }
                  },
                  child: Image(
                    image: AssetImage('assets/Reset button.png'),
                  ),
                ),
              ),
            ),
            // text right to Arrow for submit

            //Email submit area
            Form(
              key: _formKey2,
              child: Positioned(
                top: height * 0.54,
                left: weidth * 0.23,
                right: weidth * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: weidth * 0.50,
                      height: height / 20,
                      child: TextFormField(
                        onChanged: (value) => email = value,
                        validator: (value) =>
                            value.isEmpty ? "Enter an email" : null,
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.black54,
                                    width: 0.5,
                                    style: BorderStyle.none)),
                            hintText: "Email"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
