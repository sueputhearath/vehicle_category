import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shop_app/loginscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 2);
    return new Timer(duration, route);
  }

  // route() {
  //   UserSharedPreference().getDemoScreen().then((value) => {
  //     if (value == "TRUE")
  //       {
  //         Navigator.pushReplacement(
  //             context, MaterialPageRoute(builder: (context) => App()))
  //       }
  //     else
  //       {
  //         Navigator.pushReplacement(context,
  //             MaterialPageRoute(builder: (context) => Introscreen()))
  //       }
  //   });
  // }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,

        body: Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.jpg"), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/logins.png",
                    fit: BoxFit.cover,
                    height: 200,
                    width: 200,
                  )),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              const Text(
                "ECOMMERCE APP",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFECB52E)),
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              const CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
