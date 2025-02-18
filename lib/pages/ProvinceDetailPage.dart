import 'package:flutter/material.dart';

class ProvinceDetailPage extends StatelessWidget {
  const ProvinceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String provinceName = args["name"];

    return Scaffold(
      appBar: AppBar(
        title: Text(provinceName),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Catalog Item 1 for $provinceName"),
            onTap: () {
              // Handle tap for item 1
            },
          ),
          ListTile(
            title: Text("Catalog Item 2 for $provinceName"),
            onTap: () {
              // Handle tap for item 2
            },
          ),
          ListTile(
            title: Text("Catalog Item 3 for $provinceName"),
            onTap: () {
              // Handle tap for item 3
            },
          ),
        ],
      ),
    );
  }
}
