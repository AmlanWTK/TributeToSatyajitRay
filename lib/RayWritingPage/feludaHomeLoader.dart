import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oldcity/RayWritingPage/feludamystrypage.dart';
import 'package:oldcity/RayWritingPage/mediaitem.dart';



class FeludaHomeLoader extends StatefulWidget {
  const FeludaHomeLoader({super.key});

  @override
  State<FeludaHomeLoader> createState() => _FeludaHomeLoaderState();
}

class _FeludaHomeLoaderState extends State<FeludaHomeLoader> {
late Future<List<MediaItem>>_futureBooks;
Future <List<MediaItem>>loadBooks()async{
  final String response=await rootBundle.loadString('assets/feluda_books.json');
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
          return FeludaMysteryPage(books:snapshot.data!);
        }
        
       }
       );




  }
}