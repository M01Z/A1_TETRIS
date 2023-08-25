import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetris/themes/Palette.dart';

class Configuration extends StatefulWidget {
  const Configuration({super.key});

  @override
  State<Configuration> createState() => _ConfigurationState();
}

class _ConfigurationState extends State<Configuration> {
  bool gameNormal = true;
  bool gameExtended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Palette.primaryColor),
        title: Text(
          'Configuration',
          style: GoogleFonts.ibmPlexMono(color: Palette.primaryColor),
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                "Board Size",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.white),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.ibmPlexMono(color: Palette.primaryColor),
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.white),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Palette.white)),
                        filled: true,
                        fillColor: Colors.black)),
              ),
              const SizedBox(width: 10),
              Text(
                "X",
                style: GoogleFonts.ibmPlexMono(color: Palette.white),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.ibmPlexMono(color: Palette.primaryColor),
                    decoration: const InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.white),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Palette.white)),
                        filled: true,
                        fillColor: Colors.black)),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                "Game Level",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.white),
              ),
            ],
          ),
          Row(children: <Widget>[
            Checkbox(
              checkColor: Colors.white,
              fillColor:
                  const MaterialStatePropertyAll<Color>(Palette.primaryColor),
              value: gameNormal,
              onChanged: (bool? value) {
                setState(() {
                  gameNormal = value!;
                });
              },
            ),
            Text("Normal",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    color: Palette.white,
                    fontWeight: FontWeight.w500)),
            Checkbox(
              checkColor: Colors.white,
              fillColor:
                  const MaterialStatePropertyAll<Color>(Palette.primaryColor),
              value: gameExtended,
              onChanged: (bool? value) {
                setState(() {
                  gameExtended = value!;
                });
              },
            ),
            Text("Extended",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    color: Palette.white,
                    fontWeight: FontWeight.w500)),
          ]),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                "Game Mode",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Palette.white),
              ),
            ],
          ),
          Row(children: <Widget>[
            Checkbox(
              checkColor: Colors.white,
              fillColor:
                  const MaterialStatePropertyAll<Color>(Palette.primaryColor),
              value: gameNormal,
              onChanged: (bool? value) {
                setState(() {
                  gameNormal = value!;
                });
              },
            ),
            Text("Player",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    color: Palette.white,
                    fontWeight: FontWeight.w500)),
            Checkbox(
              checkColor: Colors.white,
              fillColor:
                  const MaterialStatePropertyAll<Color>(Palette.primaryColor),
              value: gameExtended,
              onChanged: (bool? value) {
                setState(() {
                  gameExtended = value!;
                });
              },
            ),
            Text("AI",
                style: GoogleFonts.ibmPlexMono(
                    fontSize: 14,
                    color: Palette.white,
                    fontWeight: FontWeight.w500)),
          ]),
        ],
      )),
    );
  }
}
