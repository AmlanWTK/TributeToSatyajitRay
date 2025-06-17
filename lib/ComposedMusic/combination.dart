import 'package:flutter/material.dart';
import 'package:oldcity/ComposedMusic/musicdetails.dart';
import 'package:oldcity/ComposedMusic/musicpage.dart';

class Combination extends StatelessWidget {
  const Combination({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xFF121212),
       
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 500,
            child: Musicpage(),
          ),
          ConstrainedBox(constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Musicdetails(),
          )
        ],
      ),
    );
  }
}