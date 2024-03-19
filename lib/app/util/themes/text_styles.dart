import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  const TextStyles({
    required this.title1R,
    required this.title1M,
    required this.title1B,
    required this.title2R,
    required this.title2M,
    required this.title2B,
    required this.headlineR,
    required this.headlineM,
    required this.headlineB,
    required this.bodyR,
    required this.bodyM,
    required this.bodyB,
    required this.bodyBItalic,
    required this.descriptionR,
    required this.descriptionM,
    required this.descriptionB,
    required this.smallR,
    required this.smallM,
    required this.smallB,
    required this.microR,
    required this.microM,
    required this.microB,
  });

  final TextStyle title1R;
  final TextStyle title1M;
  final TextStyle title1B;
  final TextStyle title2R;
  final TextStyle title2M;
  final TextStyle title2B;
  final TextStyle headlineR;
  final TextStyle headlineM;
  final TextStyle headlineB;
  final TextStyle bodyR;
  final TextStyle bodyM;
  final TextStyle bodyB;
  final TextStyle bodyBItalic;
  final TextStyle descriptionR;
  final TextStyle descriptionM;
  final TextStyle descriptionB;
  final TextStyle smallR;
  final TextStyle smallM;
  final TextStyle smallB;
  final TextStyle microR;
  final TextStyle microM;
  final TextStyle microB;
}

class RobotoStyle {
  const RobotoStyle._();

  static double title1FontSize = 32.h;
  static double title1FontHeight = 34 / title1FontSize;
  static final title1R = GoogleFonts.roboto(
      fontSize: title1FontSize,
      fontWeight: FontWeight.w400,
      height: title1FontHeight);

  static final title1M = GoogleFonts.roboto(
    fontSize: title1FontSize,
    fontWeight: FontWeight.w500,
    height: title1FontHeight,
  );

  static final title1B = GoogleFonts.roboto(
    fontSize: title1FontSize,
    fontWeight: FontWeight.w700,
    height: title1FontHeight,
  );

  static double title2FontSize = 24.h;
  static double title2FontHeight = 28 / title2FontSize;
  static final title2R = GoogleFonts.roboto(
    fontSize: title2FontSize,
    fontWeight: FontWeight.w400,
    height: title2FontHeight,
  );

  static final title2M = GoogleFonts.roboto(
    fontSize: title2FontSize,
    fontWeight: FontWeight.w500,
    height: title2FontHeight,
  );

  static final title2B = GoogleFonts.roboto(
    fontSize: title2FontSize,
    fontWeight: FontWeight.w700,
    height: title2FontHeight,
  );

  static double headlineFontSize = 20.h;
  static double headlineFontHeight = 24 / headlineFontSize;
  static final headlineR = GoogleFonts.roboto(
    fontSize: headlineFontSize,
    fontWeight: FontWeight.w400,
    height: headlineFontHeight,
  );

  static final headlineM = GoogleFonts.roboto(
    fontSize: headlineFontSize,
    fontWeight: FontWeight.w500,
    height: headlineFontHeight,
  );

  static final headlineB = GoogleFonts.roboto(
    fontSize: headlineFontSize,
    fontWeight: FontWeight.w700,
    height: headlineFontHeight,
  );

  static double bodyFontSize = 16.h;
  static double bodyFontHeight = 20 / bodyFontSize;
  static final bodyR = GoogleFonts.roboto(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w400,
    height: bodyFontHeight,
  );

  static final bodyM = GoogleFonts.roboto(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w500,
    height: bodyFontHeight,
  );

  static final bodyB = GoogleFonts.roboto(
    fontSize: bodyFontSize,
    fontWeight: FontWeight.w700,
    height: bodyFontHeight,
  );

  static final bodyBItalic = GoogleFonts.roboto(
    fontSize: 14.h,
    fontWeight: FontWeight.w700,
    height: (20 / 14).h,
    fontStyle: FontStyle.italic,
  );

  static double descriptionFontSize = 14.h;
  static double descriptionFontHeight = 18 / descriptionFontSize;
  static final descriptionR = GoogleFonts.roboto(
    fontSize: descriptionFontSize,
    fontWeight: FontWeight.w400,
    height: descriptionFontHeight,
  );

  static final descriptionM = GoogleFonts.roboto(
    fontSize: descriptionFontSize,
    fontWeight: FontWeight.w500,
    height: descriptionFontHeight,
  );

  static final descriptionB = GoogleFonts.roboto(
    fontSize: descriptionFontSize,
    fontWeight: FontWeight.w700,
    height: descriptionFontHeight,
  );

  static double smallFontSize = 12.h;
  static double smallFontHeight = 16 / smallFontSize;
  static final smallR = GoogleFonts.roboto(
    fontSize: smallFontSize,
    fontWeight: FontWeight.w400,
    height: smallFontHeight,
  );

  static final smallM = GoogleFonts.roboto(
    fontSize: smallFontSize,
    fontWeight: FontWeight.w500,
    height: smallFontHeight,
  );

  static final smallB = GoogleFonts.roboto(
    fontSize: smallFontSize,
    fontWeight: FontWeight.w700,
    height: smallFontHeight,
  );

  static double microFontSize = 11.h;
  static double microFontHeight = 14 / microFontSize;
  static final microR = GoogleFonts.roboto(
    fontSize: microFontSize,
    fontWeight: FontWeight.w400,
    height: microFontHeight,
  );

  static final microM = GoogleFonts.roboto(
    fontSize: microFontSize,
    fontWeight: FontWeight.w500,
    height: microFontHeight,
  );

  static final microB = GoogleFonts.roboto(
    fontSize: microFontSize,
    fontWeight: FontWeight.w700,
    height: microFontHeight,
  );
}
