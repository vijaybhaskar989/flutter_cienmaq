// import 'package:flutter/material.dart';
// import 'package:flutter_cienmaq/email/loginscreen.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;
// import 'dart:io';

// class EditProfileScreen extends StatefulWidget {
//   @override
//   _EditProfileScreenState createState() => _EditProfileScreenState();
// }

// class _EditProfileScreenState extends State<EditProfileScreen> {
//   File? _imageFile;
//   final ImagePicker _picker = ImagePicker();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _fanController = TextEditingController();
//   final TextEditingController _genderController = TextEditingController();
//   bool _isSubmitting = false;

//   Future<void> _pickImage() async {
//     showModalBottomSheet(
//       context: context,
//       builder: (context) => Container(
//         color: Colors.black,
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             ListTile(
//               leading: const Icon(Icons.photo_library, color: Colors.white),
//               title: const Text(
//                 'Choose from Gallery',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () async {
//                 Navigator.pop(context);
//                 final pickedFile =
//                     await _picker.pickImage(source: ImageSource.gallery);
//                 if (pickedFile != null) {
//                   setState(() {
//                     _imageFile = File(pickedFile.path);
//                   });
//                 }
//               },
//             ),
//             ListTile(
//               leading: const Icon(Icons.camera_alt, color: Colors.white),
//               title: const Text(
//                 'Take a Photo',
//                 style: TextStyle(color: Colors.white),
//               ),
//               onTap: () async {
//                 Navigator.pop(context);
//                 final pickedFile =
//                     await _picker.pickImage(source: ImageSource.camera);
//                 if (pickedFile != null) {
//                   setState(() {
//                     _imageFile = File(pickedFile.path);
//                   });
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _submitProfile() async {
//     if (_isSubmitting) return;
//     setState(() {
//       _isSubmitting = true;
//     });

//     try {
//       // Define the API endpoint
//       final uri = Uri.parse(
//           'http://13.235.224.164:6000/http://13.235.224.164:6000profile/update');

//       // Create a multipart request
//       final request = http.MultipartRequest('POST', uri);

//       // Add fields to the request
//       request.fields['name'] = _nameController.text;
//       request.fields['email'] = _emailController.text;
//       request.fields['fan'] = _fanController.text;
//       request.fields['gender'] = _genderController.text;

//       // Add the image if available
//       if (_imageFile != null) {
//         request.files.add(await http.MultipartFile.fromPath(
//           'profile_image', // Field name on the server
//           _imageFile!.path,
//         ));
//       }

//       // Send the request
//       final response = await request.send();

//       if (response.statusCode == 200) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Profile updated successfully!')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Failed to update profile.')),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error: $e')),
//       );
//     } finally {
//       setState(() {
//         _isSubmitting = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.green),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: const Text(
//           'Edit Profile',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       backgroundColor: const Color.fromARGB(255, 30, 29, 29),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             GestureDetector(
//               onTap: _pickImage,
//               child: CircleAvatar(
//                 radius: 50,
//                 backgroundImage: _imageFile != null
//                     ? FileImage(_imageFile!)
//                     : const NetworkImage('https://via.placeholder.com/150')
//                         as ImageProvider,
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: CircleAvatar(
//                     radius: 15,
//                     backgroundColor: Colors.black.withOpacity(0.7),
//                     child: const Icon(
//                       Icons.camera_alt,
//                       color: Colors.white,
//                       size: 18,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextFormField(
//               style: const TextStyle(color: Colors.white),
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 labelStyle: const TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.green),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 filled: true,
//                 fillColor: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 28),
//             TextFormField(
//               style: const TextStyle(color: Colors.white),
//               controller: _nameController,
//               decoration: InputDecoration(
//                 labelText: 'Name',
//                 labelStyle: const TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.green),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 filled: true,
//                 fillColor: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 28),
//             TextFormField(
//               style: const TextStyle(color: Colors.white),
//               controller: _fanController,
//               decoration: InputDecoration(
//                 labelText: 'Fan',
//                 labelStyle: const TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.green),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 filled: true,
//                 fillColor: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 28),
//             TextFormField(
//               style: const TextStyle(color: Colors.white),
//               controller: _genderController,
//               decoration: InputDecoration(
//                 labelText: 'Gender',
//                 labelStyle: const TextStyle(color: Colors.white),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.green),
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 filled: true,
//                 fillColor: Colors.black,
//               ),
//             ),
//             const SizedBox(height: 170),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: OutlinedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => Loginscreen()));
//                     },
//                     style: OutlinedButton.styleFrom(
//                       side: const BorderSide(color: Colors.white),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(16),
//                       ),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 40, vertical: 12),
//                     ),
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'LOG OUT',
//                           style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 30,
//                           ),
//                         ),
//                         SizedBox(width: 20),
//                         Icon(Icons.exit_to_app, color: Colors.red, size: 35),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_cienmaq/email/loginscreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fanController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  bool _isSubmitting = false;

  // Pick an image
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  Future<void> _submitProfile() async {
    if (_isSubmitting) return;
    setState(() {
      _isSubmitting = true;
    });

    try {
      final uri = Uri.parse('http://13.235.224.164:6000/profile/update');
      final request = http.MultipartRequest('PUT', uri);

      // Add fields
      request.fields['name'] = _nameController.text;
      request.fields['email'] = _emailController.text;
      request.fields['fan'] = _fanController.text;
      request.fields['gender'] = _genderController.text;

      // Attach image if available
      if (_imageFile != null) {
        request.files.add(
          await http.MultipartFile.fromPath('profile_image', _imageFile!.path),
        );
      }

      // Send request
      final response = await request.send();
      final responseString = await response.stream.bytesToString();

      // Log the raw response for debugging
      print('Response Status: ${response.statusCode}');
      print('Response Body: $responseString');

      if (response.statusCode == 404) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: Endpoint not found (404)')),
        );
      } else if (response.statusCode == 200) {
        // Handle success as before
        try {
          final jsonResponse = json.decode(responseString);
          if (jsonResponse is Map<String, dynamic>) {
            if (jsonResponse['success'] == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content:
                        Text(jsonResponse['message'] ?? 'Profile updated!')),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(jsonResponse['error'] ?? 'Update failed.')),
              );
            }
          } else {
            throw FormatException("Invalid JSON format");
          }
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error parsing JSON: $e')),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:
                  Text('Server error, status code: ${response.statusCode}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    } finally {
      setState(() {
        _isSubmitting = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.green),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 30, 29, 29),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _imageFile != null
                    ? FileImage(_imageFile!)
                    : const NetworkImage('https://via.placeholder.com/150')
                        as ImageProvider,
              ),
            ),
            const SizedBox(height: 20),
            _buildTextField(_emailController, 'Email'),
            const SizedBox(height: 20),
            _buildTextField(_nameController, 'Name'),
            const SizedBox(height: 20),
            _buildTextField(_fanController, 'Fan'),
            const SizedBox(height: 20),
            _buildTextField(_genderController, 'Gender'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitProfile,
              child: _isSubmitting
                  ? const CircularProgressIndicator(color: Colors.white)
                  : const Text('Update Profile'),
            ),
            const SizedBox(height: 100),
            _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(8.0),
        ),
        filled: true,
        fillColor: Colors.black,
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Loginscreen()));
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOG OUT',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          SizedBox(width: 10),
          Icon(Icons.exit_to_app, color: Colors.red, size: 25),
        ],
      ),
    );
  }
}
