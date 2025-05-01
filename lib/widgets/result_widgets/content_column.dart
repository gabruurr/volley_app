import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentColumn extends StatelessWidget {
  final String? minutes;
  final String? seconds;
  const ContentColumn({super.key, this.minutes, this.seconds});

  static Widget stats(Widget child) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [child, child, child, child],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: minutes,
                style: GoogleFonts.concertOne(
                  textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              TextSpan(
                text: seconds,
                style: GoogleFonts.concertOne(
                  textStyle: const TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
