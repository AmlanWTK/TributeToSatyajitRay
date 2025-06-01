import 'package:flutter/material.dart';
import 'package:oldcity/RayWritingPage/Screenplay/satyajitrayvideos.dart';
import 'package:oldcity/RayWritingPage/feludaHomeLoader.dart';
import 'package:oldcity/RayWritingPage/raywritingpage.dart';
import 'package:oldcity/RayWritingPage/Screenplay/screenplayscripts.dart';
import 'package:oldcity/RayWritingPage/shonkuHomeloader.dart';

import 'package:oldcity/designingwidget/backgroundwrapper.dart';
import 'package:oldcity/districtHeroSection.dart';
import 'package:oldcity/heritagetheme.dart';
import 'package:oldcity/movietest.dart';
import 'package:oldcity/topdistrictcarousel.dart';
import 'package:oldcity/topmovies.dart';
import 'package:oldcity/travelherosection.dart';

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
      body: BackgroundWrapper(
        imagePath: 'assets/images/background.jpg',
        blurIntensity: 8.0,
        darkenOpacity: 0.4,
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

               ConstrainedBox(
       constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
       child:
       //YoutubePlayerScreen(),
       Satyajitrayvideos()
       ),


      //         ConstrainedBox(
      //  constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      //  child:FeludaHomeLoader(),
      //  ),  

  // ConstrainedBox(
  //      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
  //      child:ShonkuHomeLoader(),
  //      ),  



    //           Districtherosection(),
    //           const SizedBox(height: 00),
    //           ConstrainedBox(
    //   constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      
    //   child: HomePage1(),
    // ),


            ],
          ),
        ),
      ),
    );
  }
}