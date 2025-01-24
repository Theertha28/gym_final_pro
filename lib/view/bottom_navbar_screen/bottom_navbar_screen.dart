// import 'package:flutter/material.dart';
// import 'package:gym_final_pro/utils/color_constants.dart';
// import 'package:gym_final_pro/view/home_screen/home_screen.dart';
// import 'package:gym_final_pro/view/members_screen/members_screen.dart';

// class BottomNavbarScreen extends StatefulWidget {
//   const BottomNavbarScreen({super.key});

//   @override
//   State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
// }

// class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
//   List Screens = [
//     HomeScreen(),
//     MembersScreen(),
//     Container(
//       color: Colors.black,
//     ),
//     Container(
//       color: Colors.black,
//     ),
//     Container(
//       color: Colors.black,
//     ),
//   ];
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorConstants.mainWhite,
//       body: Screens[selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: ColorConstants.mainBlack,
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: ColorConstants.mainWhite,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.group), label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.note_alt_outlined), label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person_2_outlined), label: ""),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
//         ],
//         onTap: (value) {
//           selectedIndex = value;
//           setState(() {});
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:gym_final_pro/view/home_screen/home_screen.dart';
import 'package:gym_final_pro/view/members_screen/members_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavbarScreen> {
  int page = 0;

  List<Widget> screens = [
    HomeScreen(),
    MembersScreen(),
    Container(color: Colors.black),
    Container(color: Colors.black),
    Container(color: Colors.black),
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.group, size: 30),
          Icon(Icons.fitness_center, size: 30),
          Icon(Icons.event_note, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.amber,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screens[page],
    );
  }
}
