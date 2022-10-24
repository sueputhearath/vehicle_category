import 'package:flutter/material.dart';

import 'onboading2.dart';
class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.only(bottom: 130,left: 70,right: 70),
      //   child: ElevatedButton(
      //     onPressed: () {
      //       //Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoarding1()));
      //     },
      //     style: ElevatedButton.styleFrom(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10.0)
      //         ),
      //         backgroundColor:Colors.blueAccent,
      //         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
      //         textStyle:
      //         const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      //     child:  const Text('Next'),
      //   ),
      // ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 350,
              child: Image.asset('assets/vihicals/image 1.png')),
          const Text('Fine condo and office center to fit all your needs',style: TextStyle(fontWeight: FontWeight.bold),),
          const Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 30),
            child: Text('Enjoy all that Phnom Penh has with a stay at Diamond Twin Tower Condo And Office Centre, with its convenient location close to the city center.'),
          ),
          const SizedBox(
            height: 180,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/vihicals/Rectangle 2453.png'),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset('assets/vihicals/Rectangle 2454.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset('assets/vihicals/Rectangle 2455.png'),
              ),

            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoarding2()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  backgroundColor:Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
                  textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              child:  const Text('Next'),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text('Skip')
        ],
      ),
    );
  }
}
