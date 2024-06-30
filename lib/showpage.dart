import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sathu/bookedpage.dart';

class Showpage extends StatefulWidget {
  final int indx;
  Showpage({super.key, required this.indx});

  @override
  State<Showpage> createState() => _ShowpageState();
}

class _ShowpageState extends State<Showpage> {
  final List shoes = [
    'images/download1.jpeg',
    'images/download2.jpeg',
    'images/download3.jpeg',
    'images/download4.jpeg',
    'images/download5.jpeg',
  ];

  final List shoes_name = ["Solina ", "Knec", "Heads", "Catwalk", "cairan"];

  final List shoes_price = ["2500RS", " 3000RS", " 4500RS", "4300RS", "3800RS"];
  void booked() {
    showDialog(
      context: context,
      builder: (context) {
        // return Bookedpage(url: shoes[widget.indx]);
        return Bookedpage();
      },
    );
  }

  void display() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Container(
            width: 400,
            height: 400,
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      shoes[widget.indx],
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: booked,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.green.shade400,
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "conform your oder  ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 300,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: Image.asset(
                shoes[widget.indx],
                fit: BoxFit.cover,
              ),
            )),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "shoes description",
                style: TextStyle(color: Colors.grey.shade700),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  "name :" + shoes_name[widget.indx],
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "price :" + shoes_price[widget.indx],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(
                        onPressed: display,
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
