import 'package:flutter/material.dart';

class TeamsSection extends StatelessWidget {
  const TeamsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          height: 200,
          width: 50,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 7, 202, 202),
            border: Border.all(color: Color.fromARGB(255, 183, 231, 238)),
          ),
          child: RotatedBox(
            quarterTurns: -1,
            child: Transform.translate(
              offset: Offset(0, 33),
              child: Text(
                "TIMES",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 45,
                  fontFamily: 'ConcertOne',
                  color: Colors.white,
                  height: -0.5,
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TimesPlayers(name: "Sincranos", playerQuantity: 3),
              TimesPlayers(name: "Autoconvidaods", playerQuantity: 3),
              TimesPlayers(name: "Zirados", playerQuantity: 4),
              TimesPlayers(name: "Sparrings", playerQuantity: 5),
            ],
          ),
        ),
      ],
    );
  }
}

class TimesPlayers extends StatelessWidget {
  final String name;
  final int playerQuantity;
  const TimesPlayers({
    super.key,
    required this.name,
    required this.playerQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$name ",
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'ConcertOne',
            color: Color.fromARGB(255, 237, 199, 53),
            height: 0.9,
          ),
        ),
        Text(
          "$playerQuantity",
          textAlign: TextAlign.right,
          style: TextStyle(
            fontFamily: 'ConcertOne',
            fontSize: 50,
            color: Color.fromARGB(255, 43, 74, 142),
            height: 0.9,
          ),
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Transform.translate(
            offset: Offset(-9, 0),
            child: Text(
              "jogadores",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 9,
                fontFamily: 'ConcertOne',
                color: Colors.blue.shade900,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
