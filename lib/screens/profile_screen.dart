import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: GoogleFonts.manrope(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF818AF9),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/images/profile_pic.png'), // Replace with your image
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Hello, Teuku Aldie!",
              style: GoogleFonts.manrope(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Email: Aldie@example.com",
              style: GoogleFonts.manrope(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const Divider(height: 30),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(
                "Settings",
                style: GoogleFonts.manrope(),
              ),
              onTap: () {
                // Add your settings navigation
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: GoogleFonts.manrope(),
              ),
              onTap: () {
                // Add logout functionality
              },
            ),
          ],
        ),
      ),
    );
  }
}
