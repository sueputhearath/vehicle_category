import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shop_app/gridview.dart';
import 'package:shop_app/mainscreen.dart';
import 'package:shop_app/slider.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: ScreenSlider(),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, top: 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2 / 1.3,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: Container(
                      width: 100,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 4,
                              offset: Offset(4, 6), // Shadow position
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 6, 237, 141)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.food_bank_rounded,
                              color: Colors.red,
                              size: 70,
                            ),
                            Text('Foods')
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 10),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 4,
                              offset: Offset(4, 6), // Shadow position
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 6, 237, 141)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.baby_changing_station_outlined,
                              color: Colors.red,
                              size: 70,
                            ),
                            Text('Foods')
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 10),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 4,
                              offset: Offset(4, 6), // Shadow position
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 6, 237, 141)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.kayaking,
                              color: Colors.red,
                              size: 70,
                            ),
                            Text('Foods')
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 10),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey,
                              blurRadius: 4,
                              offset: Offset(4, 6), // Shadow position
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Color.fromARGB(255, 6, 237, 141)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.holiday_village_outlined,
                              color: Colors.red,
                              size: 70,
                            ),
                            Text('Foods')
                          ]),
                    ),
                  ),
                ],
              ),
            ],
          ),

          /* add child content here */
        ),
        appBar: AppBar(
          title: Text(
            "SHOP_APP",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          elevation: 10,
          backgroundColor: Color.fromARGB(255, 3, 40, 71),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert),
            ),
          ],
        )
        // child:MainScreen(),

        );
  }
}
