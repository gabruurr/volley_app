import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volley_app/screens/score_screen.dart';
import 'package:volley_app/screens/set_screen.dart';
import 'package:volley_app/widgets/blue_button.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SetScreen(),

          Center(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(187, 104, 230, 252),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),

              height: 300,
              width: 500,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "FIM DE SET",
                        style: GoogleFonts.concertOne(
                          textStyle: const TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 43, 74, 142),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Autoconvidados",
                            style: GoogleFonts.concertOne(
                              textStyle: const TextStyle(
                                fontSize: 45,
                                color: Color.fromARGB(255, 43, 74, 142),
                              ),
                            ),
                          ),
                          Text(
                            "VENCEU",
                            style: GoogleFonts.concertOne(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 43, 74, 142),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlueButton(
                            height: 10,
                            widht: 20,
                            fontSize: 23,
                            offset: -5,
                            label: "Terminar",
                            foreground: Colors.white,
                            destiny: ScoreScreen(),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          BlueButton(
                            height: 10,
                            widht: 20,
                            fontSize: 23,
                            offset: -5,
                            label: "Novo Set",
                            foreground: Colors.yellow,
                            destiny: SetScreen(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
