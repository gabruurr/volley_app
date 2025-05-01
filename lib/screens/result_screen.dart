import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

              height: 280,
              width: 500,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Column(
                    spacing: 3,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "FIM DE SET",
                        style: const TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 25,
                          color: Color.fromARGB(255, 43, 74, 142),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Autoconvidados",
                            style: const TextStyle(
                              fontFamily: 'ConcertOne',
                              fontSize: 45,
                              color: Color.fromARGB(255, 43, 74, 142),
                            ),
                          ),
                          Text(
                            "VENCEU",
                            style: const TextStyle(
                              fontFamily: 'ConcertOne',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 43, 74, 142),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 30)),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlueButton(
                            height: 10,
                            widht: 20,
                            fontSize: 23,
                            offset: -2,
                            label: "Terminar",
                            foreground: Colors.white,
                            destiny: ScoreScreen(),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          BlueButton(
                            height: 10,
                            widht: 20,
                            fontSize: 23,
                            offset: -2,
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
