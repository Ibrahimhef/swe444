import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swe444/Services/auth.dart';
import 'package:swe444/models/user.dart';
import 'package:swe444/wrapper.dart';
import 'login.dart';
import 'signup.dart';
import 'forgetPassword.dart';
import 'catogory.dart';
import 'apptizersPage.dart';
import 'saladsPage.dart';
import 'soupPage.dart';
import 'sweetsPage.dart';
import 'mainDishesPage.dart';
import 'JuisePage.dart';
import 'TextStyle.dart';
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
    return StreamProvider<User>.value(
      value: AuthServices().user,
      child: MaterialApp(
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          backgroundColor: Color.fromRGBO(242, 201, 54, 1),
          duration: 1500,
          splashIconSize: 380,
          splash: Image(
            image: AssetImage('assets/Saffron-logo.png'),
          ),
          nextScreen: Wrapper(),
        ),
      ),
    );
  }
}

//Sign in page------------------------------------
class LoginPage extends StatelessWidget {
  final Function toggleView;

  LoginPage({this.toggleView});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return SafeArea(
      bottom: true,
      top: true,
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xfff2cb05), Color(0xfff2b705)])),
          child: Login(
            weidth,
            height,
            toggleView: toggleView,
          ),
        ),
      ),
    );
  }
}

//Sign up page------------------------------------
class SignupPage extends StatelessWidget {
  final Function toggleView;

  SignupPage({this.toggleView});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        backgroundColor: Colors.transparent,
        body: Container(
          child: Signup(
            weidth,
            height,
            toggleView: toggleView,
          ),
        ));
  }
}

//Frogot password page----------------------------
class ForgetPage extends StatelessWidget {
  final Function toggleView;

  ForgetPage({this.toggleView});
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
    return Catogory(weidth, height);
  }
}

class apptizers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: setAppBar(weidth, "Appetizers"),
        body: Appatizers(weidth, height));
  }
}

class salads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: setAppBar(weidth, "Salads"),
        body: Salads(weidth, height));
  }
}

class soup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: setAppBar(weidth, "Soup"),
        body: Soup(weidth, height));
  }
}

class sweets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: setAppBar(weidth, "Sweets"),
        body: Sweets(weidth, height));
  }
}

class jusis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: setAppBar(weidth, "Juice"),
        body: Jusis(weidth, height));
  }
}

class MainDishes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final weidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: setAppBar(weidth, "Main Dishes"),
        body: mainDishes(weidth, height));
  }
}

Widget setAppBar(double weidth, String name) {
  return AppBar(
      backgroundColor: Color.fromRGBO(115, 32, 2, 1),
      title: Text(name, style: textStyle().style4(weidth)));
}
