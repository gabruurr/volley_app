import 'package:flutter/material.dart';

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
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'ConcertOne',
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: seconds,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'ConcertOne',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
