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
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: height * 0.82,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Sign in',
                        style:
                            TextStyle(fontFamily: 'OleoScript', fontSize: 50),
                      ),
                    ),
                    //
                    SizedBox(
                      height: 15,
                    ),
                    //Form inputs
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.1),
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
                    SizedBox(height: height * 0.03),
                    //
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.symmetric(horizontal: weidth * 0.1),
                      decoration: BoxDecoration(
                          color: Color(0xffE0E0E0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextFormField(
                          onChanged: (value) => password = value,
                          validator: (value) =>
                              value.isEmpty ? "Enter a password" : null,
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock_outline,
                                size: 40,
                              ),
                              border: InputBorder.none,
                              hintText: "Password")),
                    ),
                    //
                    SizedBox(height: height * 0.03),
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
                          'Start cooking',
                          style:
                              TextStyle(fontFamily: 'OleoScript', fontSize: 25),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState.validate()) {
                          dynamic result =
                              await _authServices.SignInWithEmailAndPassword(
                                  email, password);
                          if (result == null) {
                            error = "Email is invalid";
                          } else {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => new catogory()));
                          }
                        }
                      },
                    ),
                    //
                    SizedBox(height: 25),
                    //
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Text(
                          '     Or sign in with     ',
                          style: TextStyle(
                              fontFamily: 'OleoScript', color: Colors.black38),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                      decoration: BoxDecoration(
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 4,
                              offset: Offset(1, 3),
                            ),
                          ],
                          color: Color(0xffE0E0E0),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: IconButton(
                        icon: Image.asset('assets/google.png'),
                        iconSize: 35,
                        onPressed: () {},
                      ),
                    ),
                    //
                    SizedBox(height: height * 0.07),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          child: Text("Don't have an account? Sign up",
                              style: TextStyle(
                                  fontFamily: 'OleoScript',
                                  color: Colors.grey[600],
                                  fontSize: weidth * 0.04)),
                          onPressed: () {},
                        ),
                        FlatButton(
                          child: Text(" Forgot password?",
                              style: TextStyle(
                                  fontFamily: 'OleoScript',
                                  color: Colors.grey[600],
                                  fontSize: weidth * 0.04)),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Logo
            Positioned(
              right: weidth / 4,
              bottom: height / 1.31,
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
            // Login area

            // Positioned(
            //   top: height * 0.655,
            //   left: weidth * 0.10,
            //   right: weidth * 0.10,
            //   child: Center(
            //     child: InkWell(
            //       onTap: () async {
            //         // Navigator.push(
            //         //     context,
            //         //     new MaterialPageRoute(
            //         //         builder: (context) => new catogory()));
            //         if (_formKey.currentState.validate()) {
            //           dynamic result =
            //               await _authServices.SignInWithEmailAndPassword(
            //                   email, password);
            //           if (result == null) {
            //             error = "email is invalid";
            //           } else {}
            //         }
            //       },
            //       child: Image(
            //         image: AssetImage('assets/Start cooking.png'),
            //       ),
            //     ),
            //   ),
            // ),

            //Username and password area
            // Form(
            //     key: _formKey,
            //     child: Positioned(
            //       top: height * 0.34,
            //       left: weidth * 0.29,
            //       right: weidth * 0.15,
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Container(
            //             margin: EdgeInsets.only(bottom: 88),
            //             width: weidth * 0.60,
            //             height: height / 17,
            //             child: TextFormField(
            //               onChanged: (value) => email = value,
            //               validator: (value) =>
            //                   value.isEmpty ? "Enter an email" : null,
            //               textInputAction: TextInputAction.next,
            //               onFieldSubmitted: (_) =>
            //                   FocusScope.of(context).nextFocus(),
            //               decoration: InputDecoration(
            //                   border: UnderlineInputBorder(
            //                       borderSide: new BorderSide(
            //                           color: Colors.black54,
            //                           width: 0.5,
            //                           style: BorderStyle.none)),
            //                   hintText: "Email"),
            //             ),
            //           ),
            //           Container(
            //             width: weidth * 0.60,
            //             height: height / 20,
            //             child: TextFormField(
            //               onChanged: (value) => password = value,
            //               validator: (value) =>
            //                   value.isEmpty ? "Enter a password" : null,
            //               obscureText: true,
            //               decoration: InputDecoration(
            //                   // border: InputBorder.none,
            //                   hintText: "Password"),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     ),
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
            //             //         builder: (context) => new SignupPage()));
            //             toggleView();
            //           },
            //           child: Text("Don't have an account? Sign up",
            //               style: TextStyle(
            //                   fontFamily: 'OleoScript',
            //                   color: Colors.grey[600],
            //                   fontSize: weidth * 0.03)),
            //         ),
            //         InkWell(
            //           onTap: () {
            //             Navigator.push(
            //                 context,
            //                 new MaterialPageRoute(
            //                     builder: (context) => new ForgetPage()));
            //           },
            //           child: Text(" Forget password?",
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
      ),
    );
  }
}
