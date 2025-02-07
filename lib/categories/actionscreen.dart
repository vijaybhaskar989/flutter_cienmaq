import 'package:flutter/material.dart';

class Actionscreen extends StatefulWidget {
  const Actionscreen({super.key});

  @override
  State<Actionscreen> createState() => _ActionscreenState();
}

class _ActionscreenState extends State<Actionscreen> {
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
          'Action',
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
                  // Game change
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/game change.png'),
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 36,
            ),

            ///2
            Row(children: [
              GestureDetector(
                onTap: () {
                  // Game change
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/game change.png'),
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 36,
            ),

            ///3
            Row(children: [
              GestureDetector(
                onTap: () {
                  // Game change
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/game change.png'),
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 36,
            ),

            ///4
            Row(children: [
              GestureDetector(
                onTap: () {
                  // Game change
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/game change.png'),
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
              const SizedBox(
                width: 13,
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
            ]),
            const SizedBox(
              height: 32,
            ),

            ///5
            Row(children: [
              GestureDetector(
                onTap: () {
                  // Game change
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 170,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('imaages/game change.png'),
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
              const SizedBox(
                width: 13,
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
            ]),
          ]),
        ),
      ),
    );
  }
}
