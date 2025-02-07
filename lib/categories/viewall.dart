import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/categories/actionscreen.dart';
import 'package:flutter_cienmaq/categories/comdeyscreen.dart';
import 'package:flutter_cienmaq/categories/crimescreen.dart';
import 'package:flutter_cienmaq/categories/horrorscreen.dart';
import 'package:flutter_cienmaq/categories/scifiscreen.dart';

class Viewall extends StatefulWidget {
  const Viewall({super.key});

  @override
  State<Viewall> createState() => _ViewallState();
}

class _ViewallState extends State<Viewall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 30,
            )),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Actionscreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Action",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 39),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Crimescreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Crime",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 39),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Comdeyscreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Comedy",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 39),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Horrorscreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Horror",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Scifiscreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Scifi",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 39),
                  ElevatedButton(
                    onPressed: () {
                      // triller button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Triller",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 39),
                  ElevatedButton(
                    onPressed: () {
                      // Sport button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Sport",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 39),
                  ElevatedButton(
                    onPressed: () {
                      // Romantic button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 4, vertical: 4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Romantic",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
