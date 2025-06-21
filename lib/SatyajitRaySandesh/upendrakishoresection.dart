import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class UpendrakishoreSection extends StatefulWidget {
  @override
  _UpendrakishoreSectionState createState() => _UpendrakishoreSectionState();
}

class _UpendrakishoreSectionState extends State<UpendrakishoreSection> {
  final List<String> imageUrls = [
    'https://i.imgur.com/uEhJkjC.png',
    'https://i.imgur.com/IodiDWx.png',
    'https://i.imgur.com/pHUNzN7.png',
    'https://i.imgur.com/EcHgB1J.png',
    'https://i.imgur.com/2VtRiCr.jpeg',
    'https://i.imgur.com/Ue2S9cZ.jpeg',
    'https://i.imgur.com/DKBY3U6.jpeg',
    'https://i.imgur.com/QKTqRRO.jpeg',
    'https://i.imgur.com/nT6eUjE.png',
  ];

  final ScrollController _scrollController = ScrollController();
  late Timer _autoScrollTimer;
  bool _isVisible = false;
  int _currentIndex = 0;
  final double cardWidth = 250;
  final double spacing = 12;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(Duration(seconds: 3), (_) {
      if (_isVisible) {
        _scrollRight();
      }
    });
  }

  void _scrollLeft() {
    if (_currentIndex > 0) {
      _currentIndex--;
      double prevOffset = _currentIndex * (cardWidth + spacing);
      _scrollController.animateTo(
        prevOffset,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double nextOffset = (_currentIndex + 1) * (cardWidth + spacing);

      if (nextOffset > maxScroll) {
        _currentIndex = 0;
        _scrollController.animateTo(
          0,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      } else {
        _currentIndex++;
        _scrollController.animateTo(
          nextOffset,
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    }
  }

  @override
  void dispose() {
    _autoScrollTimer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF1A1A1A),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title Section
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '🖋️ 1913: The Vision of Upendrakishore Ray Chowdhury 🖋️',
                style: GoogleFonts.playfairDisplay(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 12),

          // Description Text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '''In 1913, Upendrakishore Ray Chowdhury — a visionary polymath, writer, scientist, musician, and pioneering illustrator — founded Sandesh, a Bengali children’s magazine that would redefine educational storytelling in India.
              
He combined storytelling with science, art, history, music, and humor — all woven with a unique human warmth — to create a magazine that didn’t just entertain children, but awakened their imagination and intellect.

A master of woodcut and halftone illustration, Upendrakishore meticulously crafted the magazine’s early visuals himself, blending artistic tradition with modern printing precision.

More than just a magazine, Sandesh became a cultural cornerstone in Bengal, inspiring generations of children to dream, question, and explore.

His legacy would be carried forward by his son Sukumar Ray, and later, his grandson Satyajit Ray — each adding their own genius to the evolving story of Sandesh.''',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
          SizedBox(height: 20),

          // Image Carousel with VisibilityDetector
          VisibilityDetector(
            key: Key('upendrakishore-gallery'),
            onVisibilityChanged: (info) {
              setState(() {
                _isVisible = info.visibleFraction > 0.3;
              });
            },
            child: Row(
              children: [
                // Left arrow
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: _scrollLeft,
                ),

                // Scrollable images
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: imageUrls.map((url) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                url,
                                width: cardWidth,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),

                // Right arrow
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onPressed: _scrollRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
