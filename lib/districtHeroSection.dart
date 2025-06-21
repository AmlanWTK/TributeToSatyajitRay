import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Districtherosection extends StatelessWidget {
  const Districtherosection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final quote="The Director is the only Person who knows what the Film is About";
    final author="Satyajit Ray";

    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: 600,
              width: double.infinity,
              child: Image.asset(
                'assets/images/Satback5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 600,
              color: Colors.black.withOpacity(0.4),
            ),


           // Quote styling with tighter spacing
            Positioned.fill(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Quote with inline quotation marks
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: theme.textTheme.headlineLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            height: 1.3,
                          ),
                          children: [
                            TextSpan(
                              text: "“",
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(text: " $quote "),
                            TextSpan(
                              text: "”",
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Author attribution
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          "— $author",
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


          
          ],
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
