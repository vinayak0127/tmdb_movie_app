import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class modifed_text extends StatelessWidget {
  const modifed_text({Key? key,  this.text,  this.color,  this.size}) : super(key: key);
  final String? text;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,style: GoogleFonts.comfortaa(
      color: color,fontSize: size,
    ),
    );
  }
}
