import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sathu/cartpage.dart';
import 'package:sathu/mylisttile.dart';

import 'package:sathu/shoppage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List page = [const Shoppage(), const Cartpage()];

  int currentindex = 0;

  void indexgetter(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[200],
        bottomNavigationBar: GNav(
            tabBorderRadius: 20,
            activeColor: Colors.green,
            tabBackgroundColor: Colors.green.shade100,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            onTabChange: indexgetter,
            tabs: [
              const GButton(
                icon: Icons.home,
                text: "home",
                iconSize: 30,
              ),
              const GButton(
                icon: Icons.menu,
                text: "more",
                iconSize: 30,
              )
            ]),
        body: page[currentindex],
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          toolbarHeight: 90,
          title: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text(
              "Hot shoes page",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        drawer: Mylisttile());
  }
}
