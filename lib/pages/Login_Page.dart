import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Log In",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text("Username"),
            TextField(
                decoration:
                    const InputDecoration(border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const Text("Password"),
            TextField(
                decoration:
                    const InputDecoration(border: OutlineInputBorder())),
            const SizedBox(height: 10),
            TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text("Log In"),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: const Text("Sign up",
                      style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
