import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:oldcity/RayWritingPage/shonkumystrypage.dart';


class MediaItem{
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

  factory MediaItem.fromJson(Map<String,dynamic>json){
    return MediaItem(
      title: json['title'], 
      year: json['year'], 
      cover_image: json['cover_image'], 
      synopsis: json['synopsis'], 
      read_more: json['read_more']);
  }
}


class ShonkuHomeLoader extends StatefulWidget {
  const ShonkuHomeLoader({super.key});

  @override
  State<ShonkuHomeLoader> createState() => _ShonkuHomeLoaderState();
}

class _ShonkuHomeLoaderState extends State<ShonkuHomeLoader> {
late Future<List<MediaItem>>_futureBooks;
Future <List<MediaItem>>loadBooks()async{
  final String response=await rootBundle.loadString('assets/shonku_books.json');
  final List<dynamic>data=json.decode(response);
  return data.map((item)=>MediaItem.fromJson(item)).toList();
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBooks=loadBooks();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:_futureBooks,
       builder:(context,snapshot){
        if (snapshot.connectionState==ConnectionState.waiting){
          return Scaffold(
            backgroundColor: Color(0xFF1b100d),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );

        }else if(snapshot.hasError){
          return Scaffold(
            backgroundColor: Color(0xFF1b100d),
            body: Center(
              child: Text('Error:${snapshot.error}'),
            ),
          );
        } else{
          return ShonkuMystryPage(books:snapshot.data!);
        }
        
       }
       );




  }
}