// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Satyajitraysection extends StatefulWidget {
//   const Satyajitraysection({super.key});

//   @override
//   State<Satyajitraysection> createState() => _SatyajitraysectionState();
// }

// class _SatyajitraysectionState extends State<Satyajitraysection> {


// final ScrollController _scrollController=ScrollController();

// final List<String> imageUrls = [
//   'https://i.imgur.com/2xtBSO5.jpeg',
//   'https://i.imgur.com/hRujm4K.jpeg',
//   'https://i.imgur.com/nxlVd2O.jpeg',
//   'https://i.imgur.com/fC0U7nE.jpeg',
//   'https://i.imgur.com/scrRije.jpeg',
//   'https://i.imgur.com/UbVNK3B.jpeg',
//   'https://i.imgur.com/Fql6YR2.jpeg',
//   'https://i.imgur.com/XudX18t.jpeg',
//   'https://i.imgur.com/XxRM1oP.jpeg',
//   'https://i.imgur.com/2QwSGxX.jpeg',
//   'https://i.imgur.com/dd8Pgtj.jpeg',

//   ];
// void _scrollLeft(){
//   _scrollController.animateTo(
//     _scrollController.offset - 250, 
//     duration: Duration(milliseconds: 300), 
//     curve: Curves.easeInOut
//     );
// }

// void _scrollRight(){
//   _scrollController.animateTo(
//     _scrollController.offset + 250, duration: Duration(microseconds: 300), 
//     curve: Curves.easeInOut);
// }

//   @override
//   Widget build(BuildContext context) {
//     return 
  
//     Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color:    Color(0xFF1A1A1A),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               blurRadius: 10,
//               offset: Offset(0, 6),
//             )
//           ]
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 10),
//               child: Center(
//                 child: Text("✒️ 1961: Satyajit Ray Revives Sandesh ✒️",
//                 style: GoogleFonts.playfairDisplay(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20,),

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 '''By the late 1950s, Sandesh — once a cornerstone of Bengali children's literature — had gradually faded from publication due to financial strain and the loss of its original editorial vision. The press (U. Ray & Sons) had shut down, and the magazine that had once brought joy and curiosity to generations was all but forgotten.
            
// But in 1961, on the occasion of Rabindranath Tagore’s centenary and coinciding with the 100th birth anniversary of his grandfather Upendrakishore Ray Chowdhury, Satyajit Ray, now an internationally acclaimed filmmaker, took it upon himself to resurrect the family legacy.
            
// Having grown up surrounded by the world of Sandesh, Ray had a deep emotional connection with the magazine. He remembered the joy it brought him as a child and the creative brilliance of his father and grandfather. He decided to revive Sandesh not just as a tribute to his lineage, but as a living platform for cultivating creativity, rational thinking, and fun among Bengali children.''',
              
//                  style: GoogleFonts.openSans(
//                  color: Colors.white70,
//                  fontSize: 16
                 
//                  ),
//               ),
//             ),

//             Row(
//               children: [
//                 IconButton(
//                   onPressed:_scrollLeft , 
//                   icon: Icon(Icons.arrow_back_ios,color: Colors.white,)
//                   ),


//                   Expanded(
//                     child: SizedBox(
//                       height: 200,
//                       child: SingleChildScrollView(
//                         controller: _scrollController,
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children:imageUrls.map((url)=>
//                           Padding(
//                             padding: const EdgeInsets.only(right: 10,top: 18),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(10),
//                               child: Image.network(
//                                 url,
//                                 height: 200,
//                                 width: 250,
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                           )
//                           ).toList() ,
//                         ),
//                       ),
//                     )
//                     ),
//                      IconButton(onPressed: _scrollRight, 
//               icon: Icon(Icons.arrow_forward_ios, color: Colors.white,)
//               )
//               ],
//             ),

//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Center(
//                 child: Text("✍️ How He Revived It",
//                 style: GoogleFonts.playfairDisplay(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10,),

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 '''Satyajit Ray relaunched Sandesh in 1961 from his own home at 1/1 Bishop Lefroy Road.He personally designed the magazine’s layout, illustrated covers, and even wrote and translated stories. He served as editor, writer, illustrator, and overall creative force — combining his cinematic sense of storytelling with his sharp visual artistry. Initially, it was a quarterly publication, funded by personal savings, reader subscriptions, and passionate support from the literary and artistic community.

// Ray infused the magazine with a balance of entertainment and education, reviving the tradition of blending fiction, science, puzzles, and satire — just like his grandfather and father once did.''',
              
//                  style: GoogleFonts.openSans(
//                  color: Colors.white70,
//                  fontSize: 16
                 
//                  ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.only(top: 20),
//               child: Center(
//                 child: Text("📖 What Kind of Stories Got Published",
//                 style: GoogleFonts.playfairDisplay(
//                   color: Colors.white,
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
         


//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 '''Ray didn’t just curate content — he wrote some of his most iconic creations in Sandesh: Introduced Feluda, the intelligent and charismatic private detective, in Feludar Goyendagiri (1965). Serialized Professor Shonku, the eccentric scientist and inventor, whose stories mixed Bengali storytelling with global science fiction imagination. Published translations of international classics, educational articles, puzzles, quizzes, and science columns written in accessible language. Wrote short fantasy pieces like Bankubabur Bandhu (The Alien) — which many believe inspired Spielberg’s E.T.

