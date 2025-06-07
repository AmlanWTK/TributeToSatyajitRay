import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Buildsubsection extends StatefulWidget {
  final String imagePath;
  final String title;
  final String text;
  final bool imageLeft;

  const Buildsubsection({
    required this.imagePath,
    required this.title,
    required this.text,
    required this.imageLeft,
    super.key,
  });

  @override
  State<Buildsubsection> createState() => _BuildsubsectionState();
}

class _BuildsubsectionState extends State<Buildsubsection> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    final imageWidget = ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.network(
        widget.imagePath,
        width: 430,
        height: 330,
        fit: BoxFit.cover,
      ),
    );

    final textWidget = Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: AnimationLimiter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(milliseconds: 1100),
              childAnimationBuilder: (widget) => SlideAnimation(
                verticalOffset: 120.0,
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.text,
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    final content = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.imageLeft ? [imageWidget, textWidget] : [textWidget, imageWidget],
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 6),
          )
        ],
      ),
      child: VisibilityDetector(
        key: Key(widget.title), // unique key per widget
        onVisibilityChanged: (info) {
          if (info.visibleFraction > 0.3 && !_visible) {
            setState(() {
              _visible = true;  // trigger animation only once
            });
          }
        },
        child: _visible
            ? AnimationLimiter(child: content) // animate when visible
            : content, // show content without animation until visible
      ),
    );
  }
}
