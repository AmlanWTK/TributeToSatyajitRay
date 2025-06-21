import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/SatyajitRaySandesh/sandesheffects.dart';
import 'package:oldcity/SatyajitRaySandesh/satyajitraysection.dart';
import 'package:oldcity/SatyajitRaySandesh/sukumarsectionstate.dart';
import 'package:oldcity/SatyajitRaySandesh/upendrakishoresection.dart';

class Sandeshdetails extends StatelessWidget {
   Sandeshdetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text("Satyajit Ray’s Sandesh: Where Art Meets Imagination",
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network("https://i.imgur.com/rT6iErF.jpeg",
                  width: double.infinity,
                  height: 483,
                  fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 55,),

                Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0.0),
  child: UpendrakishoreSection(),
),
SizedBox(height: 40,),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0.0),
  child: Sukumarsectionstate(),
),

SizedBox(height: 40,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0.0),
  child: Satyajitraysection(),
),


SizedBox(height: 40,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0.0),
  child: Sandesheffects(),
),



              ],
            ),
          ),
        ),
      ),
    );
  }
}