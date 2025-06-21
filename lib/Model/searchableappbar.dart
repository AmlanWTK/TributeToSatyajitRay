import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/RayWritingPage/mediaitem.dart';

class SearchableAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final List<MediaItem> allBooks;
  final ValueChanged<List<MediaItem>> onSearchResult;

  const SearchableAppBar({
    super.key,
    required this.title,
    required this.allBooks,
    required this.onSearchResult,
  });

  @override
  State<SearchableAppBar> createState() => _SearchableAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _SearchableAppBarState extends State<SearchableAppBar> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear();
      widget.onSearchResult(widget.allBooks); // Reset to full list
    });
  }

  void _filterBooks(String query) {
    final result = widget.allBooks.where((book) {
      return book.title.toLowerCase().contains(query.toLowerCase());
    }).toList();
    widget.onSearchResult(result);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: !_isSearching
          ? Center(
              child: Text(
                widget.title,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : TextField(
              controller: _searchController,
              style: TextStyle(color: Colors.white),
              autofocus: true,
              onChanged: _filterBooks,
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
              ),
            ),
      actions: [
        IconButton(
          icon: Icon(
            _isSearching ? Icons.close : Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            _isSearching ? _stopSearch() : _startSearch();
          },
        )
      ],
    );
  }
}
