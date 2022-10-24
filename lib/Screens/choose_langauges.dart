import 'package:flutter/material.dart';

import 'onboarding1.dart';
class ChooseLangauge extends StatelessWidget {
  const ChooseLangauge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 130,left: 20,right: 20),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const OnBoarding1()));
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              backgroundColor:Colors.blueAccent,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 16),
              textStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          child:  const Text('Continue'),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
            Container(
              width: double.infinity,
              height: 375,
              color: Colors.blueAccent,
            ),
              Positioned(
                top: 100,
                left: 20,
                right: 20,
                child:Image.asset('assets/vihicals/image 9.png',
                width: 200,
                  height: 200,
                ),)
            ],

          ),
          const SizedBox(
            height: 60,
          ),
          Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children:  [
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text('Please choose language'),
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color:Colors.grey.withOpacity(0.1),
                              offset: const Offset(0, 0),
                              blurRadius: 2,
                              spreadRadius: 3)
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/vihicals/United Kingdom (GB).png',
                            width: 20,
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('English'),
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius:BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color:Colors.grey.withOpacity(0.1),
                              offset: const Offset(0, 0),
                              blurRadius: 2,
                              spreadRadius: 3)
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/vihicals/Cambodia (KH).png',
                          width: 20,
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text('ខ្មែរ'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )

            ],
          )
        ],
      ),

    );
  }
}
