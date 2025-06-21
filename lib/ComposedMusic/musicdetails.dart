import 'package:flutter/material.dart';
import 'dart:ui_web' as ui;


import 'dart:html' as html;

import 'package:oldcity/videogrid/videogridpage.dart';

class Musicdetails extends StatelessWidget {
   Musicdetails({super.key});


final List<Map<String, String>> musicData=[
  {
      'id': 'v1',
      'url': 'https://streamable.com/e/904ouq',
     "title": "Charulata (1964)",
  "englishAnalysis": """Set in 1880s Calcutta, *Charulata* poignantly explores the emotional isolation of its protagonist. Ray’s music—especially the Tagore song “Fule Fule Dhole Dhole”—serves not just as a melodic ornament but as an extension of Charu’s inner world. The music underlines her awakening of desires and creativity, elevating the film’s psychological depth (source: bfi.org.uk).""",

  "banglaAnalysis": """ফিল্মটি ১৮৮০ সালের কলকাতার এক তারাকাব্য জীবনের দৃশ্যে আবর্তিত। চারুলতার একাকিত্ব এবং তার অন্তরের সূক্ষ্ম ওঠা–নামা রায়ের মিউজিক দ্বারা দুর্দান্তভাবে ফুটে ওঠে। “ফুলে ফুলে ঢলে ঢলে” গানটি শুধু চারু ও তার কাজল কাকা—এর মধ্যে একটা মনস্তাত্ত্বিক সেতু তৈরি করে না, বরং পুরো সিনেমার আবেগের ধারাকে বহুগুণে বাড়িয়ে তোলে (source: bfi.org.uk)।"""

    },
    {
      'id': 'v2',
      'url': 'https://streamable.com/e/w68qjh',
      
  "title": "Nayak (1966)",
  "englishAnalysis": """*Nayak* (The Hero) follows a matinee idol on a train journey, where his conversations with a journalist unravel his inner conflicts and insecurities. Satyajit Ray’s background score mirrors the duality of public image versus private despair. The dream sequences are particularly enhanced by his haunting, minimalist music, which subtly exposes the actor’s guilt, vulnerability, and search for identity.""",

  "banglaAnalysis": """*নায়ক* (১৯৬৬) ছবিতে এক জনপ্রিয় চলচ্চিত্র অভিনেতার ট্রেন সফরের গল্প বলা হয়েছে, যেখানে এক সাংবাদিকের সঙ্গে কথোপকথনের মধ্য দিয়ে তার অন্তর্দ্বন্দ্ব ও আত্মদ্বিধা ধীরে ধীরে প্রকাশ পেতে থাকে। রায়ের সঙ্গীত এখানে এক নিঃশব্দ ভাষার মতো কাজ করে—তার খ্যাতির মুখোশের আড়ালে থাকা অসহায়তা ও অপরাধবোধের এক নিঃশব্দ প্রতিধ্বনি। বিশেষ করে স্বপ্নদৃশ্যগুলো রায়ের মিউজিক দ্বারা আরও তীব্র ও অর্থপূর্ণ হয়ে ওঠে।"""
  },
    {
      'id': 'v3',
      'url': 'https://streamable.com/e/b9tqtx',
     "title": "Apur Sansar (1959)",
  "englishAnalysis": """*The World of Apu* captures the mature phase of Apu’s journey—from solitude to love, from loss to renewal. Satyajit Ray composed a gentle, emotionally textured score that perfectly matches Apu’s inner transformation. The wedding sequence, sudden tragedy, and reunion with his son are elevated by the quiet melancholy and hopeful undertones in the music. It’s a deeply human story, and Ray’s score brings out its soul.""",

  "banglaAnalysis": """*অপুর সংসার* (১৯৫৯) অপু ট্রিলজির শেষ পর্ব এবং সেই পর্ব যেখানে সত্যজিৎ রায় নিজেই সঙ্গীত রচনা করেন। এখানে অপু একাকিত্ব থেকে ভালোবাসা, শোক থেকে নতুন জীবনের দিকে এগিয়ে যায়। বিয়ের দৃশ্য, হঠাৎ ঘটে যাওয়া ট্র্যাজেডি এবং শেষপর্যন্ত ছেলের সঙ্গে মিলনের মুহূর্ত—সব কিছুই রায়ের সংবেদনশীল ও হৃদয়স্পর্শী সঙ্গীতের মাধ্যমে জীবন্ত হয়ে ওঠে। সুরের মাধুর্যে যেন অপুর ভেতরের পরিবর্তন ধরা পড়ে।"""
    },

{
  'id': 'v4',
  'url': 'https://streamable.com/e/i80hej',
  "title": "Teen Kanya 1961",
  "englishAnalysis": """*Teen Kanya* (Three Daughters) is an anthology of three stories by Rabindranath Tagore: 'The Postmaster', 'Monihara', and 'Samapti'. Satyajit Ray composed distinct musical themes for each segment to reflect their unique emotional tones. In 'The Postmaster', the music carries a quiet melancholy; in 'Monihara', it creates a sense of ghostly unease; and in 'Samapti', a playful rhythm captures the rebellious spirit of the young girl. Ray’s versatility as a composer shines in how he tailored music to match Tagore’s varied moods.""",

  "banglaAnalysis": """*তিন কন্যা* সত্যজিৎ রায় নির্মিত একটি অ্যান্থলজি ফিল্ম, যেখানে রবীন্দ্রনাথ ঠাকুরের তিনটি গল্প—‘পোস্টমাস্টার’, ‘মনিহারা’, এবং ‘সমাপ্তি’—উপস্থাপিত হয়েছে। প্রতিটি গল্পের জন্য রায় আলাদা সঙ্গীত রচনা করেছেন যা সেই অংশের আবেগ ও পরিবেশকে প্রকাশ করে। ‘পোস্টমাস্টার’-এ সুরগুলো মৃদু বিষণ্ণ, ‘মনিহারা’-তে সুরে রয়েছে ভৌতিক শূন্যতা, আর ‘সমাপ্তি’-তে কিশোরীর দুষ্টুমির সুরে ভরা এক আনন্দময় রিদম। তিনটি ভিন্ন অনুভবকে সঙ্গীতের মাধ্যমে জীবন্ত করে তোলা সত্যজিৎ রায়ের এক অনন্য কৃতিত্ব।"""

},



    {
      'id': 'v5',
      'url': 'https://streamable.com/e/4nthkm',
        "title": "Kanchanjungha 1962",
  "englishAnalysis": """*Kanchanjungha* is Ray’s first original screenplay and also his first color film. Set in Darjeeling, it revolves around an upper-class Bengali family over the course of one afternoon. Ray’s music mirrors the changing moods of the characters and the atmosphere of the hills. His background score is subtle, using nature sounds and minimal instrumentation to blend emotion with environment. It’s a poetic use of music where silence is just as important as sound.""",

  "banglaAnalysis": """*কাঞ্চনজঙ্ঘা* ছিল সত্যজিৎ রায়ের প্রথম মৌলিক চিত্রনাট্য এবং প্রথম রঙিন ছবি। দার্জিলিং শহরে এক উচ্চবিত্ত বাঙালি পরিবারের এক বিকেল ঘিরে কাহিনী আবর্তিত। চরিত্রগুলোর মনের পরিবর্তন এবং পাহাড়ের আবহ রায়ের সঙ্গীতে নিখুঁতভাবে প্রতিফলিত হয়েছে। ব্যাকগ্রাউন্ড মিউজিকে প্রাকৃতিক শব্দ আর সূক্ষ্ম বাদ্যযন্ত্রের ব্যবহার যেন দৃশ্য ও আবেগের মাঝে এক নিঃশব্দ সেতু তৈরি করে। এই ছবিতে সঙ্গীত যেন কবিতার মতো—যেখানে নিঃশব্দতাও একধরনের সুর।"""

    },
    {
       'id': 'v6',
      'url': 'https://streamable.com/e/gl5r82',
        "title": "Abhijan 1962",
  "englishAnalysis": """*Abhijan* (The Expedition) is one of Ray’s lesser-discussed but richly layered films. It follows a proud and impulsive taxi driver who gets involved in smuggling. Satyajit Ray’s music in *Abhijan* combines folk influences and atmospheric scoring to reflect the rustic settings and the character’s moral conflicts. The score carries a rugged energy, complementing the film’s gritty tone and intense character interactions.""",

  "banglaAnalysis": """*অভিযান* সত্যজিৎ রায়ের তুলনামূলকভাবে কম আলোচিত হলেও গভীরভাবে নির্মিত একটি ছবি। এক আত্মঅহংকারী ট্যাক্সিচালকের কাহিনি, যিনি চোরাকারবারে জড়িয়ে পড়েন। এই ছবিতে রায়ের সঙ্গীত গ্রামীণ লোকসঙ্গীতের ছোঁয়া এবং আবহসংগীতের সংমিশ্রণে এক দুর্দান্ত আবহ তৈরি করে। চরিত্রের দ্বন্দ্ব ও পরিবেশের রুক্ষতা তার সুরে স্পষ্টভাবে প্রকাশ পায়। ছবির গ্রাফিক বাস্তবতাকে তার মিউজিক আরও গভীর করে তোলে।"""

    },


 {
       'id': 'v7',
      'url': 'https://streamable.com/e/lwubto',
         "title": "Mahanagar 1963",
  "englishAnalysis": """*Mahanagar* (The Big City) is a powerful social drama about a middle-class housewife who takes a job to support her family, challenging traditional gender roles. Satyajit Ray’s music in this film is subtle and emotionally grounded. He uses soft piano themes and ambient background score to mirror the quiet courage of the protagonist. The music does not overpower, but gently empowers the narrative, emphasizing both the personal and social transformation unfolding on screen.""",

  "banglaAnalysis": """*মহানগর* (১৯৬৩) একটি শক্তিশালী সামাজিক নাটক, যেখানে এক মধ্যবিত্ত গৃহবধূ সংসার চালাতে চাকরি নিতে বাধ্য হন—এবং এর মধ্য দিয়ে সমাজে প্রচলিত লিঙ্গভূমিকার প্রশ্ন তোলে। এই ছবিতে সত্যজিৎ রায়ের সঙ্গীত খুবই সংবেদনশীল ও সূক্ষ্ম। পিয়ানোর মৃদু সুর এবং পরিবেশধর্মী আবহসংগীত গৃহবধূর সাহসিকতাকে নিঃশব্দে তুলে ধরে। সঙ্গীত এখানে গল্পকে ছাপিয়ে যায় না, বরং গল্পের আবেগকে আরও গভীর করে তোলে।"""

    },

     {
       'id': 'v8',
      'url': 'https://streamable.com/e/hnnn96',
          "title": "Goopy Gyne Bagha Byne 1969",
  "englishAnalysis": """*Goopy Gyne Bagha Byne* is a fantasy-adventure film that blends humor, music, and social commentary. Satyajit Ray composed the entire musical score and songs, creating a rich, imaginative soundscape that supports the magical world of the film. He used a variety of traditional Indian instruments, folk tunes, and original melodies to bring the story to life. The songs, often playful and satirical, became instant classics. Ray’s music cleverly balances whimsy and seriousness, enhancing both the comedic and philosophical elements of the narrative.""",

  "banglaAnalysis": """*গোপী গাইন বাঘা বাইন* একটি ফ্যান্টাসি-অ্যাডভেঞ্চার ছবি, যেখানে হাস্যরস, সঙ্গীত এবং সামাজিক বার্তা একসাথে মিশে আছে। সত্যজিৎ রায় পুরো সঙ্গীত ও গানের সুর নিজে রচনা করেছেন, যা ছবির জাদুকরী জগতকে জীবন্ত করে তোলে। তিনি বিভিন্ন ভারতীয় ঐতিহ্যবাহী বাদ্যযন্ত্র, লোকসঙ্গীত এবং মূল সুর ব্যবহার করেছেন। গানগুলো হাস্যকর ও ব্যঙ্গাত্মক হলেও সেগুলো খুব জনপ্রিয় হয়ে ওঠে। রায়ের সঙ্গীত নির্মাণে মিশে আছে কৌতুক ও গভীরতা, যা গল্পের মজার এবং দার্শনিক দিকগুলোকে সমানভাবে সমর্থন করে।"""

    },

  ];





  @override
  Widget build(BuildContext context) {
  for(var music in musicData){
    ui.platformViewRegistry.registerViewFactory(
  music['id']!,
  (int_)=>html.IFrameElement()
  ..src=music['url']!
  ..style.border='none'
  ..allowFullscreen=true,

    );
  }


    return Scaffold(
    
       backgroundColor: const Color(0xFF121212),
      body: Container(
        child: Padding(padding: EdgeInsets.all(16),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1.5,
            
            ),
            itemCount: musicData.length,
         itemBuilder: (context,index){
          final music=musicData[index];
          return VideoCard(
          viewId: music['id']!,
           title: music['title']!, 
           englishAnalysis: music['englishAnalysis']!, 
           banglaAnalysis: music['banglaAnalysis']!);
         }),
        
        ),
      ),
    );
  }
}