class MediaItem {
  final String title;
  final String year;
  final String cover_image;
  final String synopsis;
  final String read_more;

  MediaItem({
    required this.title,
    required this.year,
    required this.cover_image,
    required this.synopsis,
    required this.read_more,
  });

  factory MediaItem.fromJson(Map<String, dynamic> json) {
    return MediaItem(
      title: json['title'],
      year: json['year'],
      cover_image: json['cover_image'],
      synopsis: json['synopsis'],
      read_more: json['read_more'],
    );
  }
}
