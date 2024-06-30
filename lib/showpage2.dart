import 'package:flutter/material.dart';
import 'package:sathu/bookedpage.dart';

class Showpage2 extends StatefulWidget {
  final int number;

  const Showpage2({super.key, required this.number});

  @override
  State<Showpage2> createState() => _Showpage2State();
}

class _Showpage2State extends State<Showpage2> {
  final List shoes = [
    'images/download1.jpeg',
    'images/download2.jpeg',
    'images/download3.jpeg',
    'images/download4.jpeg',
    'images/download5.jpeg',
    'images/download1.jpeg',
    'images/download2.jpeg',
    'images/download3.jpeg',
    'images/download4.jpeg',
    'images/download5.jpeg',
    'images/download1.jpeg',
    'images/download2.jpeg',
    'images/download3.jpeg',
    'images/download4.jpeg',
    'images/download5.jpeg',
    'images/download1.jpeg',
    'images/download2.jpeg',
    'images/download3.jpeg',
    'images/download4.jpeg',
    'images/download5.jpeg',
  ];
  final List shoes_name = [
    "Solina ",
    "Knec",
    "Heads",
    "Catwalk",
    "cairan",
    "Solina ",
    "Knec",
    "Heads",
    "Catwalk",
    "cairan",
    "Solina ",
    "Knec",
    "Heads",
    "Catwalk",
    "cairan",
    "Solina ",
    "Knec",
    "Heads",
    "Catwalk",
    "cairan"
  ];

  final List shoes_price = [
    "2500RS",
    " 3000RS",
    " 4500RS",
    "4300RS",
    "3800RS",
    "2500RS",
    " 3000RS",
    " 4500RS",
    "4300RS",
    "3800RS",
    "2500RS",
    " 3000RS",
    " 4500RS",
    "4300RS",
    "3800RS",
    "2500RS",
    " 3000RS",
    " 4500RS",
    "4300RS",
    "3800RS",
    "2500RS",
    " 3000RS",
    " 4500RS",
    "4300RS",
    "3800RS"
  ];
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
                      shoes[widget.number],
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
        const SizedBox(
          height: 50,
        ),
        Expanded(
          child: Container(
              width: 400,
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                child: Image.asset(
                  shoes[widget.number],
                  fit: BoxFit.cover,
                ),
              )),
        ),
        Expanded(
          child: Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "shoes description",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: Text(
                    "name :" + shoes_name[widget.number],
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "price :" + shoes_price[widget.number],
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Container(
                        width: 50,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        child: IconButton(
                          onPressed: display,
                          icon: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: const SizedBox(
                  height: 30,
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
