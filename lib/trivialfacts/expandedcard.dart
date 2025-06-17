import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpandedCard extends StatelessWidget {
  final Map<String, String> card;
  final VoidCallback onBackTap;

  const ExpandedCard({
    Key? key,
    required this.card,
    required this.onBackTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 56),
                Container(
                 // height: 500,
                  width: 880,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                  color: const Color(0xFF222222),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        
                        child: Image.network(
                          card['image'] ?? '',
                          height: 280,
                          width: double.infinity,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image, size: 180),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        card['title'] ?? '',
                        style: GoogleFonts.playfairDisplay(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        card['text'] ?? '',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16, height: 1.4),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 24,
          left: 12,
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.blueGrey),
            onPressed: onBackTap,
          ),
        ),
      ],
    );
  }
}
