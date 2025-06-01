import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For HapticFeedback
import 'package:google_fonts/google_fonts.dart';

class Topdistrictcarousel extends StatefulWidget {
  const Topdistrictcarousel({super.key});

  @override
  State<Topdistrictcarousel> createState() => _TopdistrictcarouselState();
}

class _TopdistrictcarouselState extends State<Topdistrictcarousel> {
  int _currentIndex = 2;

  final CarouselSliderController _carouselController = CarouselSliderController();

  final List<Map<String, String>> districts = [
    {'name': 'Rajshahi', 'image': 'assets/ku.jpg'},
    {'name': 'Chittagong', 'image': 'assets/chit.jpg'},
    {'name': 'Sylhet', 'image': 'assets/ru.jpg'},
    {'name': 'Barisal', 'image': 'assets/bari.jpg'},
    {'name': 'Old City', 'image': 'assets/old3.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        Text(
          'Top Districts',
          style: GoogleFonts.pacifico(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        Stack(
          children: [
            CarouselSlider.builder(
              itemCount: districts.length,
              carouselController: _carouselController,
              itemBuilder: (context, index, realIdx) {
                bool isFocused = index == _currentIndex;

                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              districts[index]['image']!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            if (!isFocused)
                              BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                                child: Container(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                          ],
                        ),
                        if (isFocused)
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    districts[index]['name']!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    "25 Listings",
                                    style: TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      // View all button action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colors.white.withOpacity(0.85),
                                      foregroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Text("View All"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                height: 360,
                initialPage: _currentIndex,
                enlargeCenterPage: true,
                viewportFraction: 0.5,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                enableInfiniteScroll: true,
                scrollPhysics: const BouncingScrollPhysics(),
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                scrollDirection: Axis.horizontal,
              ),
            ),

            // Left Navigation Button
            Positioned(
              top: 160,
              left: 8,
              child: GestureDetector(
                onTap: () {
                  HapticFeedback.lightImpact();
                  _carouselController.previousPage();
                },
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.arrow_back_ios_new,
                      size: 20, color: Colors.black87),
                ),
              ),
            ),

            // Right Navigation Button
            Positioned(
              top: 160,
              right: 8,
              child: GestureDetector(
                onTap: () {
                  HapticFeedback.lightImpact();
                  _carouselController.nextPage();
                },
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.arrow_forward_ios,
                      size: 20, color: Colors.black87),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Dots Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            districts.length,
            (index) => Container(
              width: 10,
              height: 10,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.black : Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),

        ElevatedButton(
          onPressed: () {
            // Explore More action
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text("Explore More"),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
