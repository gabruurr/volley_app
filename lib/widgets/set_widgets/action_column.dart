import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActionColumn extends StatelessWidget {
  final String position;
  const ActionColumn({super.key, required this.position});

  Widget _switchPosition() {
    final actions = ["Ace", "Ataque", "Bloqueio", "Erro"];
    if (position == "left") {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              actions.map((action) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            43,
                            74,
                            142,
                          ),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                      Transform.translate(
                        offset: Offset(0, -5),
                        child: Text(
                          action,
                          style: GoogleFonts.concertOne(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children:
              actions.map((action) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Transform.translate(
                        offset: Offset(0, -5),
                        child: Text(
                          action,
                          style: GoogleFonts.concertOne(
                            textStyle: const TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            43,
                            74,
                            142,
                          ),
                          shape: CircleBorder(),
                        ),
                        onPressed: () {},
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _switchPosition();
  }
}