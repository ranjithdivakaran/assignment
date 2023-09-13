import 'package:assignment/farmerfreshzone/account.dart';
import 'package:assignment/farmerfreshzone/cart.dart';
import 'package:assignment/farmerfreshzone/home.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(MaterialApp(home: Bottomnav(), debugShowCheckedModeBanner: false,));
}

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int index = 0;
  var screens = [
    Homeex(),
    Cart(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(backgroundColor: Colors.white12,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          onTap: (i) => setState(() => index = i),
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.home),
                title: Text("Home"),
                selectedColor: Colors.green),
            SalomonBottomBarItem(
                icon: Icon(Icons.shopping_cart_sharp),
                title: Text("Cart"),
                selectedColor: Colors.green),
            SalomonBottomBarItem(
                icon: Icon(Icons.person),
                title: Text("account"),
                selectedColor: Colors.green),
          ]),
      body: screens[index],
    );
  }
}
