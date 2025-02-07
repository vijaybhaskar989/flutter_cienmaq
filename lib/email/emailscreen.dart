import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/bottom/bottomscreen.dart';
import 'package:flutter_cienmaq/email/signupscreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Emailscreen extends StatefulWidget {
  const Emailscreen({super.key});

  @override
  State<Emailscreen> createState() => _EmailscreenState();
}

class _EmailscreenState extends State<Emailscreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isSubmitting = false;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isValidEmail(String email) {
    final emailRegex =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    return emailRegex.hasMatch(email);
  }

  Future<void> _validateAndContinue() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isSubmitting = true);

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    try {
      final response = await http.post(
        Uri.parse('http://13.235.224.164:6000/user/social-login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      final responseData = json.decode(response.body);
      print("Response: $responseData");

      if (response.statusCode == 200 && responseData['success'] == true) {
        _navigateToDashboard();
      } else {
        _showSnackbar(responseData['message'] ?? 'Login failed');
      }
    } catch (error) {
      _showSnackbar("No internet connection or server issue.");
    } finally {
      setState(() => _isSubmitting = false);
    }
  }

  void _navigateToDashboard() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Bottomscreen()),
    );
  }

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('imaages/company.png'),
                  radius: 85,
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Text(
                      "Hi!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 520,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 29, 29, 29),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          // Email Input
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                              hintStyle: const TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            style: const TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter an email';
                              } else if (!isValidEmail(value)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          // Password Field with Validation
                          TextFormField(
                            controller: _passwordController,
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: const TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                            ),
                            style: const TextStyle(color: Colors.black),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              } else if (value.length < 6) {
                                return 'Password must be at least 6 characters';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          // Continue Button
                          ElevatedButton(
                            onPressed:
                                _isSubmitting ? null : _validateAndContinue,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 110, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: _isSubmitting
                                ? const CircularProgressIndicator(
                                    color: Colors.black, strokeWidth: 3)
                                : const Text(
                                    "Continue",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'or',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          // Google Sign-In Button
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Bottomscreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'imaages/go.png',
                                  height: 24,
                                ),
                                const SizedBox(width: 15),
                                const Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          // Sign Up & Forgot Password Row
                          Row(
                            children: [
                              const Text(
                                "Don't have an account?",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Signupscreen()));
                                },
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.yellow,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Forgot your password?',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
