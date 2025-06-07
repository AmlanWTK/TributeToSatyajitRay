import 'package:flutter/material.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';
import 'package:oldcity/videogrid/imagecarousel.dart';
import 'package:oldcity/videogrid/raywritingstyletext.dart';

class Rayscriptsection extends StatelessWidget {
  const Rayscriptsection({super.key});

  @override
  Widget build(BuildContext context) {
    
      return  Container(
          
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.8,
          ),
          decoration: BoxDecoration(
            color: Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
              )
            ]
          ),
            
            child: Center( // 👈 This will center the entire Row vertically
              child:
              Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.35,
            child: Raywritingstyletext(),
          ),
          SizedBox(width: 280,),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.35,
            child: ImageCarouselWithText(),
          ),
            ],
          )
          
            ),
          );
        
      
    
  }
}
