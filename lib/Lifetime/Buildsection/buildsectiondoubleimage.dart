import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Buildsectiondoubleimage extends StatefulWidget {
  final String leftImagePath;
  final String rightImagePath;
  final String title;
  final String text;
  final bool imageLeft;

  const Buildsectiondoubleimage({
    required this.leftImagePath,
    required this.rightImagePath,
    required this.title,
    required this.text,
    required this.imageLeft,
    super.key,
  });

  @override
  State<Buildsectiondoubleimage> createState() => _BuildsectiondoubleimageState();
}

class _BuildsectiondoubleimageState extends State<Buildsectiondoubleimage> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    final imageRow = Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            widget.leftImagePath,
            width: 220,
            height: 230,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            widget.rightImagePath,
            width: 220,
            height: 230,
            fit: BoxFit.cover,
          ),
        )
      ],
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
                const SizedBox(height: 10),
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
      children: widget.imageLeft ? [imageRow, textWidget] : [textWidget, imageRow],
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
        key: Key(widget.title), // Unique key per widget instance
        onVisibilityChanged: (info) {
          if (info.visibleFraction > 0.3 && !_visible) {
            setState(() {
              _visible = true;
            });
          }
        },
        child: _visible
            ? AnimationLimiter(child: content) // Animate when visible
            : content, // Show normally before visibility
      ),
    );
  }
}
