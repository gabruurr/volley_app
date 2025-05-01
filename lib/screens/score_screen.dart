import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volley_app/screens/details_screen.dart';
import 'package:volley_app/screens/result_screen.dart';
import 'package:volley_app/widgets/result_widgets/content_column.dart';
import 'package:volley_app/widgets/result_widgets/teams_result.dart';

import '../widgets/set_widgets/team_icon.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
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
              MaterialPageRoute(builder: (context) => ResultScreen()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Icon(Icons.show_chart),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF00ADC3),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      "PLACAR GERAL",
                      style: GoogleFonts.concertOne(
                        textStyle: const TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 43, 74, 142),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContentColumn.stats(
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(),
                              ),
                            );
                          },
                          icon: Icon(Icons.bar_chart, color: Colors.white),
                        ),
                      ),

                      Container(
                        width: 370,
                        height: 180,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: const Color.fromARGB(253, 190, 96, 70),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                spacing: 4,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TeamIcon(name: "", letter: "A"),
                                  TeamsResult(
                                    name: "Ziraldos",
                                    teamPoint: 25,
                                    foregroundPoints: Color.fromARGB(
                                      255,
                                      43,
                                      74,
                                      142,
                                    ),
                                    position: "left",
                                  ),
                                  TeamsResult(
                                    name: "Ziraldos",
                                    teamPoint: 25,
                                    foregroundPoints: Color.fromARGB(
                                      255,
                                      43,
                                      74,
                                      142,
                                    ),
                                    position: "left",
                                  ),
                                  TeamsResult(
                                    name: "Ziraldos",
                                    teamPoint: 10,
                                    foregroundPoints: Colors.yellow,
                                    position: "left",
                                  ),
                                  TeamsResult(
                                    name: "Sparrings",
                                    teamPoint: 25,
                                    foregroundPoints: Color.fromARGB(
                                      255,
                                      43,
                                      74,
                                      142,
                                    ),
                                    position: "left",
                                  ),
                                ],
                              ),
                            ),

                            Container(width: 2, color: Colors.white),

                            Expanded(
                              child: Column(
                                spacing: 4,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TeamIcon(name: "", letter: "B"),
                                  TeamsResult(
                                    name: "Sparrings",
                                    teamPoint: 10,
                                    foregroundPoints: Colors.yellow,
                                    position: "right",
                                  ),
                                  TeamsResult(
                                    name: "Sicranos",
                                    teamPoint: 10,
                                    foregroundPoints: Colors.yellow,
                                    position: "right",
                                  ),
                                  TeamsResult(
                                    name: "Autoconvidados",
                                    teamPoint: 25,
                                    foregroundPoints: Color.fromARGB(
                                      255,
                                      43,
                                      74,
                                      142,
                                    ),
                                    position: "right",
                                  ),
                                  TeamsResult(
                                    name: "Autoconvidados",
                                    teamPoint: 10,
                                    foregroundPoints: Colors.yellow,
                                    position: "right",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        spacing: 10,
                        children: [
                          Padding(padding: EdgeInsets.symmetric(vertical: 11)),
                          ContentColumn(minutes: "0:24'", seconds: "90''"),
                          ContentColumn(minutes: "0:14'", seconds: "23''"),
                          ContentColumn(minutes: "0:35'", seconds: "04''"),
                          ContentColumn(minutes: "0:11'", seconds: "29''"),
                        ],
                      ),
                    ],
                  ),
                  Spacer(flex: 3),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: const Color.fromARGB(234, 15, 181, 187),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TeamsResult(
                          name: "Ziraldos",
                          teamPoint: 3,
                          foregroundPoints: Color.fromARGB(255, 43, 74, 142),
                          position: "left",
                        ),
                        TeamsResult(
                          name: "Sincranos",
                          teamPoint: 1,
                          foregroundPoints: Color.fromARGB(255, 43, 74, 142),
                          position: "left",
                        ),
                        TeamsResult(
                          name: "Autoconvidados",
                          teamPoint: 8,
                          foregroundPoints: Color.fromARGB(255, 43, 74, 142),
                          position: "left",
                        ),
                        TeamsResult(
                          name: "Sparrings",
                          teamPoint: 9,
                          foregroundPoints: Color.fromARGB(255, 43, 74, 142),
                          position: "left",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
