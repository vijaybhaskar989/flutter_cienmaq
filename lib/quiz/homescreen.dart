import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/categories/actionscreen.dart';
import 'package:flutter_cienmaq/categories/comdeyscreen.dart';
import 'package:flutter_cienmaq/categories/crimescreen.dart';
import 'package:flutter_cienmaq/categories/horrorscreen.dart';
import 'package:flutter_cienmaq/categories/viewall.dart';
import 'package:flutter_cienmaq/quiz/quizscreen.dart';
import 'package:flutter_cienmaq/viewalll/choose.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Vamshi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Let\'s make this day productive',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('imaages/vamshi.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 200),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Viewall()));
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
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
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Action",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Crimescreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Crime",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Comdeyscreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Comedy",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Horrorscreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 67, 66, 66),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
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
            const SizedBox(height: 15),
            const Text(
              'Choose your mode',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // games
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/games.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    // paid
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/paid.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    // play
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/play.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Choose your mode",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 149),
                TextButton(
                  onPressed: () {
                    // choose your mode
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Choose()));
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizScreen()));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/rrr.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // sahoo
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/sahoo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // eagle
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/eagle.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // salaar
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/salaar.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // venom
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/venom.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // jailer
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/jailer.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "2022 t0 2023  Actor & play quiz",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 47),
                TextButton(
                  onPressed: () {
                    // View all
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    // colourphoto
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/colourphoto.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // sita rama
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/sitarama.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // baby
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/baby.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // pushpa 2
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/pushpa 2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // venom
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/venom.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // jailer
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/jailer.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "2015 t0 2020  Actor & play quiz",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 50),
                TextButton(
                  onPressed: () {
                    // View all
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    // pushpa 2
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/pushpa 2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // devara
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/devara.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // kaliki
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/kalki.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // salaar
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/salaar.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // venom
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/venom.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    // jailer
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/jailer.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Hero & play quiz",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 165),
                TextButton(
                  onPressed: () {
                    // View all
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/ravi.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/a.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/n.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/p.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/r.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/ram.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Heroes & play quiz",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 149),
                TextButton(
                  onPressed: () {
                    // View all
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/kajal.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/pooja.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/sa.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/an.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/trisha.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/kreethi.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Comdey & play quiz",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 145),
                TextButton(
                  onPressed: () {
                    // View all
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/comdey2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/comdey.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/ali.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/comdey4.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/comdey3.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    //
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 170,
                    width: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/comdey5.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
