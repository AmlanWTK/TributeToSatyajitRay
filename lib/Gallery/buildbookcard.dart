import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final double rating;
  final bool isCenter;
  final bool animate;
  final VoidCallback onPressed;

  const BookCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.rating,
    required this.isCenter,
    required this.animate,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isCenter ? 360 : 200,
      height: isCenter ? 690 : 260,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: const Color(0xFF222222),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Improved image section
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  height: isCenter ? 400 : 150, // Larger height for center card
                  width: double.infinity,
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(milliseconds: 300),
                  placeholder: (context, url) => Container(
                    color: Colors.grey[800],
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 12),
              // Rating stars
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(5, (i) => Icon(
                    i < rating.round()
                        ? Icons.star
                        : Icons.star_border,
                    color: Colors.amber,
                    size: isCenter ? 20 : 16, // Larger stars for center card
                  )),
                  const SizedBox(width: 6),
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: isCenter ? 16 : 14, // Larger text for center card
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              // Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isCenter ? 20 : 16, // Larger title for center card
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 4),
              // Author
              Text(
                author,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: isCenter ? 14 : 12, // Slightly larger author text
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              // View Book button
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding: EdgeInsets.symmetric(
                      horizontal: isCenter ? 24 : 16, // Wider button for center
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Text(
                    "VIEW BOOK",
                    style: TextStyle(
                      fontSize: isCenter ? 16 : 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}