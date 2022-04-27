import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BorderedText extends StatelessWidget {
  const BorderedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  static const _fontSize = 60.0;
  static const _fontWeight = FontWeight.w500;
  static const _letterSpacing = 5.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: _fontSize,
            fontWeight: _fontWeight,
            letterSpacing: _letterSpacing,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = Colors.white,
          ),
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: _fontSize,
            fontWeight: _fontWeight,
            letterSpacing: _letterSpacing,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
