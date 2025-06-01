import 'package:flutter/material.dart';

class HoverFillButton extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const HoverFillButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<HoverFillButton> createState() => _HoverFillButtonState();
}

class _HoverFillButtonState extends State<HoverFillButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    const hoverColor = Color(0xFFA14B3A);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: hoverColor),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Bottom to top fill animation
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  left: 0,
                  right: 0,
                  bottom: 0,
                  height: _isHovered ? double.infinity : 0,
                  child: Container(color: hoverColor),
                ),
                // Text with padding and animated color
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 300),
                    style: TextStyle(
                      color: _isHovered ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    child: Text(widget.text),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
