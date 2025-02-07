import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/revivew/ratesscreen.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: const Text(
          "Koffee Cafe NYC",
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'imaages/rates.png',
              width: 250,
              height: 250,
            ),
            const SizedBox(height: 10),
            const Text(
              'No reviews yet',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Ullamco tempor adipisicing et\nvoluptate duis sit esse aliqua esse ex.',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 280),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Ratesscreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 45, 129, 105),
                padding:
                    const EdgeInsets.symmetric(horizontal: 105, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Write a review",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
