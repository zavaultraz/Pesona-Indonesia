import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Bar with Profile and Menu Icons
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Profile Icon with Name
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(Icons.person, color: Colors.blueAccent),
                              SizedBox(width: 8),
                              Text('Bxir', style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      // Menu Icon
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.list, color: Colors.blueAccent),
                      ),
                    ],
                  ),
                ),
                // Title: Find Your Destination
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Find Your Destination',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                // Search Bar
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Search Your Destination',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Icon(Icons.search, color: Colors.blueAccent),
                        ],
                      ),
                    ),
                  ),
                ),
                // Add more content below as needed
                // e.g., Destination Cards, Categories, etc.
              ],
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent.shade100, // Background color for a modern look
      ),
    );
  }
}

void main() {
  runApp(const MobileLayout());
}
