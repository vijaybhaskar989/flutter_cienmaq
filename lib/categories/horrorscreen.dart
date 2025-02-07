import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/horror/horrorquiz.dart';
import 'package:flutter_cienmaq/horror/horrorquiz1.dart';
import 'package:flutter_cienmaq/horror/horrorquiz2.dart';
import 'package:flutter_cienmaq/horror/horrorquiz3.dart';
import 'package:flutter_cienmaq/horror/horrorquiz4.dart';

class Horrorscreen extends StatefulWidget {
  const Horrorscreen({super.key});

  @override
  State<Horrorscreen> createState() => _HorrorscreenState();
}

class _HorrorscreenState extends State<Horrorscreen> {
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
        title: Text(
          'Horror',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz3()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/sai tej.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/geetanjali.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz1()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/ooru.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 36,
            ),

            ///2
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz2()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
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
                width: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/raju.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz4()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/kachana.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 36,
            ),

            ///3
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/raju.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz1()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/ooru.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz3()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/sai tej.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 32,
            ),
            //4
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz4()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/kachana.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  //
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/geetanjali.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz1()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/ooru.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 36,
            ),

            ///5
            Row(children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz4()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/kachana.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/geetanjali.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Horrorquiz3()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 160,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/sai tej.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ]),
          ]),
        ),
      ),
    );
  }
}
