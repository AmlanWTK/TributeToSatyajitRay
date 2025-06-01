import 'package:flutter/material.dart';

class RajshahiPage extends StatelessWidget {
  const RajshahiPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rajshahi")),
      body: Container(
        height: 500,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: Colors.red,width: 50,height: 50,),
            Container(color: const Color.fromARGB(255, 225, 221, 221),width: 50,height: 50,),
          ],
        ),
      ),
    );
  }
}

// Repeat similarly for ChittagongPage, KhulnaPage, SylhetPage, BarisalPage
