import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  Color color;
  String text;
  int fontSize;
  FontWeight fontWeight;
  MyText(
      {required this.text,
      required this.color,
      required this.fontSize,
      required this.fontWeight,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: color,
        textStyle: Theme.of(context).textTheme.headlineMedium,
        fontSize: fontSize.toDouble(),
        fontWeight: fontWeight,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
