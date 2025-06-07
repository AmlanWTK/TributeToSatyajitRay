// import 'package:flutter/material.dart';
// import 'package:oldcity/awardsandachievements/awardprofilecard.dart';

// class Showingawards extends StatelessWidget {
//   const Showingawards({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF121212),
//       appBar: AppBar(
//         title: Text("Awards Timeline"),
//         backgroundColor: Colors.black,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding:EdgeInsets.all(16),
//           child: Wrap(
//             spacing: 16, //space between cards horizontally
//              runSpacing: 76,//space between rows
//              alignment: WrapAlignment.center,
//              children: [
//               AwardProfileCard(
//                 imagePath: 'https://i.imgur.com/gr1kDq7.jpeg',
//                awardTitle: '1955 – President\'s Gold Medal',
//                 subtitle: 'For Pather Panchali, New Delhi',
//               ),
//                AwardProfileCard(
//                 imagePath: 'https://i.imgur.com/6H692br.jpeg',
//                awardTitle: '1956 – Best Human Document',
//                 subtitle: 'For Pather Panchali, Cannes Film Festival',
//               ),
//                AwardProfileCard(
//                 imagePath: 'https://i.imgur.com/BWoNxdZ.jpeg',
//                awardTitle: '1956 – Diploma of Merit,',
//                 subtitle: 'For Pather Panchali, Edinburgh International Film Festival ',
//               ),


//     AwardProfileCard(
//   imagePath: 'https://i.imgur.com/WfF7CJP.jpeg',
//   awardTitle: '1957 – Golden Lion for Best Film',
//   subtitle: 'For Aparajito, Venice Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/NbQlJ1J.jpeg',
//   awardTitle: '1957 – Cinema Nuovo Award',
//   subtitle: 'For Aparajito, Venice Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/OlZVE7e.png',
//   awardTitle: '1957 – Critics Award',
//   subtitle: 'For Aparajito, Venice Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/MMHhcF8.jpeg',
//   awardTitle: '1957 – Golden Gate Best Picture & Director',
//   subtitle: 'For Pather Panchali, San Francisco Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/bj5WxDJ.png',
//   awardTitle: '1958 – Golden Gate Best Picture & Director',
//   subtitle: 'For Aparajito, San Francisco Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/vJ3QOjQ.jpeg',
//   awardTitle: '1958 – Critics Award – Best Film',
//   subtitle: 'For Pather Panchali, Stratford Film Festival, Canada',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/YOTiyHD.jpeg',
//   awardTitle: '1959 – Best Foreign Film',
//   subtitle: 'For Pather Panchali, New York Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/heW0Uss.jpeg',
//   awardTitle: '1965 – Silver Bear for Best Director',
//   subtitle: 'For Charulata, Berlin International Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/EGTKhcj.jpeg',
//   awardTitle: '1967 – Ramon Magsaysay Award',
//   subtitle: 'For Journalism & Creative Communication Arts',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/Ts7hv7z.jpeg',
//   awardTitle: '1970 – President\'s Gold Medal',
//   subtitle: 'For Pratidwandi, Government of India',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/Ysv3zeA.jpeg',
//   awardTitle: '1973 – Golden Bear',
//   subtitle: 'For Ashani Sanket, Berlin International Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/0FPJfao.jpeg',
//   awardTitle: '1974 – Golden Hugo',
//   subtitle: 'For Sonar Kella, Chicago International Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/z2Kvruy.jpeg',
//   awardTitle: '1975 – National Award for Best Direction',
//   subtitle: 'For Jana Aranya, India',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/6RfU2Jt.jpeg',
//   awardTitle: '1976 – Special Jury Prize',
//   subtitle: 'For Jana Aranya, Karlovy Vary Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/DFT4JyV.jpeg',
//   awardTitle: '1977 – National Award – Best Hindi Film',
//   subtitle: 'For Shatranj Ke Khilari, India',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/hMO3RTP.jpeg',
//   awardTitle: '1978 – Special Award',
//   subtitle: 'Berlin Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/Lvckb1w.jpeg',
//   awardTitle: '1978 – Desikottam',
//   subtitle: 'From Visva-Bharati University',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/MBH2NO8.jpeg',
//   awardTitle: '1978 – D.Litt.',
//   subtitle: 'From University of Oxford',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/H2vG7xz.jpeg',
//   awardTitle: '1979 – Special Award',
//   subtitle: 'Moscow Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/tdsH9NJ.jpeg',
//   awardTitle: '1982 – Hommage à Satyajit Ray',
//   subtitle: 'Cannes Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/BchVuxI.jpeg',
//   awardTitle: '1982 – Special Golden Lion of St. Mark',
//   subtitle: 'Venice Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/QqK4zah.jpeg',
//   awardTitle: '1982 – Vidyasagar Award',
//   subtitle: 'Government of West Bengal',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/jNGRY2I.jpeg',
//   awardTitle: '1983 – BFI Fellowship',
//   subtitle: 'British Film Institute',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/igs6jEH.jpeg',
//   awardTitle: '1985 – Dadasaheb Phalke Award',
//   subtitle: 'For Lifetime Contribution to Cinema',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/fcNJRZK.jpeg',
//   awardTitle: '1985 – Soviet Land Nehru Award',
//   subtitle: 'Soviet Union',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/IHznoBo.jpeg',
//   awardTitle: '1987 – Légion d\'Honneur',
//   subtitle: 'France\'s Highest Civilian Award',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/sbc9LK9.jpeg',
//   awardTitle: '1992 – Honorary Academy Award',
//   subtitle: 'Oscar for Lifetime Achievement',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/G4TWD84.png',
//   awardTitle: '1992 – Akira Kurosawa Award',
//   subtitle: 'Lifetime Achievement, San Francisco Film Festival',
// ),
// AwardProfileCard(
//   imagePath: 'https://i.imgur.com/KpOO2cK.jpeg',
//   awardTitle: '1992 – Bharat Ratna',
//   subtitle: 'India\'s Highest Civilian Award',
// ),
//              ],
//           ), 
//           ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:oldcity/awardsandachievements/awardprofilecard.dart';

