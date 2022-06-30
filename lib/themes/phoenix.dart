// ignore_for_file: constant_identifier_names

import 'dart:ui';

import 'package:flutter/cupertino.dart';

enum FONT_SIZE {
  H1,
  H2,
  H3,
  H4,
  PARAGRAPH,
  SMALL,
  TINY,
}

enum FONT_STYLE {
  REGULAR,
  BOLD,
}

enum FONT_FAMILY {
  MULI,
}

class PhoenixTheme {
  static const Color COLOR_BLACK = Color(0xFF000000);
  
  static const Color COLOR_CLEAR_WHITE = Color(0xFFFFFFFF);
  static const Color COLOR_CLEAR_SNOW = Color(0xFFFAFAFA);
  static const Color COLOR_CLEAR_MANATEE = Color(0xFFEDF0F4);

  static const Color COLOR_INDIGO_DARK = Color(0xFF191E4D);
  static const Color COLOR_INDIGO_PRESSED = Color(0xFF252E74);
  static const Color COLOR_INDIGO = Color(0xFF3743AA);
  static const Color COLOR_INDIGO_HOVER = Color(0xFF6570CD);
  static const Color COLOR_INDIGO_LIGHT = Color(0xFFB2B7E6);

  static const Color COLOR_NEUTRAL_CHARCOAL = Color(0xFF3E3E42);
  static const Color COLOR_NEUTRAL_OXFORD = Color(0xFF4F4F54);
  static const Color COLOR_NEUTRAL = Color(0xFF969BA0);
  static const Color COLOR_NEUTRAL_MEDIUM = Color(0xFFD7D9DB);
  static const Color COLOR_NEUTRAL_LIGHT = Color(0xFFF2F2F3);

  static const Color COLOR_SUNSET_DARK = Color(0xFF682A21);
  static const Color COLOR_SUNSET_PRESSED = Color(0xFF682A21);
  static const Color COLOR_SUNSET = Color(0xFFF8644F);
  static const Color COLOR_SUNSET_HOVER = Color(0xFFF98272);
  static const Color COLOR_SUNSET_LIGHT = Color(0xFFFDD4CE);

  static const Color COLOR_VIVERE_DARK = Color(0xFF294620);
  static const Color COLOR_VIVERE_PRESSED = Color(0xFF1C5D18);
  static const Color COLOR_VIVERE = Color(0xFF6CB156);
  static const Color COLOR_VIVERE_HOVER = Color(0xFFA4CF96);
  static const Color COLOR_VIVERE_LIGHT = Color(0xFFD1E7CB);

  static const Color COLOR_BOLT_DARK = Color(0xFF014665);
  static const Color COLOR_BOLT_PRESSED = Color(0xFF016998);
  static const Color COLOR_BOLT = Color(0xFF07B1FD);
  static const Color COLOR_BOLT_HOVER = Color(0xFF67CFFE);
  static const Color COLOR_BOLT_LIGHT = Color(0xFFB3E7FE);

  static const Color COLOR_GOLD_DARK = Color(0xFFB47501);
  static const Color COLOR_GOLD_PRESSED = Color(0xFCE69601);
  static const Color COLOR_GOLD = Color(0xFFFDA501);
  static const Color COLOR_GOLD_HOVER = Color(0xFFFDB734);
  static const Color COLOR_GOLD_LIGHT = Color(0xFFFED980);

