import 'package:flutter/material.dart';

import 'package:shop_app/drawer.dart';

class NewCategories extends StatelessWidget {
  const NewCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        toolbarHeight: 200,
        elevation: 14,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20))
        ),
          title: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,dara',style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("What would you like to Eat?",style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ]
            ),
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(Icons.add_shopping_cart,size: 20,
                       ),
                  ],
                ),
               ],
            ),
          ),
       ],
      ),

      drawer: Drawer(
        elevation: 3,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage("assets/background.jpg"),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      //   // child: CustomScrollView(
      //   //   slivers: [
      //   //     SliverAppBar(
      //   //       // floating: true,
      //   //       pinned: true,
      //   //       shape: RoundedRectangleBorder(
      //   //           borderRadius: BorderRadius.only(
      //   //               bottomLeft: Radius.circular(40),
      //   //               bottomRight: Radius.circular(40))),
      //   //       actions: [
      //   //         Row(
      //   //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   //           children: [
      //   //             Icon(Icons.menu,color: Colors.black),
      //   //             Icon(Icons.settings,color: Colors.black,),
      //   //           ],
      //   //         ),
      //   //         SizedBox(
      //   //           width: 10,
      //   //         ),
      //   //       ],
      //   //       flexibleSpace: FlexibleSpaceBar(
      //   //         background: ClipRRect(
      //   //           borderRadius: BorderRadius.only(
      //   //               bottomLeft: Radius.circular(40),
      //   //               bottomRight: Radius.circular(40)),
      //   //           // child: Image.asset(
      //   //           //   'assets/pizza.png',
      //   //           //   fit: BoxFit.cover,
      //   //           // ),
      //   //         ),
      //   //         title: Column(
      //   //           mainAxisAlignment: MainAxisAlignment.end,
      //   //           children: [
      //   //             Padding(
      //   //               padding: const EdgeInsets.only(left: 20),
      //   //               child: Text(
      //   //                 'What would you like to Eat ?',
      //   //                 maxLines: 2,
      //   //                 style: TextStyle(fontSize: 24,color: Colors.black),
      //   //               ),
      //   //             ),
      //   //           ],
      //   //         ),
      //   //       ),
      //   //       backgroundColor: Colors.white,
      //   //       expandedHeight: 200,
      //   //     ),
      //   //
      //   //   child: ,
      //   // ]
      // ),

      );

  }
}
