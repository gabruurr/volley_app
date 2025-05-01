import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volley_app/screens/score_screen.dart';

import '../widgets/details_widgets/stats_details.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ScoreScreen()),
            );
          },
        ),
      ),
      backgroundColor: const Color(0xFF00ADC3),
      body: SafeArea(
        child: Column(
          spacing: 8,
          children: [
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Estatsísticas da partida",
                  style: GoogleFonts.concertOne(
                    textStyle: const TextStyle(
                      fontSize: 26,
                      color: Color(0xFF2B4A8E),
                    ),
                  ),
                ),
                Image.asset('assets/ball.png', height: 30),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  StatsDetails(
                    name: "Ziraldos",
                    letterTeam: "A",
                    color: Color.fromARGB(253, 190, 96, 70),
                    aces: 3,
                    attacks: 4,
                    blocks: 20,
                    errors: 6,
                  ),
                  StatsDetails(
                    name: "Sparrings",
                    letterTeam: "B",
                    color: Color.fromARGB(252, 59, 137, 227),
                    aces: 10,
                    attacks: 6,
                    blocks: 18,
                    errors: 9,
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
