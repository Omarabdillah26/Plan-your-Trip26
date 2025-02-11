import 'package:flutter/material.dart';
import 'package:project_omar/pages/ProvinceDetailPage.dart';

class ProvinceList extends StatelessWidget {
  const ProvinceList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> provinces = [
      {"name": "Nanggroe Aceh Darussalam", "image": "assets/aceh.jpg"},
      {"name": "Sumatra Utara", "image": "assets/sumut.jpg"},
      {"name": "Sumatra Selatan", "image": "assets/sumsel.jpg"},
      {"name": "Sumatra Barat", "image": "assets/sumbar.jpg"},
      {"name": "Bengkulu", "image": "assets/bengkulu.jpg"},
      {"name": "Riau", "image": "assets/riau.jpg"},
      {"name": "Kepulauan Riau", "image": "assets/kepri.jpg"},
      {"name": "Jambi", "image": "assets/jambi.jpg"},
      {"name": "Lampung", "image": "assets/lampung.jpg"},
      {"name": "Bangka Belitung", "image": "assets/babel.jpg"},
    ];

    return ListView.builder(
      itemCount: provinces.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(provinces[index]["image"]!),
          ),
          title: Text(provinces[index]["name"]!),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProvinceDetailPage(
                  provinceName: provinces[index]["name"]!,
                  provinceImage: provinces[index]["image"]!,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
