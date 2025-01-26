import 'package:flutter/material.dart';
// Import other page files for navigation
import 'pages_for_2/page_1.dart';
import 'pages_for_2/page_2.dart';
import 'pages_for_2/page_3.dart';
import 'pages_for_2/page_4.dart';
import 'pages_for_2/page_5.dart';
import 'pages_for_2/page_6.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AGRICULTURE'),
        centerTitle: true,
        backgroundColor: Colors.green[800], // Cozy dark green background
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back), // Back button in the app bar
            onPressed: () {
              Navigator.pop(context); // Navigate to the previous page
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Padding for better layout
        child: Column(
          children: [
            // Create custom scrollable boxes
            _buildBox(context, 'Apple Cultivation Guide', 'assets/apple.jpeg',
                const AppleInfoPage()),
            const SizedBox(height: 16.0), // Add spacing between boxes
            _buildBox(context, 'Wheat Cultivation Guide', 'assets/wheat.jpeg',
                const WheatInformationPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Banana Cultivation Guide', 'assets/banana.jpeg',
                const BananaInfoPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Pomegranate Cultivation Guide',
                'assets/pormi.jpeg', const PomegranateInfoPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Rice Cultivation Guide', 'assets/rice.jpeg',
                const RiceInfoPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Tomato Cultivation Guide', 'assets/tomto.jpeg',
                const TomatoInfoPage()),
          ],
        ),
      ),
    );
  }

  // Function to build a rectangular box with an image, title, and navigation logic
  Widget _buildBox(
      BuildContext context, String title, String imagePath, Widget page) {
    return GestureDetector(
      onTap: () {
        // Navigate to the respective page on box tap
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        height: 150, // Box height
        width: double.infinity, // Full width
        decoration: BoxDecoration(
          color: Colors.green[200], // Light cozy green background
          borderRadius: BorderRadius.circular(10), // Rounded corners
          image: DecorationImage(
            image: AssetImage(imagePath), // Custom image for each box
            fit: BoxFit.cover, // Cover the entire box
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3), // Add a slight overlay for text
              BlendMode.darken,
            ),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          title, // Title displayed on the box
          style: const TextStyle(
            color: Colors.white, // White text color for contrast
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
