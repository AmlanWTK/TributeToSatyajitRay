import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/SatyajitRaySandesh/sandeshdetails.dart';
import 'package:oldcity/awardsandachievements/combination.dart';

class Satyajitraysandesh extends StatelessWidget {
  const Satyajitraysandesh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      
        title: Center(
          child: Text("🗞️ From Upendrakishore to Satyajit: The Sandesh Saga 📜",
          style: GoogleFonts.playfairDisplay(
            fontSize: 38,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
      body: Center(
        
        child: Container(
          
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
             color: const Color(0xFF1A1A1A),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 6)
            )
          ]
        ),
         // subtle card background
          
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
                    'https://i.imgur.com/JLtXMDv.jpeg',
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
                        "Satyajit Ray and the Revival of Sandesh",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                       '''Satyajit Ray’s connection with Sandesh was both personal and profound.
Founded in 1913 by his grandfather Upendrakishore and later edited by his father Sukumar Ray, Sandesh was a beloved Bengali children’s magazine. In 1961, Ray revived the magazine, taking on roles as editor, writer, and illustrator.

Through Sandesh, he introduced iconic characters like Feluda and Professor Shonku, blending science, mystery, and imagination. Ray’s revival of the magazine wasn’t just about nostalgia — it was a mission to spark creativity and curiosity in young minds, continuing a family legacy with his own unique vision.

His hand-drawn illustrations, playful editorials, and thought-provoking stories made Sandesh both educational and entertaining.
Under Ray's guidance, the magazine became a space where art met intellect and imagination ran free.
It remains a treasured part of Bengali literary heritage, shaped by three generations of Rays.''',


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
                            MaterialPageRoute(builder: (context) => Sandeshdetails()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:Colors.blueGrey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text("View Details",
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
      ),
    );
  }
}
