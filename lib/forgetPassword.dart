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
    return SingleChildScrollView(
      child: Container(
        height: height,
        width: weidth,
        child: Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * 0.45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Form(
                    key: _formKey2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Reset Password',
                            style: TextStyle(
                                fontFamily: 'OleoScript', fontSize: 50),
                          ),
                        ),
                        //
                        SizedBox(height: 15),
                        //Form inputs
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, left: 5, right: 5, bottom: 5),
                          // padding: EdgeInsets.symmetric(horizontal: 5),
                          margin:
                              EdgeInsets.symmetric(horizontal: weidth * 0.1),
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xffE0E0E0),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: TextFormField(
                            onChanged: (value) => email = value,
                            validator: (value) =>
                                value.isEmpty ? "Enter an email" : null,
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
                        //Button
                        RaisedButton(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.red)),
                          color: Color(0xffDD7804),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                            child: Text(
                              'Reset',
                              style: TextStyle(
                                  fontFamily: 'OleoScript', fontSize: 25),
                            ),
                          ),
                          onPressed: () async {
                            if (_formKey2.currentState.validate()) {
                              await _authServices.ForgetPassword(email);
                              Navigator.pop(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => new LoginPage()));
                            }
                          },
                        ),
                        //
                        SizedBox(height: height * 0.07),
                        //
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //Logo form
            Positioned(
              right: weidth / 4,
              bottom: height / 2.9,
              child: Image(
                  width: weidth / 2,
                  image: AssetImage('assets/Saffron-logo.png'),
                  fit: BoxFit.fill),
            ),
            //header
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
            //   top: height * 0.683,
            //   left: weidth * 0.10,
            //   right: weidth * 0.10,
            //   child: Center(
            //     child: InkWell(
            //       onTap: () async {
            //         if (_formKey2.currentState.validate()) {
            //           await _authServices.ForgetPassword(email);
            //           Navigator.pop(
            //               context,
            //               new MaterialPageRoute(
            //                   builder: (context) => new LoginPage()));
            //         }
            //       },
            //       child: Image(
            //         image: AssetImage('assets/Reset button.png'),
            //       ),
            //     ),
            //   ),
            // ),
            // text right to Arrow for submit

            //Email submit area
            // Form(
            //   key: _formKey2,
            //   child: Positioned(
            //     top: height * 0.54,
            //     left: weidth * 0.23,
            //     right: weidth * 0.15,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Container(
            //           width: weidth * 0.50,
            //           height: height / 20,
            //           child: TextFormField(
            //             onChanged: (value) => email = value,
            //             validator: (value) =>
            //                 value.isEmpty ? "Enter an email" : null,
            //             decoration: InputDecoration(
            //                 border: UnderlineInputBorder(
            //                     borderSide: new BorderSide(
            //                         color: Colors.black54,
            //                         width: 0.5,
            //                         style: BorderStyle.none)),
            //                 hintText: "Email"),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
