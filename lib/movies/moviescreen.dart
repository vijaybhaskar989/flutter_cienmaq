import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/revivew/ratesscreen.dart';
import 'package:flutter_cienmaq/revivew/revivewscreen.dart';

class Moviescreen extends StatefulWidget {
  const Moviescreen({super.key});

  @override
  State<Moviescreen> createState() => _MoviescreenState();
}

class _MoviescreenState extends State<Moviescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 370,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("imaages/m.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 55,
                          left: 7,
                          child: Text(
                            "give your opinion on movies",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 105,
                          left: 20,
                          child: Text(
                            "reviews",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        // Star Rating
                        Positioned(
                          top: 25,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 30);
                            }),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Ratesscreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: const BorderSide(
                                    color: Colors.blue, width: 5),
                              ),
                            ),
                            child: const Text("Open now"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),
            // Recent Movies
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 21),
              child: Text(
                'Recent Movies',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 3),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/rrr.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/sahoo.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/eagle.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/salaar.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/venom.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
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
                )),

            const SizedBox(
              height: 10,
            ),

            // Most Viewed Movies
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                'Most Viewed Movies',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 7),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/devara.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/taxiwala.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/pushpa 2.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/avatar.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/salaar.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 170,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('imaages/smart.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ]),
                )),
          ],
        ),
      ),
    );
  }
}
