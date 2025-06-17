import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Openingmusiccard extends StatelessWidget {
  const Openingmusiccard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 460,
        width: 1400,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 80,
              child:ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Stack(
                  children: [
                    Image.network(
                      'https://i.imgur.com/MD35JlS.jpeg',
                      height: 460,
                      width: 1400,
                      fit: BoxFit.cover,
      
      
                    ),
                    BackdropFilter(
                      filter:ImageFilter.blur(sigmaX: 6,sigmaY: 6,),
                      child: Container(
                        width: 1400,
                        height: 460,                      color: Colors.black.withOpacity(0.6),
                      ),
                       ),
                    
                    Container(
                      width: 1400,
                      height: 460,
                      padding: EdgeInsets.fromLTRB(16, 100, 16, 16),
                      child: Column(
                        children: [
                          SizedBox(height: 130,),
                          Text("Satyajit Ray: Composer Of Emotions",
                          style: GoogleFonts.playfairDisplay(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 12,),
                          Text("🎵 More than a Director\nSatyajit Ray wasn’t just a visionary filmmaker — he was also a brilliant music composer. From the haunting melodies of *Pather Panchali* to the beats of *Goopy Gyne Bagha Byne*, Ray’s musical touch was subtle, soulful, and cinematic.",
      
                          style: GoogleFonts.openSans(
                            color: Colors.white70,
                            fontSize: 19
                          ),
                          textAlign: TextAlign.center,
                ),
                Spacer(),
                Padding(padding: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/music');
                }, 
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),

                  ),
                ) ,

                child: Text("Listen To Music",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 14,
                ),
                )
                ),
                )
      
      
                        ],
                      ),
                    )
                  ],
                ),
      
              ) 
              ),
              Positioned(
                top: 0,
                left: 320,
                
                child: Container(
                  width: 780,
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://i.imgur.com/h0zjB7v.jpeg"),
                    fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 8,
                        offset: Offset(0, 4)
                      )
                    ]
                  ),
                )
                )
          ],
        ),
      ),
    );
  }
}