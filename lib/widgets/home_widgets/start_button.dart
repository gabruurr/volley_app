import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volley_app/screens/set_screen.dart';
import 'package:volley_app/widgets/blue_button.dart';

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
        BlueButton(
          height: 14,
          widht: 55,
          fontSize: 28,
          label: "Iniciar",
          foreground: Colors.white,
          destiny: SetScreen(),
          offset: -5,
        ),
      ],
    );
  }
}
