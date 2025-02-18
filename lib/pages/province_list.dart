import 'package:flutter/material.dart';

class ProvinceDetailPage extends StatelessWidget {
  const ProvinceDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String provinceName =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: Text(provinceName)),
      body: Center(
        child: Text("Informasi tentang $provinceName",
            style: const TextStyle(fontSize: 18)),
      ),
    );
  }
}
