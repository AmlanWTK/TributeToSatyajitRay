
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Sandesheffects extends StatefulWidget {
  const Sandesheffects({super.key});

  @override
  State<Sandesheffects> createState() => _SandesheffectsState();
}

class _SandesheffectsState extends State<Sandesheffects> {
  final List<String> imageUrls = [
    'https://i.imgur.com/uEyQX4j.jpeg',
    'https://i.imgur.com/CwpdkQf.jpeg',
    'https://i.imgur.com/XPmulCQ.jpeg',
    'https://i.imgur.com/ccgMBya.jpeg',
    'https://i.imgur.com/R3DYfih.jpeg',
    'https://i.imgur.com/0EAeYDp.jpeg',
    'https://i.imgur.com/PNAgr3X.jpeg',
    'https://i.imgur.com/efugVAi.jpeg',
    'https://i.imgur.com/fC0U7nE.jpeg',
    'https://i.imgur.com/2AwP9m3.jpeg'
  ];

  final ScrollController _scrollController = ScrollController();
  Timer? _autoScrollTimer;
  int _currentIndex = 0;
  bool _isVisible = false;

  final double cardWidth = 250;
  final double spacing = 12;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  // Start timer for auto-scrolling every 5 seconds
  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(Duration(seconds: 5), (_) {
      if (_isVisible) _scrollRight();
    });
  }

  // Manual scroll left
  void _scrollLeft() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _scrollController.animateTo(
        _currentIndex * (cardWidth + spacing),
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  // Auto or manual scroll right
  void _scrollRight() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double nextOffset = (_currentIndex + 1) * (cardWidth + spacing);
      if (nextOffset > maxScroll) {
        _currentIndex = 0;
        _scrollController.animateTo(0,
            duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
      } else {
        _currentIndex++;
        _scrollController.animateTo(nextOffset,
            duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
      }
    }
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
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
          // Section title
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '🌱 How Sandesh Influenced Bengali Children’s Literature',
                style: GoogleFonts.playfairDisplay(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 12),

          // Paragraph
          Padding(
            padding: const EdgeInsets.all(8.0),
          child: Text(
                '''IFrom its inception in 1913, Sandesh was more than just a magazine — it was a revolution in how children’s literature was imagined in Bengal. At a time when most literature for children was moralistic or didactic, Sandesh introduced storytelling that was fun, intelligent, artistic, and deeply rooted in curiosity.
It encouraged children to think critically, laugh freely, and embrace both science and imagination. Through short stories, riddles, poems, illustrations, and later detective and science fiction tales, Sandesh created a multidimensional reading experience that no other children's publication offered at the time.
The magazine became a launchpad for new genres in Bengali children's literature — from literary nonsense and satire (through Sukumar Ray), to adventure and mystery (through Feluda), and even to science fiction (through Professor Shonku).
Many Bengali readers, writers, and artists grew up reading Sandesh and were inspired by its unique blend of intellect and imagination. Its influence can still be felt today in how Bengali literature views storytelling for the young — not as simple tales, but as windows into the world.''',
                      
 style: GoogleFonts.openSans(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
          SizedBox(height: 20),

          // Gallery with visibility detection
          VisibilityDetector(
            key: Key('sandesh-gallery'),
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

                // Image scroll section
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: imageUrls
                            .map((url) => Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      url,
                                      width: 250,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ))
                            .toList(),
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
