// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Sukumarsectionstate extends StatefulWidget {
//   const Sukumarsectionstate({super.key});

//   @override
//   State<Sukumarsectionstate> createState() => _SukumarsectionstateState();
// }

// class _SukumarsectionstateState extends State<Sukumarsectionstate> {

// final List<String> imageUrls=[

//    'https://i.imgur.com/WPz1Xsc.jpeg',
//    'https://i.imgur.com/EPC9JX5.jpeg',
//    'https://i.imgur.com/BYKBrrG.jpeg',
//    'https://i.imgur.com/QIiO1iJ.jpeg',
//    'https://i.imgur.com/Iq12kzD.gif',
//    'https://i.imgur.com/dnBl2aY.jpeg',
//    'https://i.imgur.com/megk7qs.jpeg',
//    'https://i.imgur.com/QjlhSHf.jpeg',
//    'https://i.imgur.com/580bPfr.jpeg',
//    'https://i.imgur.com/jqOtrW4.jpeg',
//    'https://i.imgur.com/HZAAlkS.jpeg',
//    'https://i.imgur.com/pErb4bz.jpeg',
//    'https://i.imgur.com/L6oXRQU.jpeg',
//    'https://i.imgur.com/VtAqZKo.jpeg',
//    'https://i.imgur.com/C9QImk6.jpeg',
//    'https://i.imgur.com/X7Fc1eY.jpeg',
//    'https://i.imgur.com/QWpKaEb.jpeg',
//    'https://i.imgur.com/QWpKaEb.jpeg',
//    'https://i.imgur.com/iYU4dcg.jpeg',
//    'https://i.imgur.com/A8KBOZU.png',
//    'https://i.imgur.com/WXlrlIz.jpeg',
//    'https://i.imgur.com/E3VQ5b7.jpeg',
//    'https://i.imgur.com/sQq0orJ.jpeg',
//    'https://i.imgur.com/WWYbDqG.jpeg',
//    'https://i.imgur.com/91JZEPn.jpeg',
//    'https://i.imgur.com/zQ91XvM.jpeg',



   
// ];
// final ScrollController _scrollController=ScrollController();

// void _scrollLeft(){
//   _scrollController.animateTo(
//     _scrollController.offset - 250, 
//     duration: Duration(microseconds: 300), 
//     curve: Curves.easeInOut
//     );
// }



// void _scrollRight(){
//   _scrollController.animateTo(
//     _scrollController.offset + 250, 
//     duration: Duration(microseconds: 300), 
//     curve: Curves.easeInOut
//     );
// }



//   @override
//   Widget build(BuildContext context) {
//     return 
    
//       Container(
//         decoration: BoxDecoration(
//             color:  Color(0xFF1A1A1A),
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 blurRadius: 10,
//                 offset: Offset(0, 6)
//               )
//             ]
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//                  Center(
//                    child: Padding(
//                      padding: const EdgeInsets.all(10.0),
//                      child: Text("📜 1923–1940s: Sukumar Ray’s Legacy of Laughter and Language 📜",
//                      style: GoogleFonts.playfairDisplay(
//                       color: Colors.white,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold
//                       ),
//                      ),
//                    ),
//                  ),
//                  SizedBox(height: 12,),

//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Text(
//                    '''After the passing of Upendrakishore Ray Chowdhury in 1915, his son Sukumar Ray — a brilliant satirist, poet, illustrator, and pioneer of literary nonsense in Bengali — took over the editorial responsibilities of Sandesh. A man of rare intellect and boundless creativity, Sukumar transformed the magazine into a space where absurdity met intelligence, and humor became a tool for both joy and reflection.
                 
// Educated in photography and printing technology in England, Sukumar returned to India with a modern outlook and technical expertise. He applied these to elevate Sandesh both visually and editorially. Under his leadership, the magazine became more vibrant, sharp-witted, and visually dynamic, with improved layouts and more refined illustrations — many drawn by Sukumar himself.
                 
// He wrote and illustrated some of the most iconic works in Bengali children's literature within the pages of Sandesh. Pieces like Abol Tabol, Pagla Dashu, and HaJaBaRaLa first appeared in the magazine, capturing the imagination of readers with their fantastical characters, nonsensical brilliance, and rich linguistic play. These works redefined the boundaries of what children’s literature could be — playful yet philosophical, funny yet deeply intelligent.
                 
// Despite his life being cut short by illness at the age of just 36, Sukumar Ray’s editorial direction left an indelible mark on Sandesh. He not only upheld his father's vision but expanded it, proving that children's literature could be sophisticated, experimental, and full of wonder. His legacy ensured that Sandesh remained not just a magazine, but a cultural phenomenon — a creative universe that celebrated curiosity, imagination, and the magic of language.''',
//                    style: GoogleFonts.openSans(
//                      color: Colors.white70,
//                      fontSize: 16
//                      ),
                                   
//                    ),
//                  ),

//                  SizedBox(height: 20,),
//                  Row(
//                   children: [
//                     IconButton(
//                       onPressed:_scrollLeft , 
//                       icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
//                       ),

