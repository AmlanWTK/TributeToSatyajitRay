// lib/combined_sections.dart

import 'package:flutter/material.dart';
import 'package:oldcity/RayWritingPage/Screenplay/screenplayscripts.dart';
import 'package:oldcity/videogrid/rayscriptsection.dart';
import 'package:oldcity/videogrid/videogridpage.dart';
import 'package:oldcity/videogrid/writingstyle.dart';

class CombinedSections extends StatelessWidget {
  const CombinedSections({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
       const SizedBox(
          height: 400,
          child: Screenplayscripts(),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: const VideoGridPage(),
        ),
        const SizedBox(
          height: 400,
          child: Writingstyle(),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: const Rayscriptsection(),
        ),
      ],
    );
  }
}
