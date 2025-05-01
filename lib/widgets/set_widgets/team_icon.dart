import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamIcon extends StatelessWidget {
  final String letter;
  final String name;
  const TeamIcon({super.key, required this.name, required this.letter});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: const Color.fromARGB(255, 184, 221, 245),
          child: Transform.translate(
            offset: Offset(0, -2),
            child: Text(
              letter,
              style: GoogleFonts.concertOne(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 43, 74, 142),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: GoogleFonts.concertOne(
            textStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 43, 74, 142),
            ),
          ),
        ),
      ],
    );
  }
}
