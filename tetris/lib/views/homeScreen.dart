import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetris/themes/Palette.dart';
import 'package:tetris/views/configuration.dart';
import 'package:tetris/views/gameBoard.dart';
import 'package:tetris/views/highScore.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tetris",
                    style: GoogleFonts.ibmPlexMono(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Palette.primaryColor),
                  ),
                  Text(
                    "2023-7805ICT",
                    style: GoogleFonts.ibmPlexMono(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palette.white),
                  ),
                  Text(
                    "Muhammad Moiz Ul Hassan S5303113",
                    style: GoogleFonts.ibmPlexMono(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palette.white),
                  ),
                  Text(
                    "Jainiben Ajaykumar Shah S5291005",
                    style: GoogleFonts.ibmPlexMono(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Palette.white),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GameBoard(),
                              ));
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Palette.primaryColor)),
                        child: Text(
                          "Play",
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HighScore(),
                              ));
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Palette.primaryColor)),
                        child: Text(
                          "High Score",
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Configuration(),
                              ));
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Palette.primaryColor)),
                        child: Text(
                          "Configure",
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Palette.primaryColor)),
                        child: Text(
                          "Exit",
                          style: GoogleFonts.ibmPlexMono(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Copyright @ 2023-2024 M01ZZZ",
                      style: GoogleFonts.ibmPlexMono(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Palette.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
