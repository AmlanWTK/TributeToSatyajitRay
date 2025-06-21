import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Documentaries extends StatefulWidget {
  @override
  _DocumentariesState createState() => _DocumentariesState();
}

class _DocumentariesState extends State<Documentaries> {
  List<Movie> allMovies = [];
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
      final String response =
          await rootBundle.loadString('assets/documents.json');
      final List<dynamic> data = json.decode(response);
      final movies = data.map((json) => Movie.fromJson(json)).toList();

      setState(() {
        allMovies = movies;
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
      filteredMovies = allMovies
          .where((movie) => movie.title.toLowerCase().contains(searchQuery))
          .toList();
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
                  hintText: "Search documentaries...",
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              )
            : Center(
                child: Text(
                  "Cinematic Journeys with Satyajit Ray",
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
                  // Reset
                  isSearching = false;
                  searchQuery = '';
                  filteredMovies = allMovies;
                } else {
                  isSearching = true;
                }
              });
            },
          ),
        ],
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // Hero banner
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://i.imgur.com/hMO3RTP.jpeg',
                fit: BoxFit.cover,
                height: 520,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 24),

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
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                            padding: EdgeInsets.all(12),
                            width: 150,
                            height: 220,
                            color: Colors.grey.withOpacity(0.3),
                            child: Icon(Icons.broken_image, color: Colors.white),
                          ),
                        ),
                      ),
                    ),

                    // Movie Content
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
                                  onPressed: () =>
                                      _launchUrl(movie.youtubeUrl),
                                ),
                                _buildLinkButton(
                                  icon: Icons.link,
                                  label: 'IMDb',
                                  onPressed: () =>
                                      _launchUrl(movie.imdbUrl),
                                ),
                                _buildLinkButton(
                                  icon: Icons.download,
                                  label: 'Download',
                                  onPressed: () =>
                                      _launchUrl(movie.downloadUrl),
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
            }).toList(),
          ],
        ),
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