  static const Color COLOR_COMPLEMENTARY_MINT = Color(0xFF2DD2C2);
  static const Color COLOR_COMPLEMENTARY_GRAPE = Color(0xFFA14EAE);
  static const Color COLOR_COMPLEMENTARY_BLUEBERRY = Color(0xFF5B5F9D);
  static const Color COLOR_COMPLEMENTARY_DAMSON = Color(0xFF92AFEA);
  static const Color COLOR_COMPLEMENTARY_SASKATOON = Color(0xFF44748D);
  static const Color COLOR_COMPLEMENTARY_STRAWBERRY = Color(0xFFEE524F);
  static const Color COLOR_COMPLEMENTARY_CARROT = Color(0xFFF8803F);
  static const Color COLOR_COMPLEMENTARY_WATERMELON = Color(0xFF439445);
  static const Color COLOR_COMPLEMENTARY_ACORN = Color(0xFF7ECDC4);
  static const Color COLOR_COMPLEMENTARY_BLACKBERRY = Color(0xFF3743AA);
  static const Color COLOR_COMPLEMENTARY_PINEAPPLE = Color(0xFFF6CA28);
  static const Color COLOR_COMPLEMENTARY_MANDARINE = Color(0xFFFA9F0F);
  static const Color COLOR_COMPLEMENTARY_FELLIUS = Color(0xFF7B82CA);
  static const Color COLOR_COMPLEMENTARY_REDBOR = Color(0xFFCB94D4);
  static const Color COLOR_COMPLEMENTARY_AVOCADO = Color(0xFF6DB571);
  static const Color COLOR_COMPLEMENTARY_LEMON = Color(0xFF64D440);
  static const Color COLOR_COMPLEMENTARY_ADIRONDACK = Color(0xFF6091E5);

  /******************************************************************************************************************************************************/
  static const double _FONT_SIZE_H1 = 32.0;
  static const double _FONT_SIZE_H2 = 24.0;
  static const double _FONT_SIZE_H3 = 18.0;
  static const double _FONT_SIZE_H4 = 16.0;
  static const double _FONT_SIZE_PARAGRAPH = 14.0;
  static const double _FONT_SIZE_SMALL = 12.0;
  static const double _FONT_SIZE_TINY = 10.0;

  static const double _FONT_LETTER_SPACE_H1 = -1.0;
  static const double _FONT_LETTER_SPACE_H2 = -1.0;
  static const double _FONT_LETTER_SPACE_H3 = -0.5;
  static const double _FONT_LETTER_SPACE_H4 = -0.5;
  static const double _FONT_LETTER_SPACE_PARAGRAPH = -0.5;
  static const double _FONT_LETTER_SPACE_SMALL = -0.5;
  static const double _FONT_LETTER_SPACE_TINY = -0.5;

  /******************************************************************************************************************************************************/

  static TextStyle textStyle({
    required FONT_SIZE size,
    Color color = COLOR_NEUTRAL_CHARCOAL,
    FONT_STYLE style = FONT_STYLE.REGULAR,
    TextDecoration decoration = TextDecoration.none,
    FONT_FAMILY family = FONT_FAMILY.MULI,
  }) {
    double fontSize, fontLetterSpace;
    switch (size) {
      case FONT_SIZE.H1:
        fontSize = _FONT_SIZE_H1;
        fontLetterSpace = _FONT_LETTER_SPACE_H1;
        break;
      case FONT_SIZE.H2:
        fontSize = _FONT_SIZE_H2;
        fontLetterSpace = _FONT_LETTER_SPACE_H2;
        break;
      case FONT_SIZE.H3:
        fontSize = _FONT_SIZE_H3;
        fontLetterSpace = _FONT_LETTER_SPACE_H3;
        break;
      case FONT_SIZE.H4:
        fontSize = _FONT_SIZE_H4;
        fontLetterSpace = _FONT_LETTER_SPACE_H4;
        break;
      case FONT_SIZE.PARAGRAPH:
        fontSize = _FONT_SIZE_PARAGRAPH;
        fontLetterSpace = _FONT_LETTER_SPACE_PARAGRAPH;
        break;
      case FONT_SIZE.SMALL:
        fontSize = _FONT_SIZE_SMALL;
        fontLetterSpace = _FONT_LETTER_SPACE_SMALL;
        break;
      case FONT_SIZE.TINY:
        fontSize = _FONT_SIZE_TINY;
        fontLetterSpace = _FONT_LETTER_SPACE_TINY;
        break;
    }

    FontWeight fontWeight;
    switch (style) {
      case FONT_STYLE.REGULAR:
        fontWeight = FontWeight.w400;
        break;
      case FONT_STYLE.BOLD:
        fontWeight = FontWeight.w700;
        break;
    }

    String fontFamily;
    switch (family) {
      case FONT_FAMILY.MULI:
        fontFamily = "Muli";
        break;
    }

    return TextStyle(
      fontFamily: fontFamily,
      fontWeight: fontWeight,
      decoration: decoration,
      color: color,
      fontSize: fontSize,
      letterSpacing: fontLetterSpace,
    );
  }
}
