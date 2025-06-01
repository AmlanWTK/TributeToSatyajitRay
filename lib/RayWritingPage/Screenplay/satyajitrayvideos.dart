// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class RayScene{
//   final String title;
//   final String videoId;
//   final String analysis;

//   RayScene({
//     required this.title,
//     required this.videoId,
//     required this.analysis,
//   });
// }

// class Satyajitrayvideos extends StatelessWidget {
//   final List<RayScene> rayscenes=[
//     RayScene(
//       title: "Apu and Durga's Train Scene(Pather Oanchali)", 
//       videoId: 'https://youtu.be/bgltGKZsGK0?si=VLUqVkLBEWwrshH6', 
//       analysis: "Apu's first experience of a train symbolizes the beginning of exploration and modernity clashing with rural life.",
//       ),
//       RayScene(
//         title:'The Swing  Scene(Charrulata)' , 
//         videoId: 'https://youtu.be/C_lzCNgDGVM?si=e_wWlWpuXZOKMHX-', 
//         analysis: "Ray uses silence and mise-en-scène to convey Charulata's emotional isolation and longing.",
//         ),
// RayScene(
//       title: "Durga’s Dance in the Rain (Pather Panchali)",
//       videoId: "https://youtu.be/KnhVvKzQLXQ?si=qDShh_zW9OFC8OvS",
//       analysis: "Nature and joy are intertwined in this scene, representing fleeting childhood moments.",
//     ),
//         RayScene(
//       title: "Opening Scene (Nayak)",
//       videoId: "https://youtu.be/_emldZ_Hcjo?si=DwSPhwzywFrodlk7",
//       analysis: "A film star’s duality is introduced visually as he moves through crowds and solitude.",
//     ),
//          RayScene(
//         title:'Father And Son(Apur Sangsar)' , 
//         videoId: 'https://youtu.be/LeQsF14lL5g?si=BgNJvnExdVzgqkI5', 
//         analysis: "Apu's first experience of a train symbolizes the beginning of exploration and modernity clashing with rural life.",
      
//         ),
//          RayScene(
//         title:'Definition of Civilisation (Agantuk)' , 
//         videoId: 'https://youtu.be/SrwRdKe-OhY?si=8kYjYV9-slggweKK', 
//         analysis: "Apu's first experience of a train symbolizes the beginning of exploration and modernity clashing with rural life.",
      
//         ),
//   ];
//    Satyajitrayvideos({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints){
//       int crossAxisCount = constraints.maxWidth > 800 ? 2 : 1;
//       return Padding(
//         padding: EdgeInsets.all(16),
//         child: GridView.count(
//           crossAxisCount: crossAxisCount,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//           shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           childAspectRatio: 1.4,
//           children: rayscenes.map((scene) => buildSceneCard(scene)).toList(),

//           ),
//         );
//     });
//   }
//   Widget buildSceneCard(RayScene scene) {
//     YoutubePlayerController controller = YoutubePlayerController(
//       initialVideoId: scene.videoId,
//       flags: YoutubePlayerFlags(
//         autoPlay: false,
//         mute: false,
//       ),
//     );

//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             AspectRatio(
//               aspectRatio: 16 / 9,
//               child: YoutubePlayer(
//                 controller: controller,
//                 showVideoProgressIndicator: true,
//               ),
//             ),
//             SizedBox(height: 8),
//             Text(
//               scene.title,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 6),
//             Text(
//               scene.analysis,
//               style: TextStyle(fontSize: 14, height: 1.4),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//_emldZ_Hcjo charulata
//C_lzCNgDGVM Nayak
//LeQsF14lL5g apur sangsar
//SrwRdKe-OhY
 
// import 'package:flutter/material.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';

// class YoutubePlayerScreen extends StatefulWidget {
//   const YoutubePlayerScreen({super.key});

//   @override
//   State<YoutubePlayerScreen> createState() => _YoutubePlayerScreenState();
// }

// class _YoutubePlayerScreenState extends State<YoutubePlayerScreen> {
//   // To control the youtube video functionality
//   final _controller = YoutubePlayerController();
//   @override
//   void initState() {
//     super.initState();
//     // TO load a video by its unique id
//     _controller.loadVideoById(videoId: "SrwRdKe-OhY");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
       
//         child: Center(
//           // Youtube player as widget
//           child: YoutubePlayer(
//             controller: _controller, // Controler that we created earlier
//             aspectRatio: 16 / 9,      // Aspect ratio you want to take in screen
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Satyajitrayvideos extends StatefulWidget {
  const Satyajitrayvideos({super.key});

  @override
  State<Satyajitrayvideos> createState() => _SatyajitrayvideosState();
}

class _SatyajitrayvideosState extends State<Satyajitrayvideos> {
  final List<RayScene> rayscenes = [
    RayScene(
      title: "Father And Son (Apur Sansar)",
      videoId: 'LeQsF14lL5g',
      analysis: "The emotional reunion between father and son...",
    ),
    RayScene(
      title: "The Swing Scene (Charulata)",
      videoId: 'C_lzCNgDGVM',
      analysis: "Ray uses silence and mise-en-scène to convey Charulata's emotional isolation...",
    ),
    // Add other scenes as needed
  ];

  late YoutubePlayerController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showFullscreenButton: true,
        //autoPlay: false,
        showVideoAnnotations: false,
      ),
    )..loadVideoById(videoId: rayscenes[_currentIndex].videoId);
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  void _playVideo(int index) {
    setState(() {
      _currentIndex = index;
      _controller.loadVideoById(videoId: rayscenes[index].videoId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Main Video Player
              AspectRatio(
                aspectRatio: 16 / 9,
                child: YoutubePlayer(
                  controller: _controller,
                  aspectRatio: 16 / 9,
                ),
              ),
              const SizedBox(height: 20),
              // Video Selector Grid
              GridView.count(
                crossAxisCount: constraints.maxWidth > 800 ? 2 : 1,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 3,
                children: List.generate(rayscenes.length, (index) {
                  return _buildSceneSelector(rayscenes[index], index);
                }),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSceneSelector(RayScene scene, int index) {
    return GestureDetector(
      onTap: () => _playVideo(index),
      child: Card(
        elevation: 4,
        color: _currentIndex == index ? Colors.blue[100] : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                scene.title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: _currentIndex == index ? Colors.blue : Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                scene.analysis,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RayScene {
  final String title;
  final String videoId;
  final String analysis;

  RayScene({
    required this.title,
    required this.videoId,
    required this.analysis,
  });
}