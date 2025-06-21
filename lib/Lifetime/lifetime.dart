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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text("Frames of a Life: The Story of Satyajit Ray",
          style: GoogleFonts.playfairDisplay(
            fontSize: 38,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
      backgroundColor:Color(0xFF1A1A1A),
      
      body: SingleChildScrollView(
        
        
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
                Stack(
            children: [
              // Container(
              //   padding: const EdgeInsets.all(20.0),
              //   width: double.infinity,
              //   height: 550,
              //   //height: MediaQuery.of(context).size.height,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
                    
              //       image: AssetImage('assets/guru.webp',),
              //       fit: BoxFit.cover,
              //       colorFilter: ColorFilter.mode(// it modifies how colors are displayed.
              //         Colors.black.withOpacity(0.6),
              //          BlendMode.darken,
              //          )
              //       )
              //   ),
          
              // ),
              Container(
  padding: const EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      'assets/guru.webp',
      width: double.infinity,
      height: 550,
      fit: BoxFit.cover,
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
                             fontSize: 25,
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                      ),
                      
                      ),
          
                      SizedBox(height: 16,),
                      Center(
                        child: Text('''From the artistic legacy of his family to the quiet corridors of Presidency College and the bustling studios of world cinema, Ray’s journey was one of vision and craft.
                      He grew up sketching and storytelling, eventually weaving those talents into timeless films that spoke a universal language.
                      Each chapter — from Shantiniketan to Cannes — reveals the making of a true cinematic poet.''',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
                          color: Colors.white70
                         ),
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
          
          ),
        )
        
        
      ),
    );
  }
}