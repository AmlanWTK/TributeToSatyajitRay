import 'package:flutter/material.dart';

class DistrictDetailPage extends StatelessWidget {
  final String districtName;
  final String imagePath;

  const DistrictDetailPage({
    super.key,
    required this.districtName,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(districtName),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(imagePath, fit: BoxFit.cover),
            const SizedBox(height: 20),
            Text(
              "Welcome to $districtName!",
              style: const TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
