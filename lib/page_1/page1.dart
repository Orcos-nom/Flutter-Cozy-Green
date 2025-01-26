import 'package:flutter/material.dart';
// Import other page files for navigation
import 'pages_for_1/page_1.dart';
import 'pages_for_1/page_2.dart';
import 'pages_for_1/page_3.dart';
import 'pages_for_1/page_4.dart';
import 'pages_for_1/page_5.dart';
import 'pages_for_1/page_6.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME GARDENING',
        style: TextStyle(color: Colors.white)),
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
            _buildBox(context, 'Sunflower Plant Guide', 'assets/sunflower.jpg', const SunflowerInfoPage()),
            const SizedBox(height: 16.0), // Add spacing between boxes
            _buildBox(context, 'Rose Plant Guide', 'assets/rose.jpg', const RoseInfoPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Orchid Plant Guide', 'assets/orchid.jpg', const OrchidInfoPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Lily Plant Guide', 'assets/lily.jpg', const LilyInfoPage ()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'Jasmine Plant Guide', 'assets/jasmine.jpg', const JasmineInfoPage()),
            const SizedBox(height: 16.0),
            _buildBox(context, 'African Violet Plant Guide', 'assets/africanvoilet.jpg', const AfricanVioletInfoPage()),
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
