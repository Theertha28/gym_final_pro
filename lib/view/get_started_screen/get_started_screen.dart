import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym_final_pro/view/home_screen/home_screen.dart';
import 'package:gym_final_pro/view/login_screen/login_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "assets/images/pexels-photo-6388364 (1).jpg"))),
          ),
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Best Way To Manage Your Gym",
                style: GoogleFonts.cormorantGaramond(
                    letterSpacing: 1,
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Store member information in a database,manage financial records,schedule classes,and reserve facities.",
                style: GoogleFonts.cormorantGaramond(
                    letterSpacing: 1,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(vertical: 18))),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.cormorantGaramond(
                            letterSpacing: 1,
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ))
            ],
          ),
        ))
      ]),
    );
  }
}
