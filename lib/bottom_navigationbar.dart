import 'package:flutter/material.dart';
import 'package:shop_app/New_mainscreen.dart';
import 'package:shop_app/Screens/cart_screen.dart';
import 'package:shop_app/Screens/favorite_screen.dart';
import 'package:shop_app/Screens/history_screen.dart';
import 'package:shop_app/Screens/home_screen.dart';
import 'package:shop_app/Screens/profile_screen.dart';

// class BottomNavigationBars extends StatefulWidget {
//   const BottomNavigationBars({super.key});
//
//   @override
//   State<BottomNavigationBars> createState() => _BottomNavigationBarsState();
// }
//
// class _BottomNavigationBarsState extends State<BottomNavigationBars> {
//   int currentTab = 0;
//
//   final List<Widget> screens = [
//     const HomeScreens(),
//     const FavoriteScreen(),
//     const HistoryScreen(),
//     const CartScreen(),
//     const ProfileScreen(),
//   ];
//   final PageStorageBucket bucket = PageStorageBucket();
//   Widget currentscreen = const HomeScreens();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageStorage(
//         child: currentscreen,
//         bucket: bucket,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//
//             // if(currentTab == 2 ){
//               currentscreen = HomeScreens();
//             // }
//           });
//         },
//         child: Icon(
//             // color:currentTab  !=2 ? Colors.blue :Colors.red,
//             Icons.home),
//       ),
//
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 10,
//         child: Container(
//           height: 70,
//           child:
//               Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//
//                   children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 MaterialButton(
//                   onPressed: () {
//                     setState(() {
//                       currentscreen = const FavoriteScreen();
//                       currentTab = 0;
//                     });
//                   },
//                   minWidth: 40,
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           size:30,
//                           Icons.favorite,
//                           color: currentTab == 0 ? Colors.blue : Colors.grey,
//                         ),
//                         const Text('Favorite')
//                       ]),
//                 ),
//                 MaterialButton(
//                   onPressed: () {
//                     setState(() {
//                       currentscreen = const HistoryScreen();
//                       currentTab = 1;
//                     });
//                   },
//                   minWidth: 40,
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           size:30,
//                           Icons.history_edu,
//                           color: currentTab == 1 ? Colors.blue : Colors.grey,
//                         ),
//                         const Text('History')
//                       ]),
//                 ),
//               ],
//             ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         MaterialButton(
//                           onPressed: () {
//                             setState(() {
//                               currentscreen = const CartScreen();
//                               currentTab = 2;
//                             });
//                           },
//                           minWidth: 40,
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   size:30,
//                                   Icons.shopping_cart,
//                                   color: currentTab == 2 ? Colors.blue : Colors.grey,
//                                 ),
//                                 const Text('Cart')
//                               ]),
//                         ),
//                         MaterialButton(
//                           onPressed: () {
//                             setState(() {
//                               currentscreen = const ProfileScreen();
//                               currentTab = 3;
//                             });
//                           },
//                           minWidth: 40,
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   size:30,
//                                   Icons.person,
//                                   color: currentTab == 3 ? Colors.blue : Colors.grey,
//                                 ),
//                                 const Text('Profile')
//                               ]),
//                         ),
//                       ],
//                     ),
//
//           ]),
//         ),
//       ),
//     );
//   }
// }
class BottomNavigationBars extends StatefulWidget {
  const BottomNavigationBars({super.key});

  @override
  State<BottomNavigationBars> createState() => _BottomNavigationBarsState();
}

class _BottomNavigationBarsState extends State<BottomNavigationBars> {
  int currentTab = 0;

  final List<Widget> screens = [
    const FavoriteScreen(),
    const HistoryScreen(),
    const Text("2"),
    const CartScreen(),
    const ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens[currentTab]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentTab == 2 ? Colors.red : Colors.blue,
        onPressed: () {
          setState(() {
            currentTab = 2;
          });
        },
        child: const Icon(
            // color:currentTab  !=2 ? Colors.blue :Colors.red,
            Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      //currentscreen = const FavoriteScreen();
                      currentTab = 0;
                    });
                  },
                  minWidth: 40,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.favorite,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        const Text('Favorite')
                      ]),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      //currentscreen = const HistoryScreen();
                      currentTab = 1;
                    });
                  },
                  minWidth: 40,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.history_edu,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        const Text('History')
                      ]),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      ///currentscreen = const CartScreen();
                      currentTab = 3;
                    });
                  },
                  minWidth: 40,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.shopping_cart,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        const Text('Cart')
                      ]),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      //currentscreen = const ProfileScreen();
                      currentTab = 4;
                    });
                  },
                  minWidth: 40,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 30,
                          Icons.person,
                          color: currentTab == 4 ? Colors.blue : Colors.grey,
                        ),
                        const Text('Profile')
                      ]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
