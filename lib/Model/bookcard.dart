import 'package:flutter/material.dart';

import 'package:oldcity/RayWritingPage/mediaitem.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';
import 'package:url_launcher/url_launcher.dart';
class Bookcard extends StatelessWidget {
  final MediaItem book;
  const Bookcard({
    required this.book,
    super.key
  });

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWrapper(
       imagePath:'assets/images/background.jpg',
        
        blurIntensity: 8.0,
        darkenOpacity: 0.4,
       
      child: GestureDetector(
        onTap: () => _launchURL(book.read_more),
        child: Container(
          decoration: BoxDecoration(
           
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
              
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // <- KEY CHANGE
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  book.cover_image,
                  width: double.infinity,
                  height: 220,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  book.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  book.synopsis,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                    height: 1.4,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: TextButton(
                  onPressed: () => _launchURL(book.read_more),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // <- Optional: tighter button
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    'Read More',
                    style: TextStyle(
                      color: Colors.white,
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
