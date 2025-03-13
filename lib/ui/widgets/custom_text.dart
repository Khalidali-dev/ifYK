import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ifyk_landing/constants/color_palette.dart';

class CustomText extends StatelessWidget {
  final String label;
  final double? fontSize;
  final TextAlign? align;
  final TextOverflow? overflow;
  final Color? textColor;
  final int? maxLines;
  final bool underlined;
  final FontWeight fontWeight;
  final FontStyle fontStyle;

  const CustomText({
    super.key,
    required this.label,
    this.fontSize,
    this.align,
    this.overflow,
    this.textColor,
    this.maxLines,
    this.underlined = false,
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: align ?? TextAlign.left,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines ?? 1,
      style: GoogleFonts.poppins(
        color: textColor ?? ColorPalette.white,
        fontSize: fontSize ?? 12,
        decoration: underlined ? TextDecoration.underline : null,
        decorationColor: textColor ?? ColorPalette.white,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
      ),
    );
  }
}
