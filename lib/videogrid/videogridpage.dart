
import 'dart:ui_web' as ui;

import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';



class VideoGridPage extends StatelessWidget {
  const VideoGridPage({super.key});

  final List<Map<String, String>> videoData = const [
    {
      'id': 'v1',
      'url': 'https://streamable.com/e/mnb9tn',
     'title': 'What is the True Meaning of Life?',
     'englishAnalysis': '''What is the true meaning of life?
In this scene, Satyajit Ray shows life from a different perspective.
Where does true fulfillment lie? Where is the real joy of living?

Apu says—there's a boy who lost everything and grew up through struggle,
yet he finds his happiness in very small things.
He doesn't try too hard to live in a special way—
he finds joy just in the act of living itself.
Even in thinking that he is "as good as dead," he finds peace.''',

'banglaAnalysis': '''এই দৃশ্যে সত্যজিৎ রায় জীবনকে অন্যভাবে তুলে ধরেছেন।
জীবনের সার্থকতা আসলে কোথায়? বাঁচার আনন্দটা কোথায়?

অপু বলছে—একটা ছেলে, যে সব হারিয়ে এক সংগ্রামের মধ্য দিয়ে নিজেকে বড় করেছে,
তবুও সে খুব ছোট ছোট জিনিসের মধ্যেই নিজের আনন্দ খুঁজে পাচ্ছে।
সে খুব বেশি ভালোভাবে বেঁচে থাকার জন্য আলাদা করে কিছু করছে না—
সে বেঁচে থাকার মধ্যেই আনন্দ খুঁজে পাচ্ছে।
তার কাছে নিজেকে মরে গেছে বলে ভাবার মধ্যেই সে আনন্দ খুঁজে পাচ্ছে।''',
    },
    {
      'id': 'v2',
      'url': 'https://streamable.com/e/p4j1uw',
      'title': 'What is the True Meaning of Life?',
      'englishAnalysis': '''What is the true meaning of life?
In this scene, Satyajit Ray shows life from a different perspective.
Where does true fulfillment lie? Where is the real joy of living?

Apu says—there's a boy who lost everything and grew up through struggle,
yet he finds his happiness in very small things.
He doesn't try too hard to live in a special way—
he finds joy just in the act of living itself.
Even in thinking that he is "as good as dead," he finds peace.''',

'banglaAnalysis': '''এই দৃশ্যে সত্যজিৎ রায় জীবনকে অন্যভাবে তুলে ধরেছেন।
জীবনের সার্থকতা আসলে কোথায়? বাঁচার আনন্দটা কোথায়?

অপু বলছে—একটা ছেলে, যে সব হারিয়ে এক সংগ্রামের মধ্য দিয়ে নিজেকে বড় করেছে,
তবুও সে খুব ছোট ছোট জিনিসের মধ্যেই নিজের আনন্দ খুঁজে পাচ্ছে।
সে খুব বেশি ভালোভাবে বেঁচে থাকার জন্য আলাদা করে কিছু করছে না—
সে বেঁচে থাকার মধ্যেই আনন্দ খুঁজে পাচ্ছে।
তার কাছে নিজেকে মরে গেছে বলে ভাবার মধ্যেই সে আনন্দ খুঁজে পাচ্ছে।''',
    },
    {
      'id': 'v3',
      'url': 'https://streamable.com/e/cnl67k',
      'title': 'What is the True Meaning of Life?',
      'englishAnalysis': '''What is the true meaning of life?
In this scene, Satyajit Ray shows life from a different perspective.
Where does true fulfillment lie? Where is the real joy of living?

Apu says—there's a boy who lost everything and grew up through struggle,
yet he finds his happiness in very small things.
He doesn't try too hard to live in a special way—
he finds joy just in the act of living itself.
Even in thinking that he is "as good as dead," he finds peace.''',

'banglaAnalysis': '''এই দৃশ্যে সত্যজিৎ রায় জীবনকে অন্যভাবে তুলে ধরেছেন।
জীবনের সার্থকতা আসলে কোথায়? বাঁচার আনন্দটা কোথায়?

অপু বলছে—একটা ছেলে, যে সব হারিয়ে এক সংগ্রামের মধ্য দিয়ে নিজেকে বড় করেছে,
তবুও সে খুব ছোট ছোট জিনিসের মধ্যেই নিজের আনন্দ খুঁজে পাচ্ছে।
সে খুব বেশি ভালোভাবে বেঁচে থাকার জন্য আলাদা করে কিছু করছে না—
সে বেঁচে থাকার মধ্যেই আনন্দ খুঁজে পাচ্ছে।
তার কাছে নিজেকে মরে গেছে বলে ভাবার মধ্যেই সে আনন্দ খুঁজে পাচ্ছে।''',
    },

{
  'id': 'v4',
  'url': 'https://streamable.com/e/6s13or',
  'title': 'What is the True Meaning of Life?',
  'englishAnalysis': '''What is the true meaning of life?
In this scene, Satyajit Ray shows life from a different perspective.
Where does true fulfillment lie? Where is the real joy of living?

Apu says—there's a boy who lost everything and grew up through struggle,
yet he finds his happiness in very small things.
He doesn't try too hard to live in a special way—
he finds joy just in the act of living itself.
Even in thinking that he is "as good as dead," he finds peace.''',

'banglaAnalysis': '''এই দৃশ্যে সত্যজিৎ রায় জীবনকে অন্যভাবে তুলে ধরেছেন।
জীবনের সার্থকতা আসলে কোথায়? বাঁচার আনন্দটা কোথায়?

অপু বলছে—একটা ছেলে, যে সব হারিয়ে এক সংগ্রামের মধ্য দিয়ে নিজেকে বড় করেছে,
তবুও সে খুব ছোট ছোট জিনিসের মধ্যেই নিজের আনন্দ খুঁজে পাচ্ছে।
সে খুব বেশি ভালোভাবে বেঁচে থাকার জন্য আলাদা করে কিছু করছে না—
সে বেঁচে থাকার মধ্যেই আনন্দ খুঁজে পাচ্ছে।
তার কাছে নিজেকে মরে গেছে বলে ভাবার মধ্যেই সে আনন্দ খুঁজে পাচ্ছে।''',
},



    {
      'id': 'v5',
      'url': 'https://streamable.com/e/rdmune',
      'title': 'In the Spirit of Adda, As Ray Saw It',
      'englishAnalysis': 'Adda — this is something deeply rooted in Bengali blood.\n In one scene from the movie Agantuk, Satyajit Ray beautifully shows the essence of adda.\n'
'Bengalis love to engage in adda, no doubt. But sadly, \nmost of our addas become full of gossip and meaningless talk.\n'
'Very rarely do we see true adda—where people exchange ideas, think deeply, and grow mentally.\n'
'Ray never looked down on adda, but he did point out one thing:\n'
'If we used our addas not for gossip, but for thinking and meaningful discussion, \nour mindset as a society would be much more developed.',
    'banglaAnalysis': 'আড্ডা — এটা এমন একটা বিষয়, যেটা বাঙালির রক্তের সঙ্গেই মিশে আছে। \nআগন্তুক ছবির এক বিশেষ দৃশ্যে সত্যজিৎ রায় সেই আড্ডারই রূপ তুলে ধরেছেন।\n'
'বাঙালি জাতি আড্ডাপ্রিয়, এটা সত্যি। কিন্তু আমাদের অনেক আড্ডাই হয় অন্তসারশূন্য—পরনিন্দা আর গসিপে ভরা।\n'
'সত্যিকারের আড্ডা যেখানে মননচর্চা হবে, ভাবনার আদান-প্রদান হবে—সেইরকম আড্ডা খুব কমই দেখা যায়।\n'
'সত্যজিৎ রায় আড্ডাকে ছোট করে দেখাননি, কিন্তু তিনি এই কথা বলেছেন—\n'
'যদি আমরা আমাদের আড্ডাগুলোকে পরনিন্দার জন্য নয়, চিন্তার বিকাশের জন্য কাজে লাগাতাম, \nতাহলে আমাদের মানসিকতা আরও উন্নত হতো।'
    },
    {
       'id': 'v6',
      'url': 'https://streamable.com/e/oq8000',
      'title': 'The Lonliness of Charulata',
      'englishAnalysis': 'This scene from the movie Charulata can convey—without the need for any spoken language—just\n how deeply a housewife can feel loneliness in her life.\n In this particular shot, as Charulata moves toward the camera, \nthe entire house is shown along with her\n. We understand how vast the house is compared to a single person,\n and yet, in such a large home, she has no one to talk to,\n no companion—she is utterly alone. She lacks nothing materially, \nyet there is no smile on her face. No matter how big our living space is, \nif there is no one to share it with, neither our faces hold a smile nor our hearts feel joy.',
      'banglaAnalysis':'চারুলতা ছবির এই দৃশ্যটি কোনও ভাষার আশ্রয় না নিয়েই আমাদের উপলব্ধি করিয়ে দেয়—\n'
        "একজন গৃহবধূ তার জীবনে কতটা একাকিত্ব অনুভব করতে পারেন।\n"
        "এই দৃশ্যে দেখা যায়, চারুলতা যখন ক্যামেরার দিকে এগিয়ে আসছেন, তখন তার সঙ্গে সঙ্গে গোটা বাড়িটাও দেখানো হয়।\n"
        "আমরা বুঝতে পারি, একজন মানুষের তুলনায় সেই বাড়িটা কতটা বিশাল, অথচ সেই বিশাল বাড়িতে তার কথা বলার কেউ নেই,\n"
        "সঙ্গী নেই—সে নিঃসঙ্গ। তার জীবনে কোনো অভাব নেই, কিন্তু মুখে একটুও হাসি নেই।\n"
        "আমাদের থাকার জায়গা যত বড়ই হোক না কেন, যদি ভাগ করে নেওয়ার কেউ না থাকে,\n"
        "তাহলে মুখে হাসি থাকে না, মনেও সুখ থাকে না।"
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Register all views
    for (var video in videoData) {
      ui.platformViewRegistry.registerViewFactory(
        video['id']!,
        (int _) => html.IFrameElement()
          ..src = video['url']!
          ..style.border = 'none'
          ..allowFullscreen = true,
      );
    }

    return Scaffold(
      
     
      body:Container(

        color: Color(0xFF6D6A75),
       
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            shrinkWrap: true,
          
            itemCount: videoData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two columns
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.5, // Adjust for card height/width
            ),
            itemBuilder: (context, index) {
              final video = videoData[index];
             return VideoCard(
          viewId: video['id']!,
          title: video['title']!,
          englishAnalysis: video['englishAnalysis']!,
          banglaAnalysis: video['banglaAnalysis']!,
        );
            },
          ),
        ),
      )
      
    );
  }
}

