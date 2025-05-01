import 'package:flutter/material.dart';

import '../set_widgets/team_icon.dart';

class StatsDetails extends StatelessWidget {
  final String name;
  final String letterTeam;
  final Color color;
  final int aces;
  final int attacks;
  final int blocks;
  final int errors;
  const StatsDetails({
    super.key,
    required this.name,
    required this.color,
    required this.aces,
    required this.attacks,
    required this.blocks,
    required this.errors,
    required this.letterTeam,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Transform.translate(
            offset: Offset(0, -5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 130,
                  children: [
                    TeamIcon(name: "", letter: letterTeam),
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'ConcertOne',
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Divider(thickness: 1.5, color: Colors.black45),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aces",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$aces",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ataques",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$attacks",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Theme.of(context).colorScheme.onPrimary,

                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bloqueios",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$blocks",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Theme.of(context).colorScheme.onPrimary,

                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Erros",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$errors",
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          color: Theme.of(context).colorScheme.onPrimary,

                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
