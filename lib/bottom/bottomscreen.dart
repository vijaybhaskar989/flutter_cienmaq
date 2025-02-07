import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/home/home.dart';
import 'package:flutter_cienmaq/movies/moviescreen.dart';
import 'package:flutter_cienmaq/news/newsscreen.dart';
import 'package:flutter_cienmaq/profile/profilescreen.dart';
import 'package:flutter_cienmaq/quiz/homescreen.dart';

class Bottomscreen extends StatefulWidget {
  const Bottomscreen({super.key});

  @override
  State<Bottomscreen> createState() => _BottomscreenState();
}

class _BottomscreenState extends State<Bottomscreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const Home(),
    NewsScreen(),
    Homescreen(),
    Moviescreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: "Quiz",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Reviews",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: screens[currentIndex],
    );
  }
}
