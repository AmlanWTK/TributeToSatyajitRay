import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/Model/searchableappbar.dart';
import 'package:oldcity/RayWritingPage/mediaitem.dart';
 // Reusable AppBar
import 'package:url_launcher/url_launcher.dart';

class Shortstorypage extends StatefulWidget {
  final List<MediaItem> book;
  const Shortstorypage({required this.book, super.key});

  @override
  State<Shortstorypage> createState() => _ShortstorypageState();
}

class _ShortstorypageState extends State<Shortstorypage> {
  late List<MediaItem> filteredBooks;

  @override
  void initState() {
    super.initState();
    filteredBooks = widget.book; // Initialize with full list
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchableAppBar(
        title: "Whispers on Paper: Ray’s Short Stories",
        allBooks: widget.book,
        onSearchResult: (result) {
          setState(() {
            filteredBooks = result;
          });
        },
      ),
      backgroundColor: const Color(0xFF121212),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              // Hero Section
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
  padding: const EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.network(
      'https://i.imgur.com/BQmG7gK.png',
      width: double.infinity,
      height: 550,
      fit: BoxFit.cover,
    ),
  ),
),

                  Container(
                   
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 40 ),
                    child: Text(
                      '''Satyajit Ray's short stories blend mystery, science fiction,\n humor, and the supernatural with effortless grace.\n
          Beyond his famous series characters, his standalone tales explore \nhuman nature with subtle twists and surprising endings.''',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
          
              SizedBox(height: 20),
          
              // Book Grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  itemCount: filteredBooks.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.91,
                  ),
                  itemBuilder: (context, index) {
                    return _buildStoryCard(filteredBooks[index]);
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
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF1A1A1A),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book Cover
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
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
          ),

          // Book Details
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: GoogleFonts.playfairDisplay(
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
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    color: Colors.white70,
                    height: 1.6,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () => _launchURL(book.read_more),
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
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
