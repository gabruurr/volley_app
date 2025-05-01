import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volley_app/main.dart';
import 'package:volley_app/screens/result_screen.dart';
import 'package:volley_app/widgets/blue_button.dart';

import '../widgets/set_widgets/action_column.dart';
import '../widgets/set_widgets/team_icon.dart';

class SetScreen extends StatefulWidget {
  const SetScreen({super.key});

  @override
  State<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF00ADC3),
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
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
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Row(
                      spacing: 75,
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
                            spacing: 1,
                            children: [
                              Image.asset('assets/ball.png', height: 45),
                              Transform.translate(
                                offset: Offset(0, -2),
                                child: Text(
                                  "12",
                                  style: const TextStyle(
                                    fontFamily: 'ConcertOne',
                                    height: 0,
                                    fontSize: 60,
                                    color: Colors.white,
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
                              Transform.translate(
                                offset: Offset(0, 5),
                                child: Text(
                                  "22",
                                  style: const TextStyle(
                                    fontFamily: 'ConcertOne',
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
                    spacing: 2,
                    children: [
                      Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Tempo de Jogo: 1:14'",
                              style: const TextStyle(
                                fontFamily: 'ConcertOne',
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: "00''",
                              style: const TextStyle(
                                fontFamily: 'ConcertOne',
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      BlueButton(
                        height: 2,
                        widht: 15,
                        fontSize: 23,
                        label: "Placar Geral",
                        offset: -2,
                        foreground: Colors.white,
                        destiny: ResultScreen(),
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
