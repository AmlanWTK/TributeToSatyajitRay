import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Musicpage extends StatelessWidget {
  const Musicpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
         color: Colors.white.withOpacity(0.1),
        margin: EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network("https://i.imgur.com/MW5bW7z.jpeg",
                fit: BoxFit.cover,
                )
              ),
               // Blur Overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6), // Adjust blur intensity here
            child: Container(
              width: double.infinity,
              height: 500,
              color: Colors.black.withOpacity(0.3), // Optional dark overlay for readability
            ),
          ),

          Padding(padding: EdgeInsets.all(12),
           child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Expanded(
            flex: 3,
             child: Center(
               child: Column(
                mainAxisSize: MainAxisSize.min,
                
                crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("The Musical Genius of Satyajit Ray\n",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                
                ),
               
             Text(
        'Did you know Satyajit Ray composed the music for most of his films?\n\n'
        'Beyond being a legendary filmmaker, Ray was a self-taught composer with a deep love for both Western classical music and Indian traditions. '
        'His scores were known for their subtlety, emotional depth, and narrative power.\n\n'
        'From the soulful melodies of *Pather Panchali* to the whimsical and rhythmic brilliance of *Goopy Gyne Bagha Byne*, '
        'Ray\'s music elevated the cinematic experience, blending silence, sound, and storytelling with unmatched grace. '
        'His use of minimalist motifs, folk influences, and innovative instrumentation made his film music as memorable as his direction.',
        style: GoogleFonts.openSans(
                   fontSize: 18,
                   color: Colors.white70
                   
                 ),
               )
               
                   ],
               ),
             ),
           ),
            Flexible(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("https://i.imgur.com/ZGaq1Nk.jpeg",
                width: 600,
                height: 470,
                fit: BoxFit.cover,
                ),
              
              ),
            )
          ],
        ),
          
          )
        
            ],
          ),
        ),
        
      
    );
  }
}