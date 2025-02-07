import 'package:flutter/material.dart';

class Comdeyscreen extends StatefulWidget {
  const Comdeyscreen({super.key});

  @override
  State<Comdeyscreen> createState() => _ComdeyscreenState();
}

class _ComdeyscreenState extends State<Comdeyscreen> {
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
            )), title: Text(
          'Comdey',
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
                onTap: () {},
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
              const SizedBox(
                width: 13,
              ),
              GestureDetector(
                onTap: () {},
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 36,
            ),

            ///2
            Row(children: [
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
              const SizedBox(
                width: 13,
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 36,
            ),

            ///3
            Row(children: [
              GestureDetector(
                onTap: () {},
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
              const SizedBox(
                width: 13,
              ),
              GestureDetector(
                onTap: () {},
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 32,
            ),
            //4
            Row(children: [
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
              const SizedBox(
                width: 13,
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 36,
            ),

            ///5
            Row(children: [
              GestureDetector(
                onTap: () {},
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
              const SizedBox(
                width: 13,
              ),
              GestureDetector(
                onTap: () {},
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
              const SizedBox(
                width: 13,
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
            ]),
          ]),
        ),
      ),
    );
  }
}
