import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            // Avatar Circle
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/profile_placeholder.jpg"),
            ),
            const SizedBox(height: 16),
            // User Name
            const Text(
              "Omar Yusuf",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Email Info
            const Text(
              "omar.yusuf@example.com",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            // Info Cards
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.location_on, color: Colors.teal),
                title: const Text("Location"),
                subtitle: const Text("Jakarta, Indonesia"),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.phone, color: Colors.teal),
                title: const Text("Phone"),
                subtitle: const Text("+62 812-3456-7890"),
              ),
            ),
            const SizedBox(height: 20),
            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.edit),
                  label: const Text("Edit Profile"),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  icon: const Icon(Icons.logout),
                  label: const Text("Logout"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
