import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oldcity/RayWritingPage/feludaHomeLoader.dart';
import 'package:oldcity/RayWritingPage/mediaitem.dart';

import 'package:oldcity/RayWritingPage/shonkumystrypage.dart';


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