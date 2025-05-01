import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final double height;
  final double widht;
  final double offset;
  final double fontSize;
  final String label;
  final Color foreground;
  final Widget destiny;

  const BlueButton({
    super.key,
    required this.height,
    required this.widht,
    required this.label,
    required this.foreground,
    required this.destiny,
    required this.offset,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: widht, vertical: height),
        backgroundColor: Color.fromARGB(255, 43, 74, 142),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.white),
        ),
      ),
      onPressed: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => destiny),
        );
      },
      child: Transform.translate(
        offset: Offset(0, offset),
        child: Text(
          label,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'ConcertOne',
            color: foreground,
          ),
        ),
      ),
    );
  }
}