// He maintained a fine balance between fun and intellect — ensuring Sandesh was never overly moralistic, yet always meaningful.
// ''',


//                  style: GoogleFonts.openSans(
//                  color: Colors.white70,
//                  fontSize: 16
// ,)))
           
//           ],
//         ),
//       );
    
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Satyajitraysection extends StatefulWidget {
  const Satyajitraysection({super.key});

  @override
  State<Satyajitraysection> createState() => _SatyajitraysectionState();
}

class _SatyajitraysectionState extends State<Satyajitraysection> {
  final ScrollController _scrollController = ScrollController();
  final List<String> imageUrls = [
    'https://i.imgur.com/2xtBSO5.jpeg',
    'https://i.imgur.com/hRujm4K.jpeg',
    'https://i.imgur.com/nxlVd2O.jpeg',
    'https://i.imgur.com/fC0U7nE.jpeg',
    'https://i.imgur.com/scrRije.jpeg',
    'https://i.imgur.com/UbVNK3B.jpeg',
    'https://i.imgur.com/Fql6YR2.jpeg',
    'https://i.imgur.com/XudX18t.jpeg',
    'https://i.imgur.com/XxRM1oP.jpeg',
    'https://i.imgur.com/2QwSGxX.jpeg',
    'https://i.imgur.com/dd8Pgtj.jpeg',
  ];

  Timer? _autoScrollTimer;
  int _currentIndex = 0;
  bool _isVisible = false;
  final double cardWidth = 250;
  final double spacing = 10;

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
      double offset = _currentIndex * (cardWidth + spacing);
      _scrollController.animateTo(
        offset,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _scrollRight() {
    if (_scrollController.hasClients) {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double offset = (_currentIndex + 1) * (cardWidth + spacing);
      if (offset > maxScroll) {
        _currentIndex = 0;
        _scrollController.animateTo(0,
            duration: Duration(milliseconds: 400), curve: Curves.easeInOut);
      } else {
        _currentIndex++;
        _scrollController.animateTo(offset,
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
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF1A1A1A),
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: Text(
                "✒️ 1961: Satyajit Ray Revives Sandesh ✒️",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Paragraph 1
          Padding(
            padding: const EdgeInsets.all(8.0),
           child: Text(
                '''By the late 1950s, Sandesh — once a cornerstone of Bengali children's literature — had gradually faded from publication due to financial strain and the loss of its original editorial vision. The press (U. Ray & Sons) had shut down, and the magazine that had once brought joy and curiosity to generations was all but forgotten.
            
But in 1961, on the occasion of Rabindranath Tagore’s centenary and coinciding with the 100th birth anniversary of his grandfather Upendrakishore Ray Chowdhury, Satyajit Ray, now an internationally acclaimed filmmaker, took it upon himself to resurrect the family legacy.
            
Having grown up surrounded by the world of Sandesh, Ray had a deep emotional connection with the magazine. He remembered the joy it brought him as a child and the creative brilliance of his father and grandfather. He decided to revive Sandesh not just as a tribute to his lineage, but as a living platform for cultivating creativity, rational thinking, and fun among Bengali children.''', style: GoogleFonts.openSans(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),

          // Scrollable Image Section inside VisibilityDetector
          VisibilityDetector(
            key: Key('satyajit-ray-gallery'),
            onVisibilityChanged: (info) {
              setState(() {
                _isVisible = info.visibleFraction > 0.3;
              });
            },
            child: Row(
              children: [
                IconButton(
                  onPressed: _scrollLeft,
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                Expanded(
                  child: SizedBox(
                    height: 200,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: imageUrls.map((url) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10, top: 18),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                url,
                                height: 200,
                                width: cardWidth,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: _scrollRight,
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                )
              ],
            ),
          ),

          // Section: How He Revived It
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "✍️ How He Revived It",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
             child: Text(
                '''Satyajit Ray relaunched Sandesh in 1961 from his own home at 1/1 Bishop Lefroy Road.He personally designed the magazine’s layout, illustrated covers, and even wrote and translated stories. He served as editor, writer, illustrator, and overall creative force — combining his cinematic sense of storytelling with his sharp visual artistry. Initially, it was a quarterly publication, funded by personal savings, reader subscriptions, and passionate support from the literary and artistic community.

Ray infused the magazine with a balance of entertainment and education, reviving the tradition of blending fiction, science, puzzles, and satire — just like his grandfather and father once did.''',
                style: GoogleFonts.openSans(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),

          // Section: What Kind of Stories Got Published
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Text(
                "📖 What Kind of Stories Got Published",
                style: GoogleFonts.playfairDisplay(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
           child: Text(
                '''Ray didn’t just curate content — he wrote some of his most iconic creations in Sandesh: Introduced Feluda, the intelligent and charismatic private detective, in Feludar Goyendagiri (1965). Serialized Professor Shonku, the eccentric scientist and inventor, whose stories mixed Bengali storytelling with global science fiction imagination. Published translations of international classics, educational articles, puzzles, quizzes, and science columns written in accessible language. Wrote short fantasy pieces like Bankubabur Bandhu (The Alien) — which many believe inspired Spielberg’s E.T.

He maintained a fine balance between fun and intellect — ensuring Sandesh was never overly moralistic, yet always meaningful.
''',
style: GoogleFonts.openSans(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
