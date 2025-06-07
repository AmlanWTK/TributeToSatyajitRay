import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Writingstyle extends StatefulWidget {
  const Writingstyle({super.key});

  @override
  State<Writingstyle> createState() => _WritingstyleState();
}

class _WritingstyleState extends State<Writingstyle> {
    bool _visible=false;
  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key('writingstyle.dart-key'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.1 && !_visible) {
          setState(() {
            _visible = true; // Trigger animation only once
          });
        }
      },
      child: Scaffold(
        body: SizedBox(
          height: 400, // Entire page height fixed to 400
          width: double.infinity,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/Satback2.jpg',
                fit: BoxFit.cover,
              ),
              Center(
                child: _visible? AnimationLimiter(
                  child:AnimationConfiguration.synchronized(
                    duration: Duration(milliseconds: 1200),
                    child: SlideAnimation(
                      verticalOffset: 70,
                      child: FadeInAnimation(
                        child: Text(
                    "Ray's Script Writing Style",
                    style: GoogleFonts.concertOne(
                      fontSize: 48,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.7),
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                        )
                      )
                    )
       
                ):Container()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
