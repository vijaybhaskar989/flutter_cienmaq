// import 'package:flutter/material.dart';

// class NewsScreen extends StatefulWidget {
//   const NewsScreen({super.key});

//   @override
//   State<NewsScreen> createState() => _NewsScreenState();
// }

// class _NewsScreenState extends State<NewsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             // Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//             size: 35,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.search,
//               color: Colors.white,
//               size: 35,
//             ),
//           ),
//         ],
//         backgroundColor: const Color.fromARGB(255, 50, 50, 50),
//       ),
//       backgroundColor: const Color.fromARGB(255, 50, 50, 50),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const CircleAvatar(
//                     radius: 18,
//                     backgroundImage: AssetImage('imaages/ram charan.png'),
//                   ),
//                   const SizedBox(width: 15),
//                   const Text(
//                     "Ram Charan",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(width: 85),
//                   Text(
//                     '2 hours ago',
//                     style: TextStyle(color: Colors.grey[400]),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   image: const DecorationImage(
//                     image: AssetImage('imaages/ram charan.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(19),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 padding: const EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 50, 50, 50),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Text(
//                   "Game Changer, directed by S. Shankar and starring Ram Charan and Kiara Advani, "
//                   "is set to release on January 10, 2025. The advance bookings have been robust, "
//                   "with over ₹13.87 crore in pre-sales and more than 400,000 tickets sold. "
//                   "In Telangana, the government has approved ticket price hikes and additional permissions "
//                   "for 1 AM benefit shows, citing international demand.",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     height: 1.5,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 18,
//                         backgroundImage: AssetImage('imaages/ram charan.png'),
//                       ),
//                       SizedBox(width: 15),
//                       Text(
//                         "Ram Charan",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.share,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                 ],
//               ),
//               const Divider(
//                 color: Colors.white,
//                 height: 30,
//                 thickness: 1,
//                 indent: 0,
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const CircleAvatar(
//                     radius: 18,
//                     backgroundImage: AssetImage('imaages/daku maharaj.png'),
//                   ),
//                   const SizedBox(width: 15),
//                   const Text(
//                     "Bala Krishna",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(width: 85),
//                   Text(
//                     '2 hours ago',
//                     style: TextStyle(color: Colors.grey[400]),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   image: const DecorationImage(
//                     image: AssetImage('imaages/daku maharaj.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(19),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 padding: const EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 50, 50, 50),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Text(
//                   "Daku Maharaj, directed by bobby and starring balakrishna and bobby, "
//                   "is set to release on January 14, 2025. The advance bookings have been robust, "
//                   "with over ₹13.87 crore in pre-sales and more than 400,000 tickets sold. "
//                   "In Telangana, the government has approved ticket price hikes and additional permissions "
//                   " citing international demand.",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     height: 1.5,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 18,
//                         backgroundImage: AssetImage('imaages/daku maharaj.png'),
//                       ),
//                       SizedBox(width: 15),
//                       Text(
//                         "Bala Krishna",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.share,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                 ],
//               ),
//               const Divider(
//                 color: Colors.white,
//                 height: 30,
//                 thickness: 1,
//                 indent: 0,
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const CircleAvatar(
//                     radius: 18,
//                     backgroundImage: AssetImage('imaages/sahoo.png'),
//                   ),
//                   const SizedBox(width: 15),
//                   const Text(
//                     "Prabhas",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 15,
//                     ),
//                   ),
//                   const SizedBox(width: 85),
//                   Text(
//                     '2 hours ago',
//                     style: TextStyle(color: Colors.grey[400]),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 width: double.infinity,
//                 height: 200,
//                 decoration: BoxDecoration(
//                   image: const DecorationImage(
//                     image: AssetImage('imaages/sahoo.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.circular(19),
//                 ),
//               ),
//               const SizedBox(height: 15),
//               Container(
//                 padding: const EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 50, 50, 50),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 child: const Text(
//                   "Sahoo, directed by nelson and starring prabhas and varun reddy, "
//                   "is set to release on Augest 10, 2024. The advance bookings have been robust, "
//                   "with over ₹13.87 crore in pre-sales and more than 400,000 tickets sold. "
//                   "In Telangana, the government has approved ticket price hikes and additional permissions "
//                   " citing international demand.",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     height: 1.5,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 18,
//                         backgroundImage: AssetImage('imaages/sahoo.png'),
//                       ),
//                       SizedBox(width: 15),
//                       Text(
//                         "Prabhas",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 15,
//                         ),
//                       ),
//                     ],
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: const Icon(
//                       Icons.share,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }\

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Define the News model
class News {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  News({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json['_id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  bool isLoading = true;
  List<News> newsList = [];
  Future<void> fetchNews() async {
    try {
      final response =
          await http.get(Uri.parse("http://13.235.224.164:6000/movienews/"));

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}'); // Log the response

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        if (data.containsKey('news') && data['news'] is List) {
          final List<dynamic> newsData = data['news'];
          print('News Data: $newsData'); // Log parsed news data

          setState(() {
            newsList = newsData.map((item) => News.fromJson(item)).toList();
            isLoading = false;
          });
        } else {
          print('No "news" key found in the response or it is not a list.');
          setState(() {
            isLoading = false;
          });
        }
      } else {
        print('Failed to load news. Status code: ${response.statusCode}');
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error fetching data: $e');

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchNews(); // Fetch news when screen is loaded
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 35,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 50, 50, 50),
      ),
      backgroundColor: const Color.fromARGB(255, 50, 50, 50),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : newsList.isEmpty
              ? const Center(child: Text('No news available'))
              : ListView.builder(
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    final newsItem = newsList[index];
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 18,
                                backgroundImage:
                                    NetworkImage(newsItem.imageUrl),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                newsItem.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(width: 85),
                              Text(
                                '2 hours ago', // Static for now
                                style: TextStyle(color: Colors.grey[400]),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(newsItem.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 50, 50, 50),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              newsItem.description,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                height: 1.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}
