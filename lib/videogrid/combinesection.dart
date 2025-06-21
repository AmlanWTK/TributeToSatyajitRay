// lib/combined_sections.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/RayWritingPage/Screenplay/screenplayscripts.dart';
import 'package:oldcity/videogrid/rayscriptsection.dart';
import 'package:oldcity/videogrid/videogridpage.dart';
import 'package:oldcity/videogrid/writingstyle.dart';

class CombinedSections extends StatelessWidget {
  const CombinedSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text("  '🎬 Screenplay & Script Showcase'",
          style: GoogleFonts.playfairDisplay(
            fontSize: 38,
            color: Colors.white,
            fontWeight: FontWeight.bold
            
            ),
          ),
        ),
      ),
         backgroundColor: const Color(0xFF121212),
      body: 
      
       ListView(
        padding: EdgeInsets.only(top: 10),
        children: [
         const SizedBox(
            height: 400,
            child: Screenplayscripts(),
          ),
         SizedBox(
          height: 1600,
          child: VideoGridPage(),
         ),
          const SizedBox(
            height: 400,
            child: Writingstyle(),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: const Rayscriptsection(),
          ),
        ],
      ),
    );
  }
}
