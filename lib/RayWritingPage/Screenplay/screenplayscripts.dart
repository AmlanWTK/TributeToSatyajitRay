import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/RayWritingPage/Screenplay/satyajitrayvideos.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';
class Screenplayscripts extends StatelessWidget {
  const Screenplayscripts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
   
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            child: Image.asset(
              'assets/images/gurumosai2.png',
              fit: BoxFit.cover,
            ),
          ),

          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.transparent,
                ],
              ),
            ),
          ),

          // Text Content
          Positioned(
            bottom: 80,
            left: 20,
            right: 20,
            child: AnimationLimiter(
              child: AnimationConfiguration.synchronized(
                duration: const Duration(milliseconds: 1200),
                child: SlideAnimation(
                  verticalOffset: 70,
                  child: FadeInAnimation(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '🎬 Screenplay & Script Showcase',
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Satyajit Ray wasn't just a legendary director — he crafted "
                          "each film from the ground up. His screenplays were "
                          "thoughtful, poetic, and powerful. This showcase takes you "
                          "into the heart of his cinematic writing.",
                          style: GoogleFonts.ptSerif(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.9),
                            height: 1.6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
