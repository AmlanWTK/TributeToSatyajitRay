import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/Documentariesandshortfilms/documentarydetails.dart';

class Documentariesopening extends StatelessWidget {
  const Documentariesopening({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.all(20),
        child: Padding(padding: EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Satyajit Ray: The Documentary Lens",
              style: GoogleFonts.playfairDisplay(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 10,),
              Text(
                ''''While Satyajit Ray is best known for his narrative masterpieces,his documentaries and short films reveal a quieter, observational genius.Through these works, Ray captured reality with the same poetic touchthat defined his fiction — thoughtful, patient, and profoundly humane.From the visual biography of Rabindranath Tagore to the soul-stirring short Two,Ray explored education, culture, disability, and childhood without spectacle or sentimentality.\n\nThese films reflect his deep empathy and eye for detail,offering windows into people’s lives, social conditions, and forgotten corners of history.Whether produced for government archives or created independently,his short-form work stands as a testament to his versatility and vision.\n\nEach film, though brief in length, carries Ray’s signature depth and elegance.Together, they form a vital part of his cinematic legacy — often overlooked, but never overshadowed.

Satyajit Ray’s documentary lens was not only artistic —it was honest, humble, and timeless in its pursuit of truth.These works remain essential viewing for anyone seeking to understand the full scopeof his genius, compassion, and unparalleled command of the medium.Here lies another side of the maestro — precise, powerful, and profoundly real.''',
style: GoogleFonts.openSans(
  fontSize: 15,
  color: Colors.white70
),
              ),
              SizedBox(height: 12,),
              ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Documentarydetails()));
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )
              ),
              
              child: Text("Discover More",
              style: GoogleFonts.openSans(
                color: Colors.white,
              ),
              )
              
              )
            ],
            )
            ),
            SizedBox(width: 20,),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network('https://i.imgur.com/axnj0e6.jpeg',
              width: 630,
              height: 430,
              fit: BoxFit.cover,
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}