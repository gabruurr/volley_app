import 'package:flutter/material.dart';

class ActionColumn extends StatelessWidget {
  final String position;
  const ActionColumn({super.key, required this.position});

  @override
  Widget build(BuildContext context) {
    final actions = ["Ace", "Ataque", "Bloqueio", "Erro"];
    final isLeft = position == "left";

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            isLeft ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children:
            actions.map((action) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  textDirection: isLeft ? TextDirection.ltr : TextDirection.rtl,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 43, 74, 142),
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {},
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -1),
                      child: Text(
                        action,
                        style: TextStyle(
                          fontFamily: 'ConcertOne',
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
