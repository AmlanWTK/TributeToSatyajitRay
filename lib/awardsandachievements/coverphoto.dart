import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/awardsandachievements/showingawards.dart';


class CoverPhoto extends StatefulWidget {
  const CoverPhoto({super.key});

  @override
  State<CoverPhoto> createState() => _CoverPhotoState();
}

class _CoverPhotoState extends State<CoverPhoto> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: SingleChildScrollView(
        
        
        child: Column(
          children: [
              Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                
                width: double.infinity,
                height: 400,
                //height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    
                    image: NetworkImage('https://i.imgur.com/FI6xxhu.jpeg',),
                    fit: BoxFit.cover,
                    
                    )
                ),
              
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Padding(padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("The Maestro Satyajit Ray",
                    style: GoogleFonts.playfairDisplay(
                          decoration: TextDecoration.none,
                           fontSize: 40,
                           color: Colors.white,
                           fontWeight: FontWeight.bold
                    ),
                    
                    ),

                    SizedBox(height: 16,),
                    Text("Stamps released in honour of Satyajit Ray and his first -- and arguably greatest -- film 'Pather Panchali'",
                    style: GoogleFonts.openSans(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: Colors.white70
                     ),
                    ),
                    SizedBox(height: 32,),
                    
                  ],
                ),
                ),
              )
              )
          ],
        
        ),
        SizedBox(height: 10,),
          ],

        )
        
        
      ),
    );
  }
}