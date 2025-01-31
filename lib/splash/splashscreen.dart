import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/app/appscreen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  void _skipToNextPage() {
    _pageController.jumpToPage(2); // Skip directly to the 3rd page
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            children: [
              _buildSplashPage(
                'A movie quiz app is an engaging platform for cinephiles to \ntest their knowledge of films.',
                'A movie quiz app is an engaging platform for cinephiles to test\n their knowledge of films, actors, and directors. It features .',
                'imaages/sp1.png',
              ),
              _buildSplashPage(
                'A movie quiz app is an engaging platform for cinephiles to \ntest their knowledge of films.',
                'A movie quiz app is an engaging platform for cinephiles to test\n their knowledge of films, actors, and directors. It features .',
                'imaages/sp2.png',
              ),
              _buildSplashPageWithButton(
                'A movie quiz app is an engaging platform for cinephiles to \ntest their knowledge of films.',
                'A movie quiz app is an engaging platform for cinephiles to test\n their knowledge of films, actors, and directors. It features .',
                'imaages/sp3.png',
                context,
              ),
            ],
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: _skipToNextPage, // Skip directly to the 3rd page
              child: Text('Skip', style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: _currentIndex == index
                          ? Colors.blue // Selected page color
                          : Colors.grey, // Default dot color
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                if (_currentIndex < 2) {
                  // Allow moving to the next page (max 2)
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                }
              },
              child: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSplashPage(String title, String description, String imagePath) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            imagePath,
            width:
                MediaQuery.of(context).size.width * 0.8, // 80% of screen width
            height: 250, // Fixed height
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          bottom: 80,
          left: 20,
          right: 20,
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, // Increased font size for title
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSplashPageWithButton(String title, String description,
      String imagePath, BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            imagePath,
            width:
                MediaQuery.of(context).size.width * 0.8, 
            height: 250, 
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          bottom: 80,
          left: 20,
          right: 20,
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Appscreen())); // Assuming 'Ratesscreen' is a screen class
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 45, 129, 105),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 125, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
