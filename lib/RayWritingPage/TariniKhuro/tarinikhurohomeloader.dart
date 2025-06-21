import 'dart:convert';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oldcity/RayWritingPage/TariniKhuro/tarinimystrypage.dart';
import 'package:oldcity/RayWritingPage/feludaHomeLoader.dart';
import 'package:oldcity/RayWritingPage/mediaitem.dart';

import 'package:oldcity/RayWritingPage/shonkumystrypage.dart';


class TariniKhuroHomeloader extends StatefulWidget {
  const TariniKhuroHomeloader({super.key});

  @override
  State<TariniKhuroHomeloader> createState() => _TariniKhuroHomeloaderState();
}

class _TariniKhuroHomeloaderState extends State<TariniKhuroHomeloader> {
late Future<List<MediaItem>>_futureBooks;
Future <List<MediaItem>>loadBooks()async{
  final String response=await rootBundle.loadString('assets/tarini_khuro.json');
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
          return Tarinimystrypage(books:snapshot.data!);
        }
        
       }
       );




  }
}