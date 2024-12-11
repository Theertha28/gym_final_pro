import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_final_pro/view/get_started_screen/get_started_screen.dart';
import 'package:gym_final_pro/view/home_screen/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => GetStartedScreen(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
           Image.asset("assets/images/gym.jpg") ,
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("FIT",
              
                 style: GoogleFonts.protestGuerrilla(
                          color: Colors.black,
                          letterSpacing: 1.5,
                           fontWeight: FontWeight.w200,
                          fontSize: 30,
                        ),),
                        Text("FLOW",
                 style: GoogleFonts.protestGuerrilla(
                          color: Colors.amber,
                          letterSpacing: 1.5,
                           fontWeight: FontWeight.w200,
                          fontSize: 30,
                        ),),
            ],
          ),        
        ],
      )
     
    );
  }
}