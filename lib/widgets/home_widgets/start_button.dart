import 'package:flutter/material.dart';
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
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'ConcertOne',
            color: Colors.white,
          ),
        ),
        BlueButton(
          height: 14,
          widht: 55,
          fontSize: 28,
          label: "Iniciar",
          foreground: Colors.white,
          destiny: SetScreen(),
          offset: -2,
        ),
      ],
    );
  }
}
