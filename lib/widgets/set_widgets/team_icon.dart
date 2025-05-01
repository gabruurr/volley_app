import 'package:flutter/material.dart';

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
            offset: const Offset(0, -1),
            child: Text(
              letter,
              style: TextStyle(
                fontFamily: 'ConcertOne',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 43, 74, 142),
              ),
            ),
          ),
        ),
        if (name.trim().isNotEmpty)
          Text(
            name,
            style: TextStyle(
              fontFamily: 'ConcertOne',
              fontSize: 18,
              color: Color.fromARGB(255, 43, 74, 142),
            ),
          ),
      ],
    );
  }
}
