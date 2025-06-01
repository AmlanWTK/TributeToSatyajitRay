import 'package:flutter/material.dart';

class TravelHeroSection extends StatelessWidget {
  const TravelHeroSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Side: Images (or later, video thumbnails)
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  children: [
                   _buildCircleImageAsset("assets/ru.jpg"),

                    const SizedBox(width: 12),
                    _buildCircleImageAsset("assets/ru.jpg"),
                  ],
                ),
                const SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: _buildCircleImageAsset("assets/ru.jpg"),
                ),
              ],
            ),
          ),

          const SizedBox(width: 32),

          // Right Side: Text + Button
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Let's Go Together",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Plan Your Trip With Us",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "There are many variations of passages of available but the majority "
                  "have suffered alteration in some form by injected humour, "
                  "randomised words which don't look even slightly.",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
                const SizedBox(height: 24),

                // Feature List
                Row(
                  children: const [
                    Icon(Icons.check_circle, color: Colors.teal),
                    SizedBox(width: 8),
                    Text("Exclusive Trip", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: const [
                    Icon(Icons.check_circle, color: Colors.teal),
                    SizedBox(width: 8),
                    Text("Professional Guide", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 24),

                // Learn More Button
                ElevatedButton(
                  onPressed: () {
                    // Navigate to video upload page later
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text("Learn More →"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildCircleImageAsset(String assetPath) {
  return ClipOval(
    child: Image.asset(
      assetPath,
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    ),
  );
}

}
