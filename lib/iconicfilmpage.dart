import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class IconicFilmsPage extends StatefulWidget {
  @override
  _IconicFilmsPageState createState() => _IconicFilmsPageState();
}
class _IconicFilmsPageState extends State<IconicFilmsPage> {
  List<Movie> iconicMovies = [];
  List<Movie> filteredMovies = [];
  bool isLoading = true;
  bool isSearching = false;
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    try {
      final String response = await rootBundle.loadString('assets/movies.json');
      final List<dynamic> data = json.decode(response);
      final movies = data.map((json) => Movie.fromJson(json)).toList();

      setState(() {
        iconicMovies = movies;
        filteredMovies = movies;
        isLoading = false;
      });
    } catch (e) {
      print("Error loading movies: $e");
      setState(() => isLoading = false);
    }
  }

  void _searchMovies(String query) {
    setState(() {
      searchQuery = query.toLowerCase();
      filteredMovies = iconicMovies.where((movie) {
        return movie.title.toLowerCase().contains(searchQuery);
      }).toList();
    });
  }

  void _launchUrl(String url) async {
    if (url.isEmpty) return;
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: isSearching
            ? TextField(
                autofocus: true,
                onChanged: _searchMovies,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  hintText: "Search movies...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              )
            : Center(
                child: Text(
                  "📽️ Cinematic Journeys with Satyajit Ray 📽️",
                  style: GoogleFonts.playfairDisplay(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 38,
                  ),
                ),
              ),
        actions: [
          IconButton(
            icon: Icon(isSearching ? Icons.close : Icons.search),
            onPressed: () {
              setState(() {
                if (isSearching) {
                  // Reset search
                  isSearching = false;
                  searchQuery = '';
                  filteredMovies = iconicMovies;
                } else {
                  isSearching = true;
                }
              });
            },
          ),
        ],
      ),

      body: ListView(
  padding: EdgeInsets.all(16),

  children: [
    // 🔹 New: Banner image added below AppBar
    ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network( // You can also use Image.network if needed
        'https://i.imgur.com/HSI3eU4.jpeg', // 🔸 Replace with your image path
        fit: BoxFit.cover,
        height: 420,
        width: double.infinity,
      ),
    ),
    SizedBox(height: 24), // 🔹 New: Spacing below image

    // 🔹 Replaced ListView.builder with map-based loop over filteredMovies
    ...filteredMovies.map((movie) {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFF1A1A1A),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 6),
            )
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Poster Image
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  movie.posterUrl,
                  width: 400,
                  height: 280,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    width: 150,
                    height: 220,
                    color: Colors.grey.withOpacity(0.3),
                    child: Icon(Icons.broken_image, color: Colors.white),
                  ),
                ),
              ),
            ),

            // Movie Details
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${movie.title} (${movie.year})',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      movie.description,
                      style: GoogleFonts.openSans(
                        fontSize: 21,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 16),

                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        _buildLinkButton(
                          icon: Icons.play_circle_fill,
                          label: 'Trailer',
                          onPressed: () => _launchUrl(movie.youtubeUrl),
                        ),
                        _buildLinkButton(
                          icon: Icons.link,
                          label: 'IMDb',
                          onPressed: () => _launchUrl(movie.imdbUrl),
                        ),
                        _buildLinkButton(
                          icon: Icons.download,
                          label: 'Download',
                          onPressed: () => _launchUrl(movie.downloadUrl),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList(), // 🔹 New: Converted builder to a mapped list with spread operator
  ],
),

    );
  }

  Widget _buildLinkButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.white.withOpacity(0.5)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),
      icon: Icon(
        icon,
        size: 16,
        color: Colors.white,
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      onPressed: onPressed,
    );
  }
}

// Model classes (can be in a separate file)
class Movie {
  final String title;
  final String year;
  final String description;
  final String posterUrl;
  final String imdbUrl;
  final String youtubeUrl;
  final String downloadUrl;


  Movie({
    required this.title,
    required this.year,
    required this.description,
    required this.posterUrl,
    required this.imdbUrl,
    required this.youtubeUrl,
    required this.downloadUrl,
    
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      year: json['year'],
      description: json['description'],
      posterUrl: json['posterUrl'],
      imdbUrl: json['imdbUrl'],
      youtubeUrl: json['youtubeUrl'],
      downloadUrl: json['downloadUrl'],
     
    );
  }
}
