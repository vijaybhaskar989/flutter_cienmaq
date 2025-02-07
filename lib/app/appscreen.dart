import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/bottom/bottomscreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Appscreen extends StatefulWidget {
  const Appscreen({super.key});

  @override
  State<Appscreen> createState() => _AppscreenState();
}

class _AppscreenState extends State<Appscreen> {
  final String apiUrl = "https://example.com/api";
  final TextEditingController _nameController = TextEditingController();
  String data = "";

  Future<void> fetchData() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        setState(() {
          data = responseData['message'];
        });
      } else {
        setState(() {
          data = "Failed to load data";
        });
      }
    } catch (e) {
      setState(() {
        data = "Error: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                child: Text(
                  'QUIZ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'imaages/app.png',
                height: 250,
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: const Text(
                      "Enter Your Name",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _nameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    labelStyle: const TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    fillColor: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                data,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  if (_nameController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Please enter your name")),
                    );
                  } else {
                    fetchData();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Bottomscreen()));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 114, 70, 208),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 110, vertical: 7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: const Text(
                  "Start",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }
}
