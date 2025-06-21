import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/ComposedMusic/combination.dart';
class Openingcard extends StatelessWidget {
  const Openingcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFF121212),
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text('🎼 Cinema in Sound: Ray’s Musical Touch 🎼',
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold
          
          ),
          ),
        ),
       ),
      body: Center(
      child: Container(
        
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
     
      
         // margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
         margin: EdgeInsets.all(18),
      clipBehavior: Clip.antiAlias, 
        
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SizedBox(
            // Total height and width of the whole card (including image)
            height: 560, // You can increase this to add more text space
            width: double.infinity,  // Adjust width of the entire card + image
            child: Stack(
              clipBehavior: Clip.none, // Allows image to overflow above the card
              children: [
          Positioned(
            left: 0,
            top: 80, 
            right: 0,
            bottom: 0,// Pushes the card down below the floating image
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Stack(
          children: [
            // Background Image
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                
                child: Image.network(
                  'https://i.imgur.com/MD35JlS.jpeg',
                  width: 1480,
                  height: 460,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          
            // Blur Overlay
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), // Adjust blur intensity here
              child: Container(
                width: 1480,
                height: 460,
                color: Colors.black.withOpacity(0.3), // Optional dark overlay for readability
              ),
            ),
          
            // Content on top of the blurred background
            Container(
              width: 1400,
              height: 460,
              padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
              child: Column(
                children: [
                  const SizedBox(height: 130),
                  Text(
                    "Satyajit Ray: Composer of Emotions",
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "🎵 More than a Director\nSatyajit Ray wasn’t just a visionary filmmaker — he was also a brilliant music composer. From the haunting melodies of *Pather Panchali* to the beats of *Goopy Gyne Bagha Byne*, Ray’s musical touch was subtle, soulful, and cinematic.",
                    
                    style: GoogleFonts.openSans(
                      fontSize: 19,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Combination()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                        child: Text(
                          "Listen To Music",
                          style: GoogleFonts.playfairDisplay(fontSize: 14,
                          color: Colors.white
                          ),
                        ),
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
          
          
          
                // Floating image positioned above the card
                Positioned(
                  top: 0,    // Pushes image to the top of the stack
                  left: 320,  // Moves the image to the right (center it)
                  child: Container(
                    width: 780,   // Image width
                    height: 280,  // Image height
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16), // Rounded image corners
                      image: const DecorationImage(
                        image: NetworkImage("https://i.imgur.com/h0zjB7v.jpeg"), // Your image
                        fit: BoxFit.cover, // Ensures image covers full area
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4), // Shadow for image
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
      ),
    );
  }
}
