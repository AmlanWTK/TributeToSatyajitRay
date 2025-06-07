import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AwardProfileCard extends StatelessWidget {
  final String imagePath;
  final String awardTitle;
  final String subtitle;

  const AwardProfileCard({
    required this.imagePath,
    required this.awardTitle,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        // Card Container
        SizedBox(
          
          height: 300,
          width: 490,
          child: Container(
            
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.fromLTRB(16, 60, 16, 16),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.imgur.com/VYenOsr.jpeg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3),
                   BlendMode.darken,
                   )
                ),
              color: const Color(0xFF1C1C1C),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 90), // To push content below the image
                Text(
                  
                  awardTitle,
                  style: GoogleFonts.playfairDisplay(
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[200],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 7),
                Text(
                  subtitle,
                  style: GoogleFonts.openSans(
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),

        // Floating Image
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imagePath,
            height: 170,
            width: 350,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
