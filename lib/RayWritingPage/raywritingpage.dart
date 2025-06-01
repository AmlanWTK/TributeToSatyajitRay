// ✅ 1. MODEL CLASS
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oldcity/designingwidget/backgroundwrapper.dart';

class RayWritingCategory {
  final String title;
  final String description;
  final String imagePath;

  RayWritingCategory({required this.title, required this.description, required this.imagePath});

  factory RayWritingCategory.fromJson(Map<String, dynamic> json) {
    return RayWritingCategory(
      title: json['title'],
      description: json['description'],
      imagePath: json['imagePath'],
    );
  }
}

// ✅ 2. JSON LOADER
Future<List<RayWritingCategory>> loadRayCategories(BuildContext context) async {
  final jsonString = await DefaultAssetBundle.of(context).loadString('assets/ray_writings_sections.json');
  final List<dynamic> jsonList = json.decode(jsonString);
  return jsonList.map((json) => RayWritingCategory.fromJson(json)).toList();
}

// ✅ 3. MAIN WIDGET PAGE
class RayWritingsPage extends StatelessWidget {
  const RayWritingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWrapper(
        imagePath: 'assets/images/background.jpg',
        blurIntensity: 8.0,
        darkenOpacity: 0.4,
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
                      Image.asset(
                        'assets/images/cover.jpg',
                        width: double.infinity,
                        height: 400,
                        fit: BoxFit.cover,
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
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Explore Categories", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              Wrap(
                                spacing: 8,
                                children: [
                                  Chip(label: Text("Feluda", style: TextStyle(color: Colors.white)), backgroundColor: Colors.grey),
                                  Chip(label: Text("Shonku", style: TextStyle(color: Colors.white)), backgroundColor: Colors.grey),
                                  Chip(label: Text("Short Stories", style: TextStyle(color: Colors.white)), backgroundColor: Colors.grey),
                                  Chip(label: Text("Screenplay", style: TextStyle(color: Colors.white)), backgroundColor: Colors.grey),
                                  Chip(label: Text("Essay", style: TextStyle(color: Colors.white)), backgroundColor: Colors.grey),
                                  Chip(label: Text("Script", style: TextStyle(color: Colors.white)), backgroundColor: Colors.grey),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 30),

                  // ✅ Responsive Grid of Cards
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final isWide = constraints.maxWidth > 800;
                      final crossAxisCount = isWide ? 3 : 1;
                      return Container(

                        margin:EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(0.3),
                        ),
                          
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: categories.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: crossAxisCount,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 1.3,
                            ),
                            itemBuilder: (context, index) {
                              final category = categories[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(title: category.title),
                                    ),
                                  );
                                },
                                child: Container(
                                
                                  decoration: BoxDecoration(
                                    
                                    color: Colors.black.withOpacity(0.3),

                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
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
                                      Padding(
                                        padding: const EdgeInsets.all(12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              category.title,
                                              style:  GoogleFonts.pacifico(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(height: 6),
                                            Text(
                                              category.description,
                                              style: GoogleFonts.ubuntu(color: Colors.white70, fontSize: 14),
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
    );
  }
}

// ✅ DETAILS PAGE TEMPLATE
class DetailsPage extends StatelessWidget {
  final String title;
  const DetailsPage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Coming soon: $title', style: const TextStyle(fontSize: 24))),
    );
  }
}
