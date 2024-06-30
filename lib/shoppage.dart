import 'package:flutter/material.dart';
import 'package:sathu/showpage.dart';

class Shoppage extends StatelessWidget {
  const Shoppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search here",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "everyone flies.. some fly longer than others",
                  style: TextStyle(color: Colors.grey[700], fontSize: 20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 100),
            child: Text(
              "Hot shoes pic 🔥",
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12),
                child: Showpage(indx: index),
              );
            },
            itemCount: 5,
            scrollDirection: Axis.horizontal,
          )),
        ],
      ),
    );
  }
}
