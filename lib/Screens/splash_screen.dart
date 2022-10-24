import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../bottom_navigationbar.dart';
import 'choose_langauges.dart';
import 'gearstyleprogressbar.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
    route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChooseLangauge()));
  }
  @override
  initScreen(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/vihicals/image 9.png')
                    ],
                  ),
                ),
              ),
              Expanded(
               flex: 2,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 200,
                     width: 200,
                     child: GearStyleProgressbar(),
                   ),
                   const Text('Welcome to Vehical Care Applications',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                 ],
               ),
                  ),

            ],
          )
        ],
      ),
    );
  }


}
