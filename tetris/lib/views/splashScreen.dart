import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetris/themes/Palette.dart';
import 'package:tetris/views/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

  navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                const Image(image: AssetImage('assets/data/earth.jpg')),
                Text(
                  "Tetris",
                  style: GoogleFonts.ibmPlexMono(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Palette.primaryColor),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
