import 'package:flutter/material.dart';
import 'package:oldcity/awardsandachievements/showingawards.dart';
import 'package:oldcity/awardsandachievements/coverphoto.dart';

class CombinedPage extends StatelessWidget {
  const CombinedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          children: const [
            CoverPhoto(), // The cover photo section
            Showingawards(), // The awards timeline section
          ],
        ),
      );
   
  }
}