//                       Expanded(
//                         child: SizedBox(
//                           height: 200,
//                           child: SingleChildScrollView(
//                             controller: _scrollController,
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               children: imageUrls.map((url) =>
//                               Padding(
//                                 padding:EdgeInsets.only(right: 12),
//                                 child: ClipRRect(
//                                   borderRadius:BorderRadius.circular(10) ,
//                                   child: Image.network(
//                                     url,
//                                     width: 250,
//                                     height: 200,
//                                     fit: BoxFit.contain,
//                                   ),
//                                 ),
//                                  ),
//                                  ).toList(),
//                             ),
//                           ),
//                         )
//                         ),
//                         IconButton(
//                           onPressed: _scrollRight, 
//                           icon: Icon(Icons.arrow_forward_ios,color: Colors.white,)
//                           )

//                   ],
//                  )
//           ],
//         ),
      
//       );
    
//   }
// }



import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Sukumarsectionstate extends StatefulWidget {
  const Sukumarsectionstate({super.key});

  @override
  State<Sukumarsectionstate> createState() => _SukumarsectionstateState();
}

class _SukumarsectionstateState extends State<Sukumarsectionstate> {
  final List<String> imageUrls = [
    'https://i.imgur.com/WPz1Xsc.jpeg',
    'https://i.imgur.com/EPC9JX5.jpeg',
    'https://i.imgur.com/BYKBrrG.jpeg',
    'https://i.imgur.com/QIiO1iJ.jpeg',
    'https://i.imgur.com/Iq12kzD.gif',
    'https://i.imgur.com/dnBl2aY.jpeg',
    'https://i.imgur.com/megk7qs.jpeg',
    'https://i.imgur.com/QjlhSHf.jpeg',
    'https://i.imgur.com/580bPfr.jpeg',
    'https://i.imgur.com/jqOtrW4.jpeg',
    'https://i.imgur.com/HZAAlkS.jpeg',
    'https://i.imgur.com/pErb4bz.jpeg',
    'https://i.imgur.com/L6oXRQU.jpeg',
    'https://i.imgur.com/VtAqZKo.jpeg',
    'https://i.imgur.com/C9QImk6.jpeg',
    'https://i.imgur.com/X7Fc1eY.jpeg',
    'https://i.imgur.com/QWpKaEb.jpeg',
    'https://i.imgur.com/iYU4dcg.jpeg',
    'https://i.imgur.com/A8KBOZU.png',
    'https://i.imgur.com/WXlrlIz.jpeg',
    'https://i.imgur.com/E3VQ5b7.jpeg',
    'https://i.imgur.com/sQq0orJ.jpeg',
    'https://i.imgur.com/WWYbDqG.jpeg',
    'https://i.imgur.com/91JZEPn.jpeg',
    'https://i.imgur.com/zQ91XvM.jpeg',
  ];

  final ScrollController _scrollController = ScrollController();
  Timer? _autoScrollTimer;
  int _currentIndex = 0;
  bool _isVisible = false;

  final double cardWidth = 250;
  final double spacing = 12;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(Duration(seconds: 5), (_) {
      if (_isVisible) _scrollRight();
    });
  }

  void _scrollLeft() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _scrollController.animateTo(
        _currentIndex * (cardWidth + spacing),
        duration: Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double nextOffset = (_currentIndex + 1) * (cardWidth + spacing);
      if (nextOffset > maxScroll) {
        _currentIndex = 0;
        _scrollController.animateTo(0,
            duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
      } else {
        _currentIndex++;
        _scrollController.animateTo(nextOffset,
            duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
      }
    }
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 6),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "📜 1923–1940s: Sukumar Ray’s Legacy of Laughter and Language 📜",
                style: GoogleFonts.playfairDisplay(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 12),

          // Description
          Padding(
            padding: const EdgeInsets.all(8.0),
             child: Text(
                    '''After the passing of Upendrakishore Ray Chowdhury in 1915, his son Sukumar Ray — a brilliant satirist, poet, illustrator, and pioneer of literary nonsense in Bengali — took over the editorial responsibilities of Sandesh. A man of rare intellect and boundless creativity, Sukumar transformed the magazine into a space where absurdity met intelligence, and humor became a tool for both joy and reflection.
                 
Educated in photography and printing technology in England, Sukumar returned to India with a modern outlook and technical expertise. He applied these to elevate Sandesh both visually and editorially. Under his leadership, the magazine became more vibrant, sharp-witted, and visually dynamic, with improved layouts and more refined illustrations — many drawn by Sukumar himself.
                 
He wrote and illustrated some of the most iconic works in Bengali children's literature within the pages of Sandesh. Pieces like Abol Tabol, Pagla Dashu, and HaJaBaRaLa first appeared in the magazine, capturing the imagination of readers with their fantastical characters, nonsensical brilliance, and rich linguistic play. These works redefined the boundaries of what children’s literature could be — playful yet philosophical, funny yet deeply intelligent.
                 
Despite his life being cut short by illness at the age of just 36, Sukumar Ray’s editorial direction left an indelible mark on Sandesh. He not only upheld his father's vision but expanded it, proving that children's literature could be sophisticated, experimental, and full of wonder. His legacy ensured that Sandesh remained not just a magazine, but a cultural phenomenon — a creative universe that celebrated curiosity, imagination, and the magic of language.''',
                    style: GoogleFonts.openSans(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),

          SizedBox(height: 20),

          // Image Scroll Section
          VisibilityDetector(
            key: Key('sukumar-ray-gallery'),
            onVisibilityChanged: (info) {
              setState(() {
                _isVisible = info.visibleFraction > 0.3;
              });
            },
            child: Row(
              children: [
                IconButton(
                    onPressed: _scrollLeft,
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white)),
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: imageUrls
                            .map(
                              (url) => Padding(
                                padding: EdgeInsets.only(right: spacing),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    url,
                                    width: cardWidth,
                                    height: 200,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: _scrollRight,
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
