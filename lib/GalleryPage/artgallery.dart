import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Artgallery extends StatefulWidget {
  const Artgallery({super.key});

  @override
  State<Artgallery> createState() => _ArtgalleryState();
}

class _ArtgalleryState extends State<Artgallery> {
final ScrollController _scrollController=ScrollController();

void _scrollLeft(){
  _scrollController.animateTo(
    _scrollController.offset - 300, 
    duration: Duration(milliseconds: 500), 
    curve: Curves.ease
    );
}

void _scrollRight(){
  _scrollController.animateTo(_scrollController.offset + 300, 
  duration: Duration(milliseconds: 300),
   curve: Curves.ease
   );
}

 final List<String> imageUrls=[
  'https://i.imgur.com/MW5bW7z.jpeg',
  'https://i.imgur.com/ZGaq1Nk.jpeg',
  'https://i.imgur.com/jNGRY2I.jpeg',
  'https://i.imgur.com/R3NaNLk.jpeg',
  'https://i.imgur.com/igs6jEH.jpeg',
  'https://i.imgur.com/fcNJRZK.jpeg',
  'https://i.imgur.com/hMO3RTP.jpeg',
  'https://i.imgur.com/QqK4zah.jpeg',
  'https://i.imgur.com/Lvckb1w.jpeg',
  'https://i.imgur.com/MBH2NO8.jpeg',
  'https://i.imgur.com/6RfU2Jt.jpeg',
  'https://i.imgur.com/VYenOsr.jpeg',
  'https://i.imgur.com/QoHHvS1.jpeg',
  'https://i.imgur.com/TrJvmTM.jpeg',
  'https://i.imgur.com/vsQIJBH.jpeg',
  'https://i.imgur.com/Lr70mkO.jpeg',
  'https://i.imgur.com/PqKnOx6.jpeg',
  'https://i.imgur.com/4CmZMrv.jpeg',
  'https://i.imgur.com/bgbOIxX.jpeg',
  'https://i.imgur.com/bHfmT7o.jpeg',
  'https://i.imgur.com/y7YcU8p.jpeg',
  'https://i.imgur.com/Xnt2yEs.jpeg',
  'https://i.imgur.com/rvbSdSV.jpeg',
  'https://i.imgur.com/PcsjsVq.jpeg',
  'https://i.imgur.com/zmnsxBP.jpeg',
  'https://i.imgur.com/T53PsCe.jpeg',
  'https://i.imgur.com/xSpcYya.jpeg',
  'https://i.imgur.com/yIyJ4RU.jpeg',
  'https://i.imgur.com/MjBRXNg.jpeg',
  'https://i.imgur.com/CXM4KvP.jpeg',
  'https://i.imgur.com/JN2rIYf.jpeg',
  'https://i.imgur.com/Rxn4ES5.jpeg',
  'https://i.imgur.com/87rO0Z8.jpeg',
  'https://i.imgur.com/w9OFRo0.jpeg',
  'https://i.imgur.com/VhlB6VA.png',
  'https://i.imgur.com/2b4gAV0.jpeg',
  'https://i.imgur.com/GsAYNte.jpeg',
  'https://i.imgur.com/PDedIfN.jpeg',
  'https://i.imgur.com/GzCZTpV.jpeg',
  'https://i.imgur.com/TghD9VE.jpeg',
  'https://i.imgur.com/xCarfCn.jpeg',
  'https://i.imgur.com/tnnaSl1.jpeg',
  'https://i.imgur.com/qANM7ug.jpeg',
  'https://i.imgur.com/HlQynZm.jpeg',
  'https://i.imgur.com/PIyF6cI.jpeg',
  'https://i.imgur.com/6ztuvGQ.jpeg',
  'https://i.imgur.com/baWF6PW.jpeg',
  'https://i.imgur.com/zYgim7k.jpeg',
  'https://i.imgur.com/MYnMBgR.jpeg',
  'https://i.imgur.com/4vUZIsd.jpeg',
  'https://i.imgur.com/gXmRtK8.jpeg',
  'https://i.imgur.com/2HtTmBB.jpeg',
  'https://i.imgur.com/IfKWSfA.jpeg',
  'https://i.imgur.com/gVsZMZx.jpeg',
  'https://i.imgur.com/qTLuDPk.jpeg',
  'https://i.imgur.com/Uema1ns.jpeg',

  



 ];



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        
      ),
      color:  const Color(0xFF222222),
       margin: const EdgeInsets.all(20),
      child: Container(
        
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ChhobiKotha (ছবিকথা)",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  color: Colors.blueGrey,
                  icon: Icon(Icons.arrow_back_ios_new),
                  onPressed: _scrollLeft,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imageUrls.map((url) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 260,
                          height: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey.shade700,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 5,
                                offset: Offset(0, 2),
                              )
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: FittedBox(
                              fit: BoxFit.contain, // This ensures full image is shown
                              child: Image.network(
                                url,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                IconButton(
                  color: Colors.blueGrey,
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: _scrollRight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}