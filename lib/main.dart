import 'package:flutter/material.dart';
import 'package:oldcity/ComposedMusic/combination.dart';
import 'package:oldcity/ComposedMusic/openingMusicCard.dart';
import 'package:oldcity/ComposedMusic/openingcard.dart';
import 'package:oldcity/Documentariesandshortfilms/documentariesopening.dart';
import 'package:oldcity/Gallery/glowingcards.dart';
import 'package:oldcity/GalleryPage/artgallery.dart';
import 'package:oldcity/Interviews/glowingcard.dart';
import 'package:oldcity/RayWritingPage/raywritingpage.dart';
import 'package:oldcity/SatyajitRaySandesh/sandeshdetails.dart';
import 'package:oldcity/SatyajitRaySandesh/satyajitraysandesh.dart';
import 'package:oldcity/SatyajitRaySandesh/satyajitraysection.dart';
import 'package:oldcity/SatyajitRaySandesh/sukumarsectionstate.dart';
import 'package:oldcity/awardsandachievements/recognitionoverview.dart';
import 'package:oldcity/districtHeroSection.dart';
import 'package:oldcity/heritagetheme.dart';
import 'package:oldcity/illustrationgallery/illustration.dart';
import 'package:oldcity/Homepage.dart';
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

           Districtherosection(),
          Container(
            padding: EdgeInsets.all(20),
           // color: Colors.red,
        height: 510, //  give a fixed height here
        child: HomePage1(),
      ),
    
    Container(
       padding: EdgeInsets.all(20),
      height: 590,
    child: Recognitionoverview(),
    ),

          Container(
             padding: EdgeInsets.all(20),
        height: 670, // 👈 give a fixed height here
        child: GlowingCarousel(),
      ),
   
      Container(
         padding: EdgeInsets.all(20),
        height: 610, // 👈 give a fixed height here
        child:      Documentariesopening(),
      ),

    Container(
       padding: EdgeInsets.all(20),
     // color: Colors.red,
      height: 690,
    child: Openingcard(),
    ),

          Container(
             padding: EdgeInsets.all(20),
        height: 670, // 👈 give a fixed height here
        child: GlowingCarouselInt(),
      ),

        Container(
           padding: EdgeInsets.all(20),
        height: 580, // 👈 give a fixed height here
        child: Satyajitraysandesh(),
      ),


 Container(
   padding: EdgeInsets.all(20),
  height: 560,
    child: Artgallery(),
    ),


 Container(

   padding: EdgeInsets.all(20)
   ,height: 560,
    child: IllustrationGallery(),
    ),

      








    // ConstrainedBox(constraints:BoxConstraints(
    //   maxHeight: MediaQuery.of(context).size.height,
      
    // ),
    // child: RayWritingsPage(),
    // )
          ],
        ),
      ),
    );
  }
}




// SizedBox(
            //   height: MediaQuery.of(context).size.height,
            //   child: RayCardApp(),
            // )
