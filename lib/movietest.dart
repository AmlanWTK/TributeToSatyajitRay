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
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    try {
      final String response = await rootBundle.loadString('assets/movies.json');
      final List<dynamic> data = json.decode(response);
      
      setState(() {
        iconicMovies = data.map((json) => Movie.fromJson(json)).toList();
        isLoading = false;
      });
    } catch (e) {
      print("Error loading movies: $e");
      setState(() => isLoading = false);
    }
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
      body: BackgroundWrapper(
        imagePath:'assets/images/background.jpg',
        
        blurIntensity: 8.0,
        darkenOpacity: 0.4,
       
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: iconicMovies.length,
            itemBuilder: (context, index) {
              final movie = iconicMovies[index];
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black.withOpacity(0.3),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Poster Image
                    ClipRRect(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(12)),
                      child: Image.network(
                        movie.posterUrl,
                        width: 300,
                        height: 220,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          width: 150,
                          height: 220,
                          color: Colors.grey.withOpacity(0.3),
                          child: Icon(Icons.broken_image, color: Colors.white),
                        
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
                            // Title and Year
                            Text(
                              '${movie.title} (${movie.year})',
                              style: GoogleFonts.pacifico(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 88, 167, 224),
                              ),
                            ),
                            SizedBox(height: 8),
                            
                            // Description
                            Text(
                              movie.description,
                              style: GoogleFonts.ubuntu(
                                fontSize: 14,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                            SizedBox(height: 16),
                            
                            // Links Row
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
                            
                            // Behind Story Section
                            if (movie.behindStory.items.any((item) => item.url?.isNotEmpty == true || item.content?.isNotEmpty == true))
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Behind the Story:',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.9),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  ...movie.behindStory.items.where((item) => item.url?.isNotEmpty == true || item.content?.isNotEmpty == true).map((item) {
                                    if (movie.behindStory.type == 'links' && item.url?.isNotEmpty == true) {
                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 4),
                                        child: GestureDetector(
                                          onTap: () => _launchUrl(item.url!),
                                          child: Text(
                                            item.title.isNotEmpty ? item.title : 'Learn more',
                                            style: TextStyle(
                                              color: Colors.blue[200],
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      );
                                    } else if (item.content?.isNotEmpty == true) {
                                      return Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          item.content!,
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.7),
                                            fontSize: 13,
                                          ),
                                        ),
                                      );
                                    }
                                    return SizedBox.shrink();
                                  }).toList(),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
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
  final BehindStory behindStory;

  Movie({
    required this.title,
    required this.year,
    required this.description,
    required this.posterUrl,
    required this.imdbUrl,
    required this.youtubeUrl,
    required this.downloadUrl,
    required this.behindStory,
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
      behindStory: BehindStory.fromJson(json['behindStory']),
    );
  }
}

class BehindStory {
  final String type;
  final List<BehindStoryItem> items;

  BehindStory({
    required this.type,
    required this.items,
  });

  factory BehindStory.fromJson(Map<String, dynamic> json) {
    var items = json['items'] as List;
    return BehindStory(
      type: json['type'],
      items: items.map((item) => BehindStoryItem.fromJson(item)).toList(),
    );
  }
}

class BehindStoryItem {
  final String title;
  final String? url;
  final String? content;

  BehindStoryItem({
    required this.title,
    this.url,
    this.content,
  });

  factory BehindStoryItem.fromJson(Map<String, dynamic> json) {
    return BehindStoryItem(
      title: json['title'] ?? '',
      url: json['url'],
      content: json['content'],
    );
  }
}