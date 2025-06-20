import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/RayWritingPage/ShortStories/shortstorieshomeloader.dart';
import 'package:oldcity/RayWritingPage/TariniKhuro/tarinikhurohomeloader.dart';
import 'package:oldcity/RayWritingPage/feludaHomeLoader.dart';
import 'package:oldcity/RayWritingPage/shonkuHomeloader.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';
import 'package:oldcity/videogrid/combinesection.dart';

// ✅ MODEL CLASS
class RayWritingCategory {
  final String title;
  final String description;
  final String imagePath;

  RayWritingCategory({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  factory RayWritingCategory.fromJson(Map<String, dynamic> json) {
    return RayWritingCategory(
      title: json['title'],
      description: json['description'],
      imagePath: json['imagePath'],
    );
  }
}

// ✅ JSON LOADER
Future<List<RayWritingCategory>> loadRayCategories(BuildContext context) async {
  final jsonString =
      await DefaultAssetBundle.of(context).loadString('assets/ray_writings_sections.json');
  final List<dynamic> jsonList = json.decode(jsonString);
  return jsonList.map((json) => RayWritingCategory.fromJson(json)).toList();
}

// ✅ MAIN WIDGET PAGE
class RayWritingsPage extends StatelessWidget {
  const RayWritingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(" 🕵️‍♂️ Ray’s Worlds: Mystery, Magic & Mind 🪄",
          style: GoogleFonts.playfairDisplay(
            fontSize: 38,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
     backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          
          child: FutureBuilder<List<RayWritingCategory>>(
            future: loadRayCategories(context),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final categories = snapshot.data!;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    // ✅ Cover Section
                    Stack(
                      children: [
                        // Image.asset(
                        //   'assets/images/cover.jpg',
                        //   width: double.infinity,
                        //   height: 400,
                        //   fit: BoxFit.cover,
                        // ),

                        Container(
  padding: const EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      'assets/images/cover.jpg',
      width: double.infinity,
      height: 550,
      fit: BoxFit.cover,
    ),
  ),
),

                        Positioned(
                          left: 20,
                          top: 230,
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Explore Categories",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Wrap(
                                  spacing: 8,
                                  children: [
                                    categoryChip(context, "Feluda Mysteries"),
                                    categoryChip(context, "Professor Shonku’s Inventions"),
                                    categoryChip(context, "Short Stories Collection"),
                                    categoryChip(context, "Adventures of Tarini Khuro"),
                                    categoryChip(context, "Screenplays & Scripts Showcase"),
                                 
                                   // categoryChip(context, "Legacy of Satyajit Ray"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
        
                    const SizedBox(height: 30),
        
                    // ✅ Responsive Grid of Cards
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final isWide = constraints.maxWidth > 800;
                        final crossAxisCount = isWide ? 3 : 1;
                        return 
                        Container(
                          
                          
        
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: categories.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 1.17,
                            ),
                            itemBuilder: (context, index) {
                              final category = categories[index];
                              return InkWell(
                                onTap: () {
                                  Widget page;
                                  final title = category.title.trim().toLowerCase();
        
                                  if (title.contains('feluda')) {
                                    page = FeludaHomeLoader();
                                  } else if (title.contains('shonku')) {
                                    page = ShonkuHomeLoader();
                                  } else if (title.contains('short stories')) {
                                    page = ShortStoryHomeLoader(); // update later if needed
                                  } else if (title.contains('tarini')) {
                                    page = TariniKhuroHomeloader();
                                  }
                                  
                                  
                                  else if (title.contains('screenplay'))
                                         
                                           {
                                    page = CombinedSections();
                                  }  
                                  else {
                                    page = DetailsPage(title: category.title);
                                  }
        
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => page),
                                  );
                                },
                                child: Container(
        
                                
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
             color: const Color(0xFF1A1A1A),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(0, 6)
              )
            ]
          ),
        
        
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          ),
                                          child: Image.network(
                                            category.imagePath,
                                            height: 240,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              category.title,
                                              style: GoogleFonts.playfairDisplay(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              category.description,
                                              style: GoogleFonts.openSans(
                                                color: Colors.white70,
                                                fontSize: 14,
                                              ),
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// ✅ CHIP HELPER FUNCTION
Widget categoryChip(BuildContext context, String label) {
  return InkWell(
    onTap: () {
      Widget page;
      final normalized = label.trim().toLowerCase();

      if (normalized.contains('feluda')) {
        page = FeludaHomeLoader();
      } else if (normalized.contains('shonku')) {
        page = ShonkuHomeLoader();
      } else if (normalized.contains('short stories')) {
        page = ShortStoryHomeLoader();
      } else if (normalized.contains('tarini')) {
        page = TariniKhuroHomeloader();
      }
      else if (normalized.contains('screenplay') 
               
                 ) {
        page = CombinedSections();
      } else {
        page = DetailsPage(title: label);
      }

      Navigator.push(context, MaterialPageRoute(builder: (_) => page));
    },
    child: Chip(
      label: Text(label, style: const TextStyle(color: Colors.white)),
      backgroundColor: Colors.grey,
    ),
  );
}

// ✅ DETAILS PAGE TEMPLATE (fallback)
class DetailsPage extends StatelessWidget {
  final String title;
  const DetailsPage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          'Coming soon: $title',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
