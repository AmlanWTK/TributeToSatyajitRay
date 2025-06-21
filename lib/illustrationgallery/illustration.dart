import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class IllustrationGallery extends StatefulWidget {
  const IllustrationGallery({super.key});

  @override
  State<IllustrationGallery> createState() => _IllustrationGalleryState();
}

class _IllustrationGalleryState extends State<IllustrationGallery> {
  final ScrollController _scrollController = ScrollController();
  late Timer _autoScrollTimer;

  // Image card properties
  final double cardWidth = 260;
  final double spacing = 20;

  // Current index to track which image is being shown
  int _currentIndex = 0;

  // Track if widget is visible on screen
  bool _isVisible = false;

  // Image URLs
  final List<String> imageUrls = [
   

'https://i.imgur.com/NVtl343.jpeg',
  'https://i.imgur.com/d0j0GYp.png',
  'https://i.imgur.com/ARakVHP.jpeg',
  'https://i.imgur.com/vik5TqP.jpeg',
  'https://i.imgur.com/B3yZpbY.png',
  'https://i.imgur.com/6Kk0BNI.png',
  'https://i.imgur.com/5LvtN1K.jpeg',
  'https://i.imgur.com/wI4WfSx.png',
  'https://i.imgur.com/GifPgBH.jpeg',
  'https://i.imgur.com/JUYlUqn.jpeg',
  'https://i.imgur.com/NCzPC0O.jpeg',
  'https://i.imgur.com/uQW8C3e.jpeg',
  'https://i.imgur.com/mVYAtnq.jpeg',

  'https://i.imgur.com/0e053hs.jpeg',
  'https://i.imgur.com/Ej0Ax7W.jpeg',

  'https://i.imgur.com/pmQSzUy.jpeg',
  'https://i.imgur.com/zLqXDbW.jpeg',
  'https://i.imgur.com/iYsFqQw.jpeg',
  'https://i.imgur.com/SG2VasI.jpeg',
  'https://i.imgur.com/W8bvweC.jpeg',
  'https://i.imgur.com/3zU2LWT.jpeg',
  'https://i.imgur.com/zpWWkQe.jpeg',
  'https://i.imgur.com/rAQHBFw.jpeg',
  'https://i.imgur.com/HSET6tg.jpeg',
  'https://i.imgur.com/gmb6WUZ.jpeg',

  'https://i.imgur.com/dgD4ppH.jpeg',
  'https://i.imgur.com/gKMt9Tv.jpeg',
  'https://i.imgur.com/g0jMhGg.jpeg',
  'https://i.imgur.com/1waLMmx.jpeg',
  'https://i.imgur.com/nBxosHT.jpeg',
  'https://i.imgur.com/5vr1jiL.jpeg',
  'https://i.imgur.com/rjbaeJx.png',
  'https://i.imgur.com/ToFqnXM.png',
  'https://i.imgur.com/50J53cs.png',
  'https://i.imgur.com/jwU7NeX.png',
  'https://i.imgur.com/XflGKKA.png',
  'https://i.imgur.com/biQyGsO.png',
  'https://i.imgur.com/RGpN5GA.png',
  'https://i.imgur.com/zQ7pIbT.jpeg',
  'https://i.imgur.com/HXPuolF.png',
  'https://i.imgur.com/uOz78xy.png',
  'https://i.imgur.com/8scxthM.jpeg',
  'https://i.imgur.com/Fmwjbwx.jpeg',
  'https://i.imgur.com/waU7zbz.jpeg',
  'https://i.imgur.com/mS8xu3l.jpeg',
  'https://i.imgur.com/eW4f86S.jpeg',
  'https://i.imgur.com/gInLFVQ.jpeg',
  

  ];


  @override
  void initState() {
    super.initState();

    // Start auto-scrolling every 5 seconds, only if visible
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(Duration(seconds: 3), (_) {
      if (_isVisible) {
        _scrollRight(); // Only scroll if widget is visible
      }
    });
  }

  // Scrolls to next image card
  void _scrollRight() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double nextOffset = (_currentIndex + 1) * (cardWidth + spacing);

      if (nextOffset > maxScroll) {
        _currentIndex = 0; // Reset to start if at end
        _scrollController.animateTo(0,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      } else {
        _currentIndex++;
        _scrollController.animateTo(nextOffset,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      }
    }
  }

  // Scrolls to previous image card
  void _scrollLeft() {
    if (_scrollController.hasClients) {
      if (_currentIndex > 0) {
        _currentIndex--;
        double prevOffset = _currentIndex * (cardWidth + spacing);
        _scrollController.animateTo(prevOffset,
            duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
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
    return Scaffold(
      
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text("✒️ Ink & Imagination: The World of Ray ✒️",
          style: GoogleFonts.playfairDisplay(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          
          decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
            color:  Color(0xFF1A1A1A),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 6),
        
              )
            ]
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // // Title
              // Center(
              //   child: Text(
              //     "Moments with the Master",
              //     style: GoogleFonts.playfairDisplay(
              //       fontSize: 38,
              //       fontWeight: FontWeight.bold,
              //       letterSpacing: 1.2,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 20),
        
              // Scrollable row with visibility detection
              VisibilityDetector(
                key: Key('illustration-gallery'),
                onVisibilityChanged: (info) {
                  // Check how much of the widget is visible
                  setState(() {
                    _isVisible = info.visibleFraction > 0.3;
                  });
                },
                child: Row(
                  children: [
                    // Scroll Left Button
                    IconButton(
                      color: Colors.blueGrey,
                      icon: Icon(Icons.arrow_back_ios_new),
                      onPressed: _scrollLeft,
                    ),
        
                    // Image Gallery Scroll Area
                    Expanded(
                      child: SingleChildScrollView(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: imageUrls.map((url) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                              width: cardWidth,
                              height: 340,
                               decoration: BoxDecoration(
             //color: const Color(0xFF1A1A1A),
             color: const Color(0xFF222222),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 6)
              )
            ]
          ),
                       
                              child: ClipRRect(
                                
                                borderRadius: BorderRadius.circular(20),
                               child: FittedBox(
                                fit: BoxFit.contain, // This ensures full image is shown
                                child: Image.network(
                                  url,
                                ),
                              ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
        
                    // Scroll Right Button
                    IconButton(
                      color: Colors.blueGrey,
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: _scrollRight,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
