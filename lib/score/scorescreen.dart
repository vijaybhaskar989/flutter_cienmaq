import 'package:flutter/material.dart';

class Scorescreen extends StatefulWidget {
  const Scorescreen({super.key});

  @override
  State<Scorescreen> createState() => _ScorescreenState();
}

class _ScorescreenState extends State<Scorescreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.only(top: 2, bottom: 1),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("imaages/score.png"),
            fit: BoxFit.cover,
            opacity: 06,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 70,
            ),
            InkWell(
              onTap: () {
               
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 125, horizontal: 145),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Play",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
