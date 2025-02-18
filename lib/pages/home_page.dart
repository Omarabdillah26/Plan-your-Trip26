import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> provinceList = [
    "Sumatra Selatan",
    "Sumatra Barat",
    "Bengkulu",
    "Riau",
    "Kepulauan Riau",
    "Jambi",
    "Lampung",
    "Bangka Belitung"
  ];
  List<String> filteredProvinces = [];

  @override
  void initState() {
    super.initState();
    filteredProvinces = List.from(provinceList); // Awalnya tampil semua
  }

  void _searchProvince(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredProvinces = List.from(provinceList);
      } else {
        filteredProvinces = provinceList
            .where((province) =>
                province.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _searchProvince,
              decoration: InputDecoration(
                labelText: "Enter destination",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () => _searchProvince(_searchController.text),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredProvinces.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredProvinces[index]),
                    onTap: () {
                      Navigator.pushNamed(context, '/provinceDetail',
                          arguments: {'name': filteredProvinces[index]});
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
