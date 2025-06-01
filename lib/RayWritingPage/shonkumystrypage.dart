// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/Model/bookcard.dart';
import 'package:oldcity/RayWritingPage/shonkuHomeloader.dart';

import 'package:oldcity/designingwidget/backgroundwrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class ShonkuMystryPage extends StatelessWidget {
  final List<MediaItem> books;
  const ShonkuMystryPage({
    required this.books,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWrapper(
        imagePath: 'assets/images/background.jpg',
        blurIntensity: 8.0,
        darkenOpacity: 0.4,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Hero Section
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.asset(
                    'assets/images/shonku.png',
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.3), // Reduced opacity
                    padding: EdgeInsets.all(16),
                    child: 
                    Text(
  'Professor Trilokeshwar Shonku, better known as Professor Shonku,\n'
  'is a legendary fictional scientist created by the iconic filmmaker\n'
  'and author Satyajit Ray. A brilliant inventor with an unquenchable\n'
  'thirst for knowledge, Shonku embarks on thrilling adventures across\n'
  'the globe—and even beyond it—armed with his astounding inventions\n'
  'and scientific mind.',




                      style: GoogleFonts.ubuntu(
                        color: Colors.white, // Changed to white for better visibility
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 20),
              
              // Title
              Text(
                'The World of Professor Shonku',
                style: GoogleFonts.pacifico(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Changed to white for better contrast
                ),
              ),
              
              SizedBox(height: 20),
              
              // Book Grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: books.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    return _buildStoryCard(books[index]);
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoryCard(MediaItem book) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: Colors.white.withOpacity(0.1), // Semi-transparent card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book Cover
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(book.cover_image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(0.4),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          // Book Details
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: GoogleFonts.ptSerif(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 8),
                Text(
                  book.synopsis,
                  style: GoogleFonts.ptSerif(
                    fontSize: 12,
                    color: Colors.white.withOpacity(0.9),
                    height: 1.4,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () => _launchURL(book.read_more),
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Read More →',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }
}