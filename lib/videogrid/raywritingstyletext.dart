import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Raywritingstyletext extends StatefulWidget {
  const Raywritingstyletext({super.key});

  @override
  State<Raywritingstyletext> createState() => _RaywritingstyletextState();
}

class _RaywritingstyletextState extends State<Raywritingstyletext> {
  bool _visible=false;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('raywritingstyletext-key'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.1 && !_visible) {
          setState(() {
            _visible = true; // Trigger animation only once
          });
        }
      },
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          
          child: _visible? AnimationLimiter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:AnimationConfiguration.toStaggeredList(
                duration: Duration(milliseconds: 1100),
              childAnimationBuilder:(widget)=>SlideAnimation(
                verticalOffset: 50,
                child: FadeInAnimation(child: widget)
                ), 
              children:[
                // Text("RAY'S SCRIPT-WRITING STYLE",
                // style: GoogleFonts.pacifico(
                //   fontSize: 28,
                //   fontWeight: FontWeight.bold,
                //   color: Colors.grey,
                //   letterSpacing: 1.5,
                // ),
                // ),
                Text("Satyajit Ray: The Storyteller’s Script",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 15,),
                Text('Mainstream film script-writing developed in India in the 1930s with the coming of the studio era. The format of a film script generally included the screenplay, dialogues and shot transitions.\n\n' 
            
            'But Ray did not adhere to the fixed idiom of script-writing and devised a painstaking process that included individual frames sketched-out,with musical notations as well as camera movements and transitions between sequences and shots extensively detailed on the page before the shoot.\n\n The act of reading Ray’s film scripts are fascinating owing to its personalised format, that often included scribbles, sketches, doodles, music notations on the margins of the pages, that highlight Ray’s artistic process further.',
            
            style: GoogleFonts.openSans(
              fontSize: 15,
              color: Colors.white,
              height: 1.5,
             ),
            )
              ]
              )
              
            ),
          ):Container(),
        ),
      ),
    );
  }
}