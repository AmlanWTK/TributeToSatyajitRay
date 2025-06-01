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
                'assets/guru.webp',
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
                                color: Colors.white.withOpacity(0.3),
                              ),
                            ),
                            TextSpan(text: " $quote "),
                            TextSpan(
                              text: "”",
                              style: TextStyle(
                                fontSize: 60,
                                color: Colors.white.withOpacity(0.3),
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
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


           
            Positioned(
              bottom: -50,
              left: 150,
              right: 150,
              child: Card(
                elevation: 5,
                shape: theme.cardTheme.shape,
                color: theme.cardTheme.color,
                shadowColor: theme.cardTheme.shadowColor,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: "Search District",
                            border: InputBorder.none,
                            icon: Icon(Icons.search),
                            hintStyle: TextStyle(color: Colors.white70),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      DropdownButton<String>(
                        value: "All",
                        items: ["All", "Coastal", "Hill", "Historical"]
                            .map((category) => DropdownMenuItem(
                                  value: category,
                                  child: Text(category),
                                ))
                            .toList(),
                        onChanged: (val) {},
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: theme.colorScheme.primary,
                        ),
                        child: const Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 80),
      ],
    );
  }
}
