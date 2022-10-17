import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:shop_app/New_mainscreen.dart';
import 'package:shop_app/categories.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  final _controller = PageController();
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          ColoredBox(
            color: Color.fromARGB(255, 2, 70, 188),
            child: Container(
              child: NewMainScreen(),
            ),
          ),
          ColoredBox(color: Colors.redAccent),
          ColoredBox(color: Colors.greenAccent),
          ColoredBox(color: Colors.black),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: RollingBottomBar(
        controller: _controller,
        flat: false,
        useActiveColorByDefault: false,
        items: [
          RollingBottomBarItem(Icons.home,
              label: 'HOME', activeColor: Colors.deepOrange),
          RollingBottomBarItem(Icons.favorite,
              label: 'favorite', activeColor: Colors.deepOrange),
          RollingBottomBarItem(Icons.food_bank,
              label: 'Menu', activeColor: Colors.deepOrange),
          RollingBottomBarItem(Icons.person,
              label: 'Profile', activeColor: Colors.deepOrange),
        ],
        enableIconRotation: true,
        onTap: (index) {
          _controller.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOut,
          );
        },
      ),
    );
  }
}