class VideoCard extends StatefulWidget {
  final String viewId;
  final String title;
  final String englishAnalysis;
  final String banglaAnalysis;

  const VideoCard({
    super.key,
    required this.viewId,
    required this.title,
    required this.englishAnalysis,
    required this.banglaAnalysis,
  });

  @override
  State<VideoCard> createState() => _VideoCardState();
}
class _VideoCardState extends State<VideoCard> {
  bool isBangla = false;
  bool _visible=false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2, // Reduced elevation for subtle shadow
      color: Color(0xFF1A1A1A), // Semi-transparent black
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Colors.white.withOpacity(0.2), // Subtle border
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: HtmlElementView(viewType: widget.viewId),
              ),
            ),
            const SizedBox(height: 10),
            AnimationLimiter(
              child: Column(
                children: 
                  AnimationConfiguration.toStaggeredList(
                    duration: Duration(milliseconds: 1200),
                    childAnimationBuilder: (widget)=>SlideAnimation(
                      verticalOffset: 70,
                      child: FadeInAnimation(child: widget),

                      ),
                   children: [
 Center(
              child: Text(
                widget.title,
                style: GoogleFonts.pacifico(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text for better contrast
                ),
              ),
            ),
            const SizedBox(height: 5),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    isBangla ? widget.banglaAnalysis : widget.englishAnalysis,
                    style: GoogleFonts.ptSerif(
                      fontSize: 14,
                      color: Colors.white.withOpacity(0.9), // Slightly transparent white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
                   ]
                   )
                ,
              )
              ),
           
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.2), // Transparent button
                  foregroundColor: Colors.white, // White text
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Colors.white.withOpacity(0.5), // Border for visibility
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isBangla = !isBangla;
                  });
                },
                child: Text(isBangla ? 'Read English' : 'Read Bangla'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}