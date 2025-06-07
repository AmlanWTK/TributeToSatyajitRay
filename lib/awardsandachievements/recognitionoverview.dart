import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/awardsandachievements/combination.dart';

class Recognitionoverview extends StatelessWidget {
  const Recognitionoverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.1), // subtle card background
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side image
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  'https://i.imgur.com/tdsH9NJ.jpeg',
                  height: 400,
                  width: 630,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 20),
              // Right side content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A legacy of Global Recognition",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Widely regarded as one of the greatest filmmakers of all time, '
                      'Satyajit Ray’s cinematic legacy transcends borders and generations. '
                      'He not only revolutionized Indian cinema with his humanistic storytelling and masterful direction, '
                      'but also earned deep respect from critics, scholars, and audiences worldwide. '
                      'Over the span of his career, Ray received an Academy Honorary Award, '
                      'the Bharat Ratna, and a total of 32 National Film Awards.\n\n'
                      'His contributions were celebrated at prestigious international film festivals such as Cannes, Venice, and Berlin, '
                      'cementing his place as a true global icon of cinema. '
                      'Beyond directing, he was a gifted writer, illustrator, and composer — often scoring music for his own films. '
                      'His debut film, *Pather Panchali*, won eleven international prizes, including Best Human Document at Cannes.\n\n'
                      'Filmmakers like Martin Scorsese, Akira Kurosawa, and Christopher Nolan have acknowledged his influence. '
                      'Ray’s stories remain timeless, deeply rooted in Indian culture yet universally relatable in emotion and experience. '
                      'His enduring contributions continue to inspire a new generation of storytellers and film lovers around the world.',
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CombinedPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text("View Full List of Awards",
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
