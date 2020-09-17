import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'singup.dart';
import 'forgetPassword.dart';
import 'catogory.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  // runApp(DevicePreview(builder:(context) => MyHomePage()));
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

class MyApp extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splashTransition: SplashTransition.rotationTransition,
          duration: 3000,
          splashIconSize: 280,
          splash: Image(
            image: AssetImage('assets/welcome.png'),
          ),
          nextScreen: LoginPage(),
        ));
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.white, body: Login(weidth, height));
  }
}

class SingupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white, body: Singup(weidth, height));
  }
}

class ForgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white, body: ForgetPass(weidth, height));
  }
}

class catogory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white, body: Catogory(weidth, height));
  }
}
