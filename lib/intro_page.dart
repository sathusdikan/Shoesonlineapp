import 'package:flutter/material.dart';
import 'package:sathu/homepage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(70)),
              child: Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Image.network(
                    height: 350,
                    'https://s3.amazonaws.com/cdn.designcrowd.com/blog/40-Famous-Shoe-Logos/Nike.png'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Just Do It",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade300),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Brand new sneakers and custom kicks made with premium quality  ",
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homepage(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green[400],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Center(
                        child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
