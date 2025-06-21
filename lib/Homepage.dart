import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/Lifetime/lifetime.dart';
import 'package:oldcity/RayWritingPage/raywritingpage.dart';
import 'package:oldcity/iconicfilmpage.dart';
import 'package:oldcity/trivialfacts/raycard.dart';

import 'package:oldcity/videogrid/combinesection.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    final totalColumnHeight = 420.0;

    return Scaffold(
    backgroundColor: Colors.transparent,
      
      body:
       Container(

        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
           color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 6)
            )
          ]
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Column - Two small content cards
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: totalColumnHeight,
                    child: Column(
                      children: [
                        _buildTripCard(
                          'Iconic Films', 
                          'https://i.imgur.com/1Y67qJG.jpeg',
                          height: (totalColumnHeight - 20) / 2,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>IconicFilmsPage()),);
                          }
                        ),
                        const SizedBox(height: 20),
                        _buildTripCard(
                          'His Writings', 
                          'https://i.imgur.com/EGTKhcj.jpeg',
                          height: (totalColumnHeight - 20) / 2,
                          onTap: () {
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RayWritingsPage()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // Second Column - One large content card
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: totalColumnHeight,
                      child: _buildTripCard(
                        'Roots of a Master: The Life of Satyajit Ray', 
                        'https://i.imgur.com/IEf7c4n.jpeg',
                        height: totalColumnHeight,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Lifetime()));
                        },
                        isLarge: true
                      ),
                    ),
                  ),
                ),

                // Third Column - Text content
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: totalColumnHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text(
                              "Learn about the Maestro  \nSatyajit Ray",
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                height: 0.8,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "Satyajit Ray (1921–1992) was a legendary Indian filmmaker, writer, illustrator, and composer, widely regarded as one of the greatest auteurs in world cinema. He is best known for his Apu Trilogy and a body of work that blends humanism, realism, and poetic storytelling. Beyond cinema, Ray made lasting contributions to Bengali literature and design, creating iconic characters like Feluda and Professor Shonku.",
                              
                              
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                color: Colors.white70,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.blue, width: 2),
                                image: const DecorationImage(
                                  image: NetworkImage('https://i.imgur.com/SJHKzmz.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomLeft,
                          child: FloatingActionButton.extended(
                            onPressed: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=>RayCardApp()));
                            },
                            backgroundColor: Colors.white.withOpacity(0.20),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            label: const Text('Learn More'),
                            icon: const Icon(Icons.arrow_forward),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(color: Colors.white.withOpacity(0.3)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTripCard(
    String title,
    String imagePath, {
      double height = 200,
      bool isLarge = false,
      VoidCallback? onTap,
      }
    ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 1,
          ),
          image: DecorationImage(
            image: NetworkImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: GoogleFonts.playfairDisplay(
                      color: Colors.white,
                      fontSize: isLarge ? 20 : 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}