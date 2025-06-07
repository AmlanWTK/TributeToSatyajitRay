// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Openingcard extends StatelessWidget {
//   const Openingcard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       color: Colors.white.withOpacity(0.1),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(24)
//       ),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           SizedBox(
//             height: 400,
//             width: 600,
//             child: Container(
//               margin: EdgeInsets.only(top: 50),
//               padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
//               decoration: BoxDecoration(
//                    image: DecorationImage(
//                     image: NetworkImage("https://i.imgur.com/h0zjB7v.jpeg",),
//                     fit: BoxFit.cover,
//                     colorFilter: ColorFilter.mode(
//                       Colors.black.withOpacity(0.3), 
//                       BlendMode.darken,
//                       )
//                     ),
//                     color: Color(0xFF1C1C1C),
//                     borderRadius: BorderRadius.circular(24),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.3),
//                         blurRadius: 12,
//                         offset: Offset(0, 4)
//                       )
//                     ]
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,//Take up only as much space as needed by its children
//                children: [
//                 SizedBox(height: 80,),
//                 Text("Satyajit Ray: Composer of Emotions",
//                 style: GoogleFonts.playfairDisplay(
//                   fontSize: 24,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
            
//                 ),
//                 textAlign: TextAlign.center,
//                 ),
//                 Text("🎵 More than a Director Satyajit Ray wasn’t just a visionary filmmaker — he was also a brilliant music composer. With a deep appreciation for Indian classical music and Western orchestration, Ray composed scores that elevated his films to emotional masterpieces. From the haunting melodies of Pather Panchali to the rhythmic beats of Goopy Gyne Bagha Byne, Ray’s musical touch was subtle, soulful, and deeply cinematic.",
//                 style: GoogleFonts.openSans(
//                   fontSize: 15,
//                   color: Colors.white70
//                 ),
//                 textAlign: TextAlign.center,
//                 )
//                ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Openingcard extends StatelessWidget {
  const Openingcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // Total height and width of the whole card (including image)
        height: 340, // You can increase this to add more text space
        width: 300,  // Adjust width of the entire card + image
        child: Stack(
          clipBehavior: Clip.none, // Allows image to overflow above the card
          children: [

            // Main content card (with text)
            Positioned(
              top: 80, // Distance from top to push the card down below the image
              child: Container(
                width: 300, // Width of the text card (same as SizedBox width)
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1C), // Dark card background
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), // Shadow color
                      blurRadius: 12, // How soft the shadow is
                      offset: const Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                padding: const EdgeInsets.fromLTRB(16, 100, 16, 16),
                // Top padding is high to make space for image floating above
                child: Column(
                  children: [

                    // Title Text
                    Text(
                      "Satyajit Ray: Composer of Emotions",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 20, // Change to make title bigger/smaller
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 12), // Spacing below title

                    // Description Text
                    Text(
                      "🎵 More than a Director\nSatyajit Ray wasn’t just a visionary filmmaker — he was also a brilliant music composer. From the haunting melodies of *Pather Panchali* to the beats of *Goopy Gyne Bagha Byne*, Ray’s musical touch was subtle, soulful, and cinematic.",
                      style: GoogleFonts.openSans(
                        fontSize: 13, // Change font size of description
                        color: Colors.white70, // Slightly faded white text
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),

            // Floating image positioned above the card
            Positioned(
              top: 0,    // Pushes image to the top of the stack
              left: 40,  // Moves the image to the right (center it)
              child: Container(
                width: 220,   // Image width
                height: 120,  // Image height
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
    );
  }
}
