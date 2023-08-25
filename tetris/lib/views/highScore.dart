import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetris/themes/Palette.dart';

class HighScore extends StatefulWidget {
  const HighScore({super.key});

  @override
  State<HighScore> createState() => _HighScoreState();
}

class _HighScoreState extends State<HighScore> {
  @override
  Widget build(BuildContext context) {
    double columnWidth = MediaQuery.of(context).size.width;
    columnWidth /= 4;
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Palette.primaryColor),
        title: Text(
          'High Scores',
          style: GoogleFonts.ibmPlexMono(color: Palette.primaryColor),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "#",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.primaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Name",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.primaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Score",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.primaryColor, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "1",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Muhammad",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "20",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "2",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Jaini",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "60",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "3",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Moiz",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                            width: columnWidth,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "70",
                                style: GoogleFonts.ibmPlexMono(
                                    color: Palette.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          )
        ],
      )),
    );
  }
}
