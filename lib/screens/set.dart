import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/set_widgets/action_column.dart';
import '../widgets/set_widgets/team_icon.dart';

class SetWidget extends StatefulWidget {
  const SetWidget({super.key});

  @override
  State<SetWidget> createState() => _SetWidgetState();
}

class _SetWidgetState extends State<SetWidget> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00ADC3),
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Icon(Icons.settings),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF00ADC3),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ActionColumn(position: "left"),

            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      spacing: 70,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TeamIcon(name: "Ziraldos", letter: "A"),
                        TeamIcon(name: "Autoconvidados", letter: "B"),
                      ],
                    ),
                  ),

                  Container(
                    width: 340,
                    height: 140,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: const Color.fromARGB(253, 190, 96, 70),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 20,
                            children: [
                              Image.asset('assets/ball.png', height: 45),
                              Transform.translate(
                                offset: Offset(0, -20),
                                child: Text(
                                  "12",
                                  style: GoogleFonts.concertOne(
                                    textStyle: const TextStyle(
                                      height: 0,
                                      fontSize: 60,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(width: 2, color: Colors.white),

                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "22",
                                style: GoogleFonts.concertOne(
                                  textStyle: const TextStyle(
                                    fontSize: 60,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    spacing: 15,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Tempo de Jogo: 1:14'",
                              style: GoogleFonts.concertOne(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "00''",
                              style: GoogleFonts.concertOne(
                                textStyle: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 2,
                          ),
                          backgroundColor: const Color.fromARGB(
                            255,
                            43,
                            74,
                            142,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                        onPressed: () {},
                        child: Transform.translate(
                          offset: Offset(0, -5),
                          child: Text(
                            "Placar Geral",
                            style: GoogleFonts.concertOne(
                              textStyle: const TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const ActionColumn(position: "right"),
          ],
        ),
      ),
    );
  }
}
