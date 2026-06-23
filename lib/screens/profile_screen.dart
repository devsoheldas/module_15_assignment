import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/interest_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(title: const Text('Profile'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ProfileCard(),
            const SizedBox(height: 24),

            // ✅ Centered Interests with side lines
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Interests',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),

            const SizedBox(height: 16),

            // ✅ Horizontal cards (no overflow)
            Row(
              children: const [
                Expanded(
                  child: InterestCard(
                    title: 'Travel',
                    description: 'Exploring new places',
                    imageUrl:
                    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: InterestCard(
                    title: 'Photography',
                    description: 'Capturing moments',
                    imageUrl:
                    'https://images.unsplash.com/photo-1519183071298-a2962be96c1a',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}