import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/ComposedMusic/musicdetails.dart';
import 'package:oldcity/ComposedMusic/musicpage.dart';

class Combination extends StatelessWidget {
  const Combination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: const Color(0xFF121212),
            appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: Text("Symphony of Ray’s Cinema",
        style: GoogleFonts.playfairDisplay(
          color: Colors.white,
          fontSize: 38,
          fontWeight: FontWeight.bold
        ),
        )),
      ),
      body: Container(
       
         
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 500,
              child: Musicpage(),
            ),
            // ConstrainedBox(constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            // child: Musicdetails(),
            // )

            SizedBox(
              height: 2100,
              child: Musicdetails(),
            )
          ],
        ),
      ),
    );
  }
}