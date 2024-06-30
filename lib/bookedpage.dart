import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Bookedpage extends StatefulWidget {

  const Bookedpage({super.key});

  @override
  State<Bookedpage> createState() => _BookedpageState();
}

class _BookedpageState extends State<Bookedpage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.green.shade100,
      scrollable: true,
      content: Container(
        width: 500,
        height: 500,
        child: CircularPercentIndicator(
          radius: 180,
          lineWidth: 25,
          animation: true,
          percent: 1,
          progressColor: Colors.green,
          center: Text(
            " thank you for your booking !!!",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
