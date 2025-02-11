import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String? query = ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Results"),
      ),
      body: Center(
        child: Text(
          query != null && query.isNotEmpty
              ? "Results for: $query"
              : "No search query provided",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
