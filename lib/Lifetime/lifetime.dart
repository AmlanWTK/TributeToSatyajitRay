import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/Lifetime/childhoodsection.dart';

class Lifetime extends StatefulWidget {
  const Lifetime({super.key});

  @override
  State<Lifetime> createState() => _LifetimeState();
}

class _LifetimeState extends State<Lifetime> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF1A1A1A),
      body: SingleChildScrollView(
        
        
        child: Column(
          children: [
              Stack(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              //height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  
                  image: AssetImage('assets/images/Satback5.jpg',),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(// it modifies how colors are displayed.
                    Colors.black.withOpacity(0.6),
                     BlendMode.darken,
                     )
                  )
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
                           fontSize: 40,
                           color: Colors.white,
                           fontWeight: FontWeight.bold
                    ),
                    
                    ),

                    SizedBox(height: 16,),
                    Text('A timeless journey from the lands of Kolkata to globan cinema history',
                    style: GoogleFonts.openSans(
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
        Childhoodsection(),
          ],

        )
        
        
      ),
    );
  }
}