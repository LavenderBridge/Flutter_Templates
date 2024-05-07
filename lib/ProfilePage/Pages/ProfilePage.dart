import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_blig/ProfilePage/Configs/configs.dart';
import 'package:web_blig/ProfilePage/Pages/PlaceholderPage.dart';
import 'package:web_blig/ProfilePage/Pages/Widgets/MenuCard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.teal,
              // backgroundImage: AssetImage(
              //   'lib\\assets\\images\\profile.jpg',
              // ),
            ),
            Column(
              children: [
                Text(
                  "John Doe",
                  style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.8), fontSize: 25),
                ),
                Text(
                  "+91 98776 45231",
                  style: GoogleFonts.montserrat(
                      color: Colors.white.withOpacity(0.6), fontSize: 12),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemsList.length,
              
              itemBuilder: (context, index) {
                return TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
                  child: MenuCard(
                    title: itemsList[index][0],
                    subtitle: itemsList[index][1],
                    icon: itemsList[index][2],
                    iconColorData: itemsList[index][3],
                  ),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Kunal Khulbe",
              style: GoogleFonts.dancingScript(
                  color: Colors.white.withOpacity(0.6), fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

Route _NavigatePageRoute() {
  return PageRouteBuilder(
    pageBuilder: ((context, animation, secondaryAnimation) => NavigatePage()),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}



// ListView(
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               children: [
//                 TextButton(
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                     overlayColor: MaterialStateProperty.all(Colors.transparent),
//                   ),
//                   onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
//                   child: MenuCard(
//                     title: "About you",
//                     subtitle: "Age, Weight and other medical information",
//                     icon: Icons.person,
//                     iconColorData: Colors.teal,
//                   ),
//                 ),
//                 TextButton(
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                     overlayColor: MaterialStateProperty.all(Colors.transparent),
//                   ),
//                   onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
//                   child: MenuCard(
//                     title: "My Reports",
//                     subtitle: "Recent medical reports",
//                     icon: Icons.book,
//                     iconColorData: Colors.red,
//                   ),
//                 ),
//                 TextButton(
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                     overlayColor: MaterialStateProperty.all(Colors.transparent),
//                   ),
//                   onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
//                   child: MenuCard(
//                     title: "My Prescriptions",
//                     subtitle: "Prescription information, Refill reminder etc",
//                     icon: Icons.medication_liquid,
//                     iconColorData: Colors.lightBlue,
//                   ),
//                 ),
//                 TextButton(
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                     overlayColor: MaterialStateProperty.all(Colors.transparent),
//                   ),
//                   onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
//                   child: MenuCard(
//                     title: "Comorbidity",
//                     subtitle: "Other relavant medical issues",
//                     icon: Icons.medical_information,
//                     iconColorData: Colors.green,
//                   ),
//                 ),
//                 TextButton(
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                     overlayColor: MaterialStateProperty.all(Colors.transparent),
//                   ),
//                   onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
//                   child: MenuCard(
//                     title: "Settings",
//                     subtitle: "Global App settings",
//                     icon: Icons.settings,
//                     iconColorData: Colors.grey,
//                   ),
//                 ),
//                 TextButton(
//                   style: ButtonStyle(
//                     padding: MaterialStateProperty.all(EdgeInsets.zero),
//                     overlayColor: MaterialStateProperty.all(Colors.transparent),
//                   ),
//                   onPressed: () => Navigator.of(context).push(_NavigatePageRoute()),
//                   child: MenuCard(
//                     title: "Report an issue",
//                     subtitle: "Help us make this app better",
//                     icon: Icons.report,
//                     iconColorData: Colors.orange,
//                   ),
//                 ),
//               ],
//             ),