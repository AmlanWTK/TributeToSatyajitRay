
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oldcity/trivialfacts/cardwidget.dart';
import 'package:oldcity/trivialfacts/expandedcard.dart';

class RayCardApp extends StatefulWidget {
  const RayCardApp({super.key});

  @override
  State<RayCardApp> createState() => _RayCardAppState();
}

class _RayCardAppState extends State<RayCardApp> with TickerProviderStateMixin {
  final List<Map<String, String>> cards = [
    {
      'title': '🎬 The Boy with a Torch and a Notebook',
      'text': "Long before Satyajit Ray became a global filmmaking icon, he was a curious teenager sneaking into movie halls with a notebook and torch in hand. He would watch one film a week at cinemas like Metro or Globe in Calcutta, jotting down notes first on acting — then slowly evolving toward direction and craft.\nHollywood fascinated him, especially the works of masters like Billy Wilder. After watching Double Indemnity, young Ray even wrote a 12-page letter to Wilder. Wilder never replied — but Ray would go on to surpass many he once admired.\nIn his 1991 Oscar acceptance speech, he fondly recalled that unsent reply. Even on his deathbed, he was still the boy who loved cinema more than anything else. His journey began not with a camera — but with a torchlight in a darkened theater.",
      'image': 'https://i.imgur.com/IEf7c4n.jpeg'
    },
    {
      'title': '🎥 The Cine Club That Shaped a Master',
      'text': "In 1947, Satyajit Ray co-founded the Calcutta Film Society with three fellow enthusiasts. They hunted for rare film reels, knocking on distributor doors to borrow unseen gems. Together they screened works like Maria Candelaria, Nanook of the North, and Dance of Life.\nBritish Council soon joined in, lending iconic films like Night Mail that sparked deep debates. The Society became a rare space in India where global cinema was dissected and cherished. Indian experimental films like Kalpana by Uday Shankar became hot topics of discussion.\nRay, always the observer, even photographed the film’s bold cinematography during screenings. These sessions weren’t just screenings — they were classrooms of pure cinematic exploration. What began as a film club became the cradle of a visionary’s artistic awakening. Calcutta Film Society didn’t just show films — it shaped one of cinema’s greatest storytellers.",
      'image': 'https://i.imgur.com/ZSPXTYa.jpeg'
    },
    {
      'title': '🎶 The Whistle That Became a Classic',
      'text': "Subrata Lahiri, one of Satyajit Ray’s assistant directors, recalls a fascinating story behind the theme music of Ray’s first masterpiece, Pather Panchali. The haunting melody wasn’t planned — it was born from an improvisation by the legendary Pandit Ravi Shankar. Ray had been whistling a tune aloud, and after rejecting many earlier compositions by Ravi Shankar, the maestro finally adapted Ray’s whistle into the unforgettable score that defines the film’s soul.\nThis collaboration of Ray’s artistic vision and Ravi Shankar’s genius gave birth to one of Indian cinema’s most memorable musical moments, proving sometimes the best creativity comes from simple, spontaneous ideas.",
      'image': 'https://i.imgur.com/KUWRDhd.jpeg'
    },
    {
      'title': '💡 Inventing Natural Light',
      'text': "While shooting Pather Panchali, Satyajit Ray broke with industry norms to chase realism. He and his young cinematographer, Subrata Mitra—who had never handled a movie camera before—pioneered a technique called bounced light to simulate the softness of natural daylight. Instead of using harsh studio lights, they bounced light off large pieces of white cloth.\nThis gave the scenes a gentle, diffused look—like sunlight filtered through clouds. It allowed for subtle shadows and more organic moods that suited rural Bengal’s ambiance. This method was revolutionary in Indian cinema at the time, especially for a debut film. It demonstrated Ray’s desire for visual authenticity, even on a shoestring budget. The innovation later became a standard practice in world cinema.\nIn essence, Ray didn’t just tell stories—he rewrote the visual grammar of filmmaking.",
      'image': 'https://i.imgur.com/2FBMgVb.jpeg'
    },
    {
      'title': '🐾 The Dog, the Candy Man, and a Perfect Illusion',
      'text': "One of Pather Panchali’s most iconic scenes features Chinibash the candy seller, rhythmically walking by the pond with Apu, Durga, and a dog trailing behind. Ray insisted on adding the dog to enrich the visual storytelling — so Durga carried a chunk of meat to tempt it into joining the little procession.\nThe result? A vivid slice of life that looked so natural, critics mistook it for a documentary. In fact, the scene took half a day to choreograph and shoot with painstaking care. But tragedy struck — when Ray resumed filming later, the original actor playing Chinibash had passed away. To finish the scene, Ray used a body double cleverly shot from behind.\nThe illusion was seamless — testament to his meticulous direction and quiet improvisation. Even a silent dog and a missing actor couldn’t stop Ray from completing cinematic poetry.",
      'image': 'https://i.imgur.com/2FBMgVb.jpeg'
    },
    {
    "title": "🎥 The Director Behind the Lens",
    "text": "Satyajit Ray wasn't just the visionary director — he often operated the camera himself. Frustrated by unnecessary retakes and lack of precision from his first cinematographer, Ray decided to take control of the lens to ensure every frame matched his vision.\nHe discovered that new actors felt more at ease when he was behind the camera, which helped him capture more natural, powerful performances. Ray believed that only from behind the lens could he judge acting and framing perfectly.\nHis trusted lighting cameraman, Subrata Mitra, was only 21 and completely inexperienced, yet they pioneered techniques like bounced light to simulate natural lighting indoors. This bold, minimalist approach gave Pather Panchali its haunting realism and elegance. Ray’s hands-on method wasn’t just practical — it was part of his storytelling magic.",
    "image": "https://i.imgur.com/zmnsxBP.jpeg"
  },
  {
    "title": "🐪 Camels, Coal & Chaos: The Wild Desert Shoot of Sonar Kella",
    "text": "While shooting Sonar Kella, Satyajit Ray needed camels — and not just a few. The team sourced them from a remote Rajasthani village, where the animals arrived dressed in full regal finery, blending perfectly into the golden desert. But that was only the beginning. Ray’s plan involved a dramatic camel-train chase across the dunes.\nThe ideal location was 70 miles from Jaisalmer, near a railway line — essential for the scene. Just as things were falling into place, disaster struck: a sudden coal price hike canceled the train Ray had planned to shoot with. Undeterred, Ray convinced the railway officials to lend him an entire train — engine, carriages, guard’s cabin, and all — in exchange for just the cost of coal.\nFilming the train sequence came with its own adventure. Ray balanced on a mound of coal inside the tender to capture a dramatic shot of smoke billowing from the engine. Unbeknownst to him, the stoker had to dig coal from right under his feet! The team missed the light that day — but returned the next with camels, crew, and camera ready to capture one of Sonar Kella’s most iconic scenes.",
    "image": "https://i.imgur.com/bHfmT7o.jpeg"
  },
  {
    "title": "📽️ The Film: Aranyer Din Ratri (1970)",
    "text": "The teaser campaign was launched for his film Aranyer Din Ratri (\"Days and Nights in the Forest\"), released in 1970.\nWhat Was Innovative?\nInstead of simply announcing the film’s release with a poster or trailer close to the date (as was common back then), Ray rolled out a series of intriguing teaser ads weeks before the release, without disclosing too much about the plot or even the cast. This built curiosity among audiences.\nHis Strategy: Back then, films were typically announced with plain posters close to release, but Ray’s cryptic ads revealed nothing but the film's title, building excitement organically. This slow-drip approach was a precursor to modern teaser marketing in Indian cinema.",
    "image": "https://i.imgur.com/6CcwZqo.jpeg"
  },
  {
    "title": "✍️ The Director Who Designed His Own Fonts: Ray’s Forgotten Legacy in Typography",
    "text": "Satyajit Ray wasn't just a cinematic legend—he was a one-man creative powerhouse. A self-taught graphic designer and typographer, Ray designed four original Roman typefaces, two of which stand out as reflections of his dual nature: refined classicist and fearless experimenter.\n1. Ray Roman: This elegant serif font mirrored the tradition of old-style Roman typefaces. With its graceful balance and clarity, it was perfect for formal uses—Ray often deployed it in film title cards and book jackets. It embodied his love for Western classical design and meticulous precision.\n2. Ray Bizarre: True to its name, this was Ray unchained. A decorative, surreal font bursting with unconventional curves and playful forms, it evoked fantasy and whimsy. It was ideal for imaginative works and showed his fearless spirit as a designer who didn't follow trends—he set them.\nThough none of these fonts were ever digitized or released commercially, they live on in Ray’s posters, title sequences, and book designs. His deep training at Santiniketan under masters like Nandalal Bose, and his stint at the British ad agency D.J. Keymer, sharpened his instincts for layout and visual storytelling.\nRay wasn’t just a director—he was the design department, art director, copywriter, and font creator rolled into one. His films were his vision in every sense—right down to the very letters on screen.",
    "image": "https://i.imgur.com/K6waKSs.jpeg"
  },
  {
    "title": "🖋️ The Filmmaker Who Could Draw: Satyajit Ray and His Magical World of Illustrations",
    "text": "Before Satyajit Ray captivated the world through cinema, he had already mastered another art—illustration. With a pen in hand, Ray brought to life worlds of fantasy, mystery, and science fiction. His unique drawing style—clean, expressive, and full of charm—made him one of the most distinctive visual storytellers in Indian publishing.\nReviving a Family Legacy:\nIn 1961, Ray resurrected Sandesh, a beloved Bengali children’s magazine originally founded in 1913 by his grandfather, Upendrakishore Ray Chowdhury. But Ray didn’t just edit the magazine—he became its creative engine. He designed the layouts, crafted stories, and created over a thousand original illustrations, giving Sandesh a fresh, playful identity.\nRay the Illustrator:\nWhether drawing fantastical beasts for Professor Shonku, thrilling moments for Feluda, or reimagined folk tales, Ray’s illustrations were bold, witty, and deeply imaginative. Influenced by Western greats like Saul Steinberg and Aubrey Beardsley, and rooted in Indian folk art traditions, Ray created a style that was unmistakably his own—simultaneously global and Bengali.\nHis work extended far beyond Sandesh. Ray designed book covers, title pages, logos, film posters, and even fonts. His film posters—such as those for Pather Panchali, Charulata, and Goopy Gyne Bagha Byne—were often hand-drawn in minimalist, striking styles that left a lasting visual impact.\nDrawing Stories Before Shooting Them:\nRay once said, “I think visually.” That’s why his films feel so painterly and precise. His storyboards were essentially comic strips—frames full of life, movement, and detail. Each one reflected his skills in line drawing, cross-hatching, and silhouette composition.\nTo Ray, drawing wasn’t just a side skill—it was an essential part of how he imagined and told stories. And through his thousands of illustrations, he created a parallel universe of Bengali childhood, filled with wit, wonder, and wisdom.",
    "image": "https://i.imgur.com/NVtl343.jpeg"
  },
  {
    "title": "✍️ The Pen That Failed and the Brush That Passed",
    "text": "In Nayak, during a scene where Uttam Kumar signs an autograph, the pen unexpectedly stops working. Instead of calling cut, Ray let the moment unfold naturally—Kumar dipped the pen in water and continued signing. Ray loved the spontaneity and kept the take in the final cut.\nYet, this same director who embraced spontaneity also once rejected over 60 shaving brushes before selecting the perfect one—for a blink-and-miss moment in the same film. When he finally found it, he exclaimed, \"This is exactly what I needed!\" His assistant later remarked, \"I doubt the audience even noticed.\" But Ray’s obsession with visual detail never wavered—that was his cinema.",
    "image": "https://i.imgur.com/Wz9d205.jpeg"
  },
  {
    "title": "🧠 Master of Suspense, On and Off Screen: How Ray Invented the Indian Film Teaser",
    "text": "Long before Bollywood discovered the buzz of “first looks” and teaser trailers, Satyajit Ray was already rewriting the rules of film marketing. For his 1970 film Aranyer Din Ratri, Ray launched what is now credited as India’s first teaser advertising campaign.\nBack then, films were typically announced with plain posters close to the release. But Ray took a different route — dropping cryptic ads weeks in advance that revealed nothing but the film's title. No cast. No plot. Just minimal design and maximum intrigue.\nThis slow-drip strategy built excitement organically, drawing audiences in through curiosity. And yes — Ray himself designed every teaser. With his unique mix of graphic design skill and psychological insight, he crafted a campaign that felt more like storytelling than promotion.\nThis innovative rollout not only boosted anticipation for the film but also planted the seed for modern Indian film marketing. Satyajit Ray, it turns out, was as much a master of suspense in his posters as he was in his plots.",
    "image": ""
  },
  {
    "title": "🎼 The Double-Flute Magic in Goopy Gyne Bagha Byne",
    "text": "The haunting tune during the desert song was played by a folk musician using two flutes—one for melody, the other for a continuous drone. The flutes were called satara and came from the village of Khuri. The musician, Shaukat Ali, hoped the broadcast might reach his brother in Pakistan—a deeply moving moment that infused real emotion into cinema.",
    "image": "https://i.imgur.com/HSI3eU4.jpeg"
  },
  {
    "title": "🎥 Behind the Battle Song – Goopy Gyne Bagha Byne",
    "text": "During the filming of the iconic battle song in Goopy Gyne Bagha Byne, Satyajit Ray had just 30 crew members to manage a scene with 1,000 extras and camels — something that would take hundreds in Hollywood.\nTo his surprise, the extras — mostly Muslim villagers — refused to wear the colorful army costumes, preferring their everyday white clothes. Ray tried using a loudspeaker to explain the importance of costumes, but it failed! So, his team had to personally convince every man, group by group. Slowly, they agreed.\nThe song shoot itself was complex: 40+ carefully timed shots, camels in formation, and actors miming along with playback.\nLater that evening, a local musician, Shaukat Ali, played a haunting melody using two flutes at once — a rare style from the village of Khuri. After recording, he quietly said:\n\"If you play this on the radio, maybe my brother in Pakistan will hear it.\"\nA touching reminder that Ray’s filmmaking wasn’t just about cinema — it was about people, emotion, and humanity.",
    "image": "https://i.imgur.com/4BAVgjP.jpeg"
  },
  {
    "title": "🏔️ A Singing Boy, A Chocolate, and Kanchenjungha’s Grand Reveal",
    "text": "In Kanchenjungha, Ray captured a fleeting, magical moment with a local boy. The boy, mouth full of chocolate gifted by Monisha’s suitor, sang a folk tune—looking straight into the camera with striking honesty. Just behind him, the clouds parted, revealing the towering Kanchenjungha peak.\nRay had subtly shown the boy earlier, trailing the couple along Darjeeling’s slopes. But this final shot elevated the ordinary into something lyrical and transcendent. It wasn't scripted grandeur — it was spontaneous, human, and grounded in reality. Ray made the child, the song, and the landscape part of the emotional tapestry. With one gesture and a mountain backdrop, he captured both heartbreak and hope. This was Ray’s genius — turning a local boy into the soul of the scene.",
    "image": "https://i.imgur.com/kn2XU0S.jpeg"
  }
  ];

