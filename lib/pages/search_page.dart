import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> allProvinces = [
    "Aceh",
    "Sumatra Utara",
    "Sumatra Barat",
    "Riau",
    "Jambi",
    "Sumatra Selatan",
    "Bengkulu",
    "Lampung",
    "Banten",
    "Jawa Barat",
    "Jawa Tengah",
    "Jawa Timur"
  ];
  List<String> filteredProvinces = [];

  @override
  void initState() {
    super.initState();
    filteredProvinces = allProvinces;
  }

  void _filterProvinces(String query) {
    setState(() {
      filteredProvinces = allProvinces
          .where((province) =>
              province.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Provinces"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Search for a province...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: _filterProvinces,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredProvinces.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredProvinces[index]),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/provinceDetail',
                        arguments: {"name": filteredProvinces[index]},
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
