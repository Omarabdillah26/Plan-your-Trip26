import 'package:flutter/material.dart';
import 'package:project_omar/pages/splash_screen.dart'; // Import the splash screen

import 'package:project_omar/pages/ProvinceDetailPage.dart';
import 'package:project_omar/pages/navbar.dart';
import 'package:project_omar/pages/login_page.dart';
import 'package:project_omar/pages/search_page.dart'; // Tambahkan import ini

void main() {
  runApp(const MyApp()); // Start with the splash screen
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project Omar",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/splash', // Set the initial route to splash screen

      routes: {
        '/splash': (context) => const SplashScreen(), // Add splash screen route
        '/': (context) => const LoginPage(),

        '/home': (context) => const Navbar(),
        '/search': (context) => const SearchPage(), // Tambahkan route ini
        '/provinceDetail': (context) => const ProvinceDetailPage(),
      },
    );
  }
}
