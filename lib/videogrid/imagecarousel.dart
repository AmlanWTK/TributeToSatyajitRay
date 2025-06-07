
import 'package:flutter/material.dart';

class ImageCarouselWithText extends StatefulWidget {
  const ImageCarouselWithText({super.key});

  @override
  State<ImageCarouselWithText> createState() => _ImageCarouselWithTextState();
}

class _ImageCarouselWithTextState extends State<ImageCarouselWithText> {
  int _currentIndex = 0;

  final List<Map<String, String>> _pages = [
    {
      'image': 'assets/images/ray_script.png',
      'caption': "A PAGE FROM RAY'S NOTEBOOK, FEATURING A ROUGH SKETCH OF A WOMAN, ALONG WITH MUSINGS AND DIALOGUES AND SCENES FROM THE FILM, MONIHARA (FROM TEEN KANYA)"
'Ink on paper',
    },
    {
      'image': 'assets/images/charulatastill.png',
      'caption': 'STILL FROM THE FILM MONIHARA',
    },
    {
      'image': 'assets/images/ray_script2.png',
      'caption': "A ROUGH SKETCH OF APU AND DURGA FROM PATHER PANCHALI"

"SINCE IT WAS DIFFICULT FOR THE YOUNG ACTORS, APU AND DURGA, TO FULLY GRASP WHAT WAS REQUIRED OF THEM IN CERTAIN SCENES, RAY OFTEN CREATED ROUGH SKETCHES OF THE SCENERIES. THESE DRAWINGS HELPED THE CHILDREN — AND THE ENTIRE CREW — BETTER UNDERSTAND HIS VISION AND WHAT HE WANTED TO CONVEY THROUGH EACH MOMENT."

 ,
    },
    {
      'image': 'assets/images/apudurgastill.jpg',
      'caption': 'THE SCENE BROUGHT TO LIFE\n'

"A FRAME FROM PATHER PANCHALI CLOSELY REFLECTS RAY'S ORIGINAL SKETCH. THIS STILL CAPTURES HIS VISION IN ACTION — TRANSLATING THE DRAWN IMAGINATION INTO A LIVING, BREATHING MOMENT ON SCREEN.",


    },
     {
      'image': 'assets/images/apudurgastill1.jpg',
      'caption': 'THE SCENE BROUGHT TO LIFE\n'

"A FRAME FROM PATHER PANCHALI CLOSELY REFLECTS RAY'S ORIGINAL SKETCH. THIS STILL CAPTURES HIS VISION IN ACTION — TRANSLATING THE DRAWN IMAGINATION INTO A LIVING, BREATHING MOMENT ON SCREEN.",

    },
    {
      'image': 'assets/images/ray_script5.jpg',
      'caption': 'RAY ENVISIONED THE CHARACTER WITH DISTINCT FEATURES — HUMOROUS, EXPRESSIVE, AND SLIGHTLY EXAGGERATED.',
    },
    {
      'image': 'assets/images/goopygyne.jpg',
      'caption': 'RAY FOUND THE ACTORS WHO MIRRORED THAT EXACT VISION, BRINGING THE DRAWING TO LIFE ON SCREEN IN GOOPY GYNE BAGHA BYNE.',
    },
    {
      'image': 'assets/images/gupygyne.png',
      'caption': 'THE ICONIC DUO OF GOOPY AND BAGHA,THEIR EXPRESSIONS AND ENERGY PERFECTLY EMBODY RAY’S WHIMSICAL VISION.',
    },
    {
      'image': 'assets/images/satrang.jpg',
      'caption': 'IN THIS SKETCH FOR SHATRANJ KE KHILARI, RAY NOT ONLY DREW THE CHARACTER BUT SURROUNDED IT WITH HANDWRITTEN NOTES REVEALING HIS THOUGHT PROCESS.'
'HE ANALYZED EVERYTHING THE PAGE READS LIKE A PSYCHOLOGICAL PROFILE, SHOWING HOW DEEPLY RAY UNDERSTOOD HIS CHARACTERS BEFORE BRINGING THEM TO LIFE..',
    },
    
    {
      'image': 'assets/images/Shatranj.jpg',
      'caption': 'TO MAKE EVERY MOVE AUTHENTIC, RAY IMMERSED HIMSELF IN REAL CHESS STRATEGIES — ENSURING THE GAME ON SCREEN WASN’T JUST DRAMATIC, BUT GENUINELY PLAYABLE..',
    },
    {
      'image': 'assets/images/satrangkikhiladistill.jpg',
      'caption': ' A SCENE WHERE EACH MOVE IS ROOTED IN ACTUAL GAMEPLAY — REFLECTING RAY’S COMMITMENT TO REALISM AND STORYTELLING THROUGH DETAIL.',
    },
  ];

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _pages.length;
    });
  }

  void _prevImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _pages.length) % _pages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final current = _pages[_currentIndex];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 24),
       
       

        /// Row with Left Button - Image - Right Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: _prevImage,
            ),
            Expanded(
              child: Image.asset(
                current['image']!,
                fit: BoxFit.contain,
                height: 300,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              onPressed: _nextImage,
            ),
          ],
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            current['caption']!,
            style: const TextStyle(fontSize: 14, color: Colors.white70,
            decoration: TextDecoration.none
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
