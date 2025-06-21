import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Artgallery extends StatefulWidget {
  const Artgallery({super.key});

  @override
  State<Artgallery> createState() => _ArtgalleryState();
}

class _ArtgalleryState extends State<Artgallery> {
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
  

final List<String> imageUrls=[
  'https://i.imgur.com/MW5bW7z.jpeg',
  'https://i.imgur.com/ZGaq1Nk.jpeg',
  'https://i.imgur.com/jNGRY2I.jpeg',
  'https://i.imgur.com/R3NaNLk.jpeg',
  'https://i.imgur.com/igs6jEH.jpeg',
  'https://i.imgur.com/fcNJRZK.jpeg',
  'https://i.imgur.com/hMO3RTP.jpeg',
  'https://i.imgur.com/QqK4zah.jpeg',
  'https://i.imgur.com/Lvckb1w.jpeg',
  'https://i.imgur.com/MBH2NO8.jpeg',
  'https://i.imgur.com/6RfU2Jt.jpeg',
  'https://i.imgur.com/VYenOsr.jpeg',
  'https://i.imgur.com/QoHHvS1.jpeg',
  'https://i.imgur.com/TrJvmTM.jpeg',
  'https://i.imgur.com/vsQIJBH.jpeg',
  'https://i.imgur.com/Lr70mkO.jpeg',
  'https://i.imgur.com/PqKnOx6.jpeg',
  'https://i.imgur.com/4CmZMrv.jpeg',
  'https://i.imgur.com/bgbOIxX.jpeg',
  'https://i.imgur.com/bHfmT7o.jpeg',
  'https://i.imgur.com/y7YcU8p.jpeg',
  'https://i.imgur.com/Xnt2yEs.jpeg',
  'https://i.imgur.com/rvbSdSV.jpeg',
  'https://i.imgur.com/PcsjsVq.jpeg',
  'https://i.imgur.com/zmnsxBP.jpeg',
  'https://i.imgur.com/T53PsCe.jpeg',
  'https://i.imgur.com/xSpcYya.jpeg',
  'https://i.imgur.com/yIyJ4RU.jpeg',
  'https://i.imgur.com/MjBRXNg.jpeg',
  'https://i.imgur.com/CXM4KvP.jpeg',
  'https://i.imgur.com/JN2rIYf.jpeg',
  'https://i.imgur.com/Rxn4ES5.jpeg',
  'https://i.imgur.com/87rO0Z8.jpeg',
  'https://i.imgur.com/w9OFRo0.jpeg',
  'https://i.imgur.com/VhlB6VA.png',
  'https://i.imgur.com/2b4gAV0.jpeg',
  'https://i.imgur.com/GsAYNte.jpeg',
  'https://i.imgur.com/PDedIfN.jpeg',
  'https://i.imgur.com/GzCZTpV.jpeg',
  'https://i.imgur.com/TghD9VE.jpeg',
  'https://i.imgur.com/xCarfCn.jpeg',
  'https://i.imgur.com/tnnaSl1.jpeg',
  'https://i.imgur.com/qANM7ug.jpeg',
  'https://i.imgur.com/HlQynZm.jpeg',
  'https://i.imgur.com/PIyF6cI.jpeg',
  'https://i.imgur.com/6ztuvGQ.jpeg',
  'https://i.imgur.com/baWF6PW.jpeg',
  'https://i.imgur.com/zYgim7k.jpeg',
  'https://i.imgur.com/MYnMBgR.jpeg',
  'https://i.imgur.com/4vUZIsd.jpeg',
  'https://i.imgur.com/gXmRtK8.jpeg',
  'https://i.imgur.com/2HtTmBB.jpeg',
  'https://i.imgur.com/IfKWSfA.jpeg',
  'https://i.imgur.com/gVsZMZx.jpeg',
  'https://i.imgur.com/qTLuDPk.jpeg',
  'https://i.imgur.com/Uema1ns.jpeg',

  



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
          child: Text("📷 Moments with the Master 📷",
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
