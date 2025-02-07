import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/horror/horrorquiz.dart';
import 'package:flutter_cienmaq/news/newsscreen.dart';
import 'package:flutter_cienmaq/revivew/ratesscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('imaages/vamshi.png'),
            ),
          ),
          title: const Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.question_mark,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Container(
              width: double.infinity,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  prefixIcon: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(width: 330),
                      Icon(Icons.filter_alt, color: Colors.white),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
                            "Give your opinion on movies",
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
                            "Reviews",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        // Star Rating
                        Positioned(
                          top: 25,
                          right: 1,
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
                                      builder: (context) =>
                                          const Ratesscreen()));
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 370,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("imaages/q.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 55,
                          left: 7,
                          child: Text(
                            "Explore New quizes ",
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
                            "Reviews",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        // Star Rating
                        Positioned(
                          top: 25,
                          right: 1,
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
                                      builder: (context) =>
                                          const Horrorquiz()));
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
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 370,
                    height: 230,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("imaages/all.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 55,
                          left: 7,
                          child: Text(
                            "All About Movies ",
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
                            "Reviews",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        // Star Rating
                        Positioned(
                          top: 25,
                          right: 1,
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
                                      builder: (context) =>
                                          const NewsScreen()));
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
            const SizedBox(
              height: 20,
            ),
            const Row(children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'News',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'imaages/ram charan.png',
                            width: 700,
                            height: 200,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              "latest Update on GC",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "see reviews",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Game Changer is an upcoming Indian Telugu-language political action film',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("imaages/ram.png"),
                              radius: 20,
                            ),
                            SizedBox(
                              width: 190,
                            ),
                            Text(
                              "2 hours",
                              style: TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'imaages/oka.png',
                            width: 700,
                            height: 200,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              "latest Update on GC",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "see reviews",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Oka Jivatham is an upcoming Indian Telugu-language political action film',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(""),
                              radius: 20,
                            ),
                            SizedBox(
                              width: 190,
                            ),
                            Text(
                              "2 hours",
                              style: TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'imaages/salaar.png',
                            width: 700,
                            height: 200,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            Text(
                              "latest Update on GC",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              "see reviews",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Salaar is an upcoming Indian Telugu-language political action film',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("imaages/p.png"),
                              radius: 20,
                            ),
                            SizedBox(
                              width: 190,
                            ),
                            Text(
                              "2 hours",
                              style: TextStyle(color: Colors.grey),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ])),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  "Movie Review",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/avatar.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 15);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/sahoo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 15);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/eagle.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 15);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/salaar.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 15);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/venom.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 15);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 230,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('imaages/jailer.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 01,
                          child: Row(
                            children: List.generate(5, (index) {
                              return const Icon(Icons.star,
                                  color: Colors.yellow, size: 15);
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Hero",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 280),
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
                  "Heroes",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 260),
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
                  "Comdey",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 255),
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
        )));
  }
}
