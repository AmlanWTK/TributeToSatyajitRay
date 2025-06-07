import 'package:flutter/material.dart';
import 'package:oldcity/ComposedMusic/openingcard.dart';
import 'package:oldcity/Gallery/glowingcards.dart';
import 'package:oldcity/awardsandachievements/recognitionoverview.dart';
import 'package:oldcity/districtHeroSection.dart';
import 'package:oldcity/heritagetheme.dart';
import 'package:oldcity/topmovies.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heritage Districts',
      theme: blendedTheme,   // <-- Apply here
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [



            Openingcard(),



      //      Districtherosection(),

      //     SizedBox(
      //   height: 570, //  give a fixed height here
      //   child: HomePage1(),
      // ),

      // Recognitionoverview(),
      // SizedBox(height: 40,),

      //     SizedBox(
      //   height: 670, // 👈 give a fixed height here
      //   child: GlowingCarousel(),
      // ),
          ],
        ),
      ),
    );
  }
}
