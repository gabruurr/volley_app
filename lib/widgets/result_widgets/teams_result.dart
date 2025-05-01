import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamsResult extends StatelessWidget {
  final String name;
  final int teamPoint;
  final Color foregroundPoints;
  final String position;

  const TeamsResult({
    super.key,
    required this.name,
    required this.teamPoint,
    required this.foregroundPoints,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    final isLeft = position == "left";

    return Transform.translate(
      offset: Offset(0, -5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 20,
        textDirection: isLeft ? TextDirection.ltr : TextDirection.rtl,
        children: [
          Text(
            name,
            style: GoogleFonts.concertOne(
              textStyle: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 255, 255, 255),
                height: 0.9,
              ),
            ),
          ),
          Text(
            "$teamPoint",
            style: GoogleFonts.concertOne(
              textStyle: TextStyle(
                fontSize: 20,
                color: (foregroundPoints),
                height: 0.9,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(2)),
        ],
      ),
    );
  }
}
