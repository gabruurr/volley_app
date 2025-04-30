import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset('assets/ball.png', height: 50),
          const Padding(padding: EdgeInsets.only(left: 1)),
          Column(
            children: [
              Text(
                ' Volley',
                style: GoogleFonts.concertOne(
                  textStyle: TextStyle(fontSize: 50, color: Colors.white),
                  height: 1.1,
                ),
              ),
            Text(
                'do fim de semana',
                style: GoogleFonts.concertOne(
                  textStyle: TextStyle(fontSize: 10, color: Colors.white),
                  height: 0.8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}