import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volley_app/screens/set.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Text(
          "Jogo Casado",
          style: GoogleFonts.concertOne(
            textStyle: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 55, right: 55, top: 4, bottom: 14),
            backgroundColor: Color.fromARGB(255, 43, 74, 142),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: Colors.white),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyWidget()),
            );
          },
          child: Text(
            "Iniciar",
            style: GoogleFonts.concertOne(
              textStyle: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
