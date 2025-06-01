import 'package:flutter/material.dart';
import 'dart:ui';

class BackgroundWrapper extends StatelessWidget {
  final String imagePath;
  final Widget child;
  final double blurIntensity;
  final double darkenOpacity;

  const BackgroundWrapper({
    super.key,
    required this.imagePath,
    required this.child,
    this.blurIntensity = 5.0,
    this.darkenOpacity = 0.3,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Blurred Background
        Positioned.fill(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(
              sigmaX: blurIntensity,
              sigmaY: blurIntensity,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(darkenOpacity),
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
        
        // Content
        child,
      ],
    );
  }
}