  int startIndex = 0;
  bool isExpanded = false;
  int expandedIndex = -1;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startAutoSlide();
  }

  void startAutoSlide() {
    timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!isExpanded) {
        setState(() {
          startIndex = (startIndex + 1) % cards.length;
        });
      }
    });
  }

  void stopAutoSlide() => timer?.cancel();

  void onCardTap(int index) {
    stopAutoSlide();
    setState(() {
      isExpanded = true;
      expandedIndex = index;
    });
  }

  void onBackTap() {
    startAutoSlide();
    setState(() {
      isExpanded = false;
      expandedIndex = -1;
    });
  }

  List<Map<String, String>> get visibleCards {
    return List.generate(3, (i) => cards[(startIndex + i) % cards.length]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Center(
        child: Stack(
         children: [
            AnimatedSwitcher(
            duration: const Duration(milliseconds: 600),
            transitionBuilder: (child, animation) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.3),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: animation,
                curve: Curves.easeInOut,
              )),
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            ),
            child: isExpanded
                ? ExpandedCard(card: cards[expandedIndex], onBackTap: onBackTap,)
                : Column(
                    key: ValueKey(startIndex),
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: visibleCards
                        .asMap()
                        .entries
                        .map(
          (entry) => CardWidget(
            card: entry.value,
            index: entry.key,
            startIndex: startIndex,
            totalCards: cards.length,
            onCardTap: onCardTap,
          ),
        )
                        .toList(),
                  ),
          ),
          if(!isExpanded)
          Positioned(
            top: 24,
            left: 12,
            child: IconButton(
              onPressed:Navigator.of(context).pop , 
              icon: Icon(Icons.arrow_back,
              color: Colors.blueGrey,
              )))
         ],
        ),
      ),
      
      
    );
  }
}