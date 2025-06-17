import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

class GlowingCarouselInt extends StatefulWidget {
  const GlowingCarouselInt({super.key});

  @override
  State<GlowingCarouselInt> createState() => _GlowingCarouselIntState();
}

class _GlowingCarouselIntState extends State<GlowingCarouselInt> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;
  bool _animate = false;

  Timer? _carouselTimer;
  Timer? _glowTimer;

  final List<Map<String, dynamic>> books = [
    {
      'imageUrl': 'https://i.imgur.com/b33HIhJ.jpeg',
      'title': 'Satyajit Ray on making Pather Panchali',
      'url': 'https://player.vimeo.com/video/1093445326?h=a4ee799030',
    },
    {
      'imageUrl': 'https://i.imgur.com/sbc9LK9.jpeg',
      'title': 'Conversation with Satyajit Ray | Gideon Bachmann | 1958 New York',
      'url': 'https://player.vimeo.com/video/1093448606?h=04fe2d5d84',
    },
    {
      'imageUrl': 'https://i.imgur.com/WryPIDv.jpeg',
      'title': 'Satyajit Ray: Beyond the Frame',
      'url': 'https://www.goodreads.com/book/show/250141.Satyajit_Ray',
    },
    {
      'imageUrl': 'https://i.imgur.com/w8jeTiX.jpeg',
      'title': 'Satyajit Ray at 70',
      'url': 'https://www.amazon.com/Satyajit-Ray-at-Nemai-Ghosh/dp/293001007X',
    },
    {
      'imageUrl': 'https://i.imgur.com/UzqlGSr.jpeg',
      'title': 'Portrait of a Director',
      'url': 'https://www.amazon.com/Portrait-Director-satyajit-Marie-Seton/dp/014302972X',
    },
  ];

  void _startAnimations() {
    if (_carouselTimer == null || !_carouselTimer!.isActive) {
      _carouselTimer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
        if (!mounted) return;
        setState(() {
          _current = (_current + 1) % books.length;
        });
        _controller.animateToPage(_current);
      });
    }

    if (_glowTimer == null || !_glowTimer!.isActive) {
      _glowTimer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
        if (!mounted) return;
        setState(() {
          _animate = !_animate;
        });
      });
    }
  }

  void _stopAnimations() {
    _carouselTimer?.cancel();
    _carouselTimer = null;
    _glowTimer?.cancel();
    _glowTimer = null;
  }

  @override
  void dispose() {
    _stopAnimations();
    super.dispose();
  }

  void _onVisibilityChanged(VisibilityInfo info) {
    if (info.visibleFraction > 0) {
      _startAnimations();
    } else {
      _stopAnimations();
    }
  }

  void _viewBookDetails(BuildContext context, int index) async {
    final url = Uri.parse(books[index]['url']);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Could not launch URL")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "In Conversation with the Maestro: Satyajit Ray Speaks",
            style: GoogleFonts.playfairDisplay(
              fontSize: 38,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 0,
          color: Colors.white.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(20),
          child: VisibilityDetector(
            key: const Key('glowing-carousel'),
            onVisibilityChanged: _onVisibilityChanged,
            child: SizedBox(
              height: 650,
              child: CarouselSlider.builder(
                itemCount: books.length,
                carouselController: _controller,
                options: CarouselOptions(
                  height: 600,
                  enlargeCenterPage: true,
                  viewportFraction: 0.25,
                  autoPlay: false,
                  enableInfiniteScroll: true,
                  scrollPhysics: const PageScrollPhysics(),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                itemBuilder: (context, index, realIndex) {
                  final book = books[index];
                  return AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(_animate ? 0.35 : 0.15),
                          blurRadius: _animate ? 40 : 30,
                          spreadRadius: _animate ? 6 : 3,
                        ),
                        BoxShadow(
                          color: Colors.amberAccent.withOpacity(_animate ? 0.2 : 0.1),
                          blurRadius: _animate ? 30 : 20,
                          spreadRadius: _animate ? 4 : 2,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        color: const Color(0xFF222222),
                        height: 600,
                        width: 400,
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CachedNetworkImage(
                                imageUrl: book['imageUrl'],
                                width: 400,
                                height: 370,
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    const Center(child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Center(child: Icon(Icons.error)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      book['title'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 12),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueGrey,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () => _viewBookDetails(context, index),
                                      child: const Text(
                                        "VIEW VIDEO",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
