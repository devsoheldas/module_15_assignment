import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  bool isFollowSelected = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ✅ WORKING Network Image
            const CircleAvatar(
              radius: 45,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/300?img=12',
              ),
            ),

            const SizedBox(height: 12),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 8),
            const Text(
              'Passionate about creating user-friendly and engaging digital experiences.',
              textAlign: TextAlign.center,
            ),

            const Divider(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.email, size: 18),
                SizedBox(width: 6),
                Text('john.doe@example.com'),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.phone, size: 18),
                SizedBox(width: 6),
                Text('+123 456 7890'),
              ],
            ),

            const SizedBox(height: 16),

            // Follow / Message buttons
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isFollowSelected
                          ? Colors.blue
                          : Colors.grey.shade300,
                      foregroundColor:
                      isFollowSelected ? Colors.white : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isFollowSelected = true;
                      });
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('You followed John Doe'),
                        ),
                      );
                    },
                    child: const Text('Follow'),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: !isFollowSelected
                          ? Colors.blue
                          : Colors.grey.shade300,
                      foregroundColor:
                      !isFollowSelected ? Colors.white : Colors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        isFollowSelected = false;
                      });
                    },
                    child: const Text('Message'),
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