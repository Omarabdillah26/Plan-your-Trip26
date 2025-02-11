import 'package:flutter/material.dart';

class ProvinceDetailPage extends StatelessWidget {
  final String provinceName;
  final String provinceImage;

  const ProvinceDetailPage({
    super.key,
    required this.provinceName,
    required this.provinceImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(provinceName),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                provinceImage,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  provinceName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    backgroundColor: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: const [
                ProvinceCategory(icon: Icons.restaurant, label: "Makanan"),
                ProvinceCategory(icon: Icons.shopping_bag, label: "Oleh-oleh"),
                ProvinceCategory(icon: Icons.hotel, label: "Hotel"),
                ProvinceCategory(icon: Icons.attractions, label: "Wisata"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProvinceCategory extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProvinceCategory({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: Colors.teal),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
