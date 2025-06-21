import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/awardsandachievements/showingawards.dart';
import 'package:oldcity/awardsandachievements/coverphoto.dart';

class CombinedPage extends StatelessWidget {
  const CombinedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text("👑 The Recognitions of a Master 👑",
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                CoverPhoto(), // The cover photo section
                Showingawards(), // The awards timeline section
              ],
            ),
          ),
        ),
    );
   
  }
}