class Showingawards extends StatelessWidget {
  const Showingawards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121212),
      
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: _buildCustomGrid(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildCustomGrid() {
    final cards = <AwardProfileCard>[
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/gr1kDq7.jpeg',
        awardTitle: '1955 – President\'s Gold Medal',
        subtitle: 'For Pather Panchali, New Delhi',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/6H692br.jpeg',
        awardTitle: '1956 – Best Human Document',
        subtitle: 'For Pather Panchali, Cannes Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/BWoNxdZ.jpeg',
        awardTitle: '1956 – Diploma of Merit',
        subtitle: 'For Pather Panchali, Edinburgh Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/WfF7CJP.jpeg',
        awardTitle: '1957 – Golden Lion for Best Film',
        subtitle: 'For Aparajito, Venice Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/NbQlJ1J.jpeg',
        awardTitle: '1957 – Cinema Nuovo Award',
        subtitle: 'For Aparajito, Venice Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/OlZVE7e.png',
        awardTitle: '1957 – Critics Award',
        subtitle: 'For Aparajito, Venice Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/MMHhcF8.jpeg',
        awardTitle: '1957 – Golden Gate Best Picture & Director',
        subtitle: 'For Pather Panchali, San Francisco Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/bj5WxDJ.png',
        awardTitle: '1958 – Golden Gate Best Picture & Director',
        subtitle: 'For Aparajito, San Francisco Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/vJ3QOjQ.jpeg',
        awardTitle: '1958 – Critics Award – Best Film',
        subtitle: 'For Pather Panchali, Stratford Film Festival, Canada',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/YOTiyHD.jpeg',
        awardTitle: '1959 – Best Foreign Film',
        subtitle: 'For Pather Panchali, New York Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/heW0Uss.jpeg',
        awardTitle: '1965 – Silver Bear for Best Director',
        subtitle: 'For Charulata, Berlin International Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/EGTKhcj.jpeg',
        awardTitle: '1967 – Ramon Magsaysay Award',
        subtitle: 'For Journalism & Creative Communication Arts',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/Ts7hv7z.jpeg',
        awardTitle: '1970 – President\'s Gold Medal',
        subtitle: 'For Pratidwandi, Government of India',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/Ysv3zeA.jpeg',
        awardTitle: '1973 – Golden Bear',
        subtitle: 'For Ashani Sanket, Berlin International Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/0FPJfao.jpeg',
        awardTitle: '1974 – Golden Hugo',
        subtitle: 'For Sonar Kella, Chicago International Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/z2Kvruy.jpeg',
        awardTitle: '1975 – National Award for Best Direction',
        subtitle: 'For Jana Aranya, India',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/6RfU2Jt.jpeg',
        awardTitle: '1976 – Special Jury Prize',
        subtitle: 'For Jana Aranya, Karlovy Vary Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/DFT4JyV.jpeg',
        awardTitle: '1977 – National Award – Best Hindi Film',
        subtitle: 'For Shatranj Ke Khilari, India',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/hMO3RTP.jpeg',
        awardTitle: '1978 – Special Award',
        subtitle: 'Berlin Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/Lvckb1w.jpeg',
        awardTitle: '1978 – Desikottam',
        subtitle: 'From Visva-Bharati University',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/MBH2NO8.jpeg',
        awardTitle: '1978 – D.Litt.',
        subtitle: 'From University of Oxford',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/H2vG7xz.jpeg',
        awardTitle: '1979 – Special Award',
        subtitle: 'Moscow Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/tdsH9NJ.jpeg',
        awardTitle: '1982 – Hommage à Satyajit Ray',
        subtitle: 'Cannes Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/BchVuxI.jpeg',
        awardTitle: '1982 – Special Golden Lion of St. Mark',
        subtitle: 'Venice Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/QqK4zah.jpeg',
        awardTitle: '1982 – Vidyasagar Award',
        subtitle: 'Government of West Bengal',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/jNGRY2I.jpeg',
        awardTitle: '1983 – BFI Fellowship',
        subtitle: 'British Film Institute',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/igs6jEH.jpeg',
        awardTitle: '1985 – Dadasaheb Phalke Award',
        subtitle: 'For Lifetime Contribution to Cinema',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/fcNJRZK.jpeg',
        awardTitle: '1985 – Soviet Land Nehru Award',
        subtitle: 'Soviet Union',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/IHznoBo.jpeg',
        awardTitle: '1987 – Légion d\'Honneur',
        subtitle: 'France\'s Highest Civilian Award',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/sbc9LK9.jpeg',
        awardTitle: '1992 – Honorary Academy Award',
        subtitle: 'Oscar for Lifetime Achievement',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/G4TWD84.png',
        awardTitle: '1992 – Akira Kurosawa Award',
        subtitle: 'Lifetime Achievement, San Francisco Film Festival',
      ),
      AwardProfileCard(
        imagePath: 'https://i.imgur.com/KpOO2cK.jpeg',
        awardTitle: '1992 – Bharat Ratna',
        subtitle: 'India\'s Highest Civilian Award',
      ),
    ];

    List<Widget> rows = [];
    bool isThree = true;

    for (int i = 0; i < cards.length;) {
      int count = isThree ? 3 : 2;
      final chunk = cards.sublist(i, (i + count > cards.length) ? cards.length : i + count);

      rows.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: chunk
                .map((card) => Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: card,
                      ),
                    ))
                .toList(),
          ),
        ),
      );

      i += count;
      isThree = !isThree; // alternate between 3 and 2
    }

    return rows;
  }
}
