import 'package:flutter/material.dart';
import 'creta_color.dart';

// ignore: non_constant_identifier_names
CretaFontClass CretaFont = CretaFontClass();

class CretaFontClass {
  CretaFontClass({String family = 'Pretendard'}) {
    resetFont(family: family);
  }

  resetFont({String family = 'Pretendard'}) {
    fontFamily = family;

    regular = FontWeight.w400;
    //FontWeight thin = FontWeight.w100;
    extraLight = FontWeight.w200;
    light = FontWeight.w300;
    medium = FontWeight.w500;
    semiBold = FontWeight.w600;
    bold = FontWeight.w700;
    extraBold = FontWeight.w800;
    //FontWeight black = FontWeight.w900;

    headlineSmall = TextStyle(
      fontFamily: fontFamily,
      fontWeight: light,
      fontSize: 26,
      color: CretaColor.text,
      height: 0.9,
    );
    headlineMedium = headlineSmall.copyWith(fontSize: 30);
    headlineLarge = headlineSmall.copyWith(fontSize: 40);

    titleSmall = TextStyle(
      fontFamily: fontFamily,
      fontWeight: medium,
      fontSize: 14,
      color: CretaColor.text,
      height: 0.9,
    );
    titleMedium = titleSmall.copyWith(fontSize: 16);
    titleLarge = titleSmall.copyWith(fontSize: 20);
    titleELarge = titleSmall.copyWith(fontSize: 22);
    titleTiny = titleSmall.copyWith(fontSize: 12);

    displaySmall = TextStyle(
      fontFamily: fontFamily,
      fontWeight: medium,
      fontSize: 40,
      color: CretaColor.text,
      height: 0.9,
    );
    displayMedium = displaySmall.copyWith(fontSize: 50);
    displayLarge = displaySmall.copyWith(fontSize: 60);

    bodyESmall = TextStyle(
      fontFamily: fontFamily,
      fontWeight: regular,
      fontSize: 12,
      color: CretaColor.text,
      height: 0.9,
    );
    bodySmall = bodyESmall.copyWith(fontSize: 14);
    bodyMedium = bodyESmall.copyWith(fontSize: 16);
    bodyLarge = bodyESmall.copyWith(fontSize: 20);

    buttonSmall = TextStyle(
      fontFamily: fontFamily,
      fontWeight: medium,
      fontSize: 11,
      color: CretaColor.text,
      height: 0.9,
    );
    buttonMedium = buttonSmall.copyWith(fontSize: 13);
    buttonLarge = buttonSmall.copyWith(fontSize: 15);

    logoStyle = const TextStyle(
      fontFamily: 'GodoRounded',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: Colors.white,
      height: 0.9,
    );
  }

  late String fontFamily;
  late FontWeight regular;
  //late  //  FontWeight thin ;
  late FontWeight extraLight;
  late FontWeight light;
  late FontWeight medium;
  late FontWeight semiBold;
  late FontWeight bold;
  late FontWeight extraBold;
  //late  //  FontWeight black ;

  late TextStyle headlineSmall;
  late TextStyle headlineMedium;
  late TextStyle headlineLarge;

  late TextStyle titleSmall;
  late TextStyle titleMedium;
  late TextStyle titleLarge;
  late TextStyle titleELarge;
  late TextStyle titleTiny;

  late TextStyle displaySmall;
  late TextStyle displayMedium;
  late TextStyle displayLarge;

  late TextStyle bodyESmall;
  late TextStyle bodySmall;
  late TextStyle bodyMedium;
  late TextStyle bodyLarge;

  late TextStyle buttonSmall;
  late TextStyle buttonMedium;
  late TextStyle buttonLarge;

  late TextStyle logoStyle;
}




// import 'package:flutter/material.dart';
// import 'creta_color.dart';

// class CretaFont {
//   static String fontFamily = 'Pretendard';

//   static const FontWeight regular = FontWeight.w400;
//   //static const FontWeight thin = FontWeight.w100;
//   static const FontWeight extraLight = FontWeight.w200;
//   static const FontWeight light = FontWeight.w300;
//   static const FontWeight medium = FontWeight.w500;
//   static const FontWeight semiBold = FontWeight.w600;
//   static const FontWeight bold = FontWeight.w700;
//   static const FontWeight extraBold = FontWeight.w800;
//   //static const FontWeight black = FontWeight.w900;

//   static TextStyle headlineSmall = TextStyle(
//     fontFamily: fontFamily,
//     fontWeight: light,
//     fontSize: 26,
//     color: CretaColor.text,
//   );
//   static TextStyle headlineMedium = headlineSmall.copyWith(fontSize: 30);
//   static TextStyle headlineLarge = headlineSmall.copyWith(fontSize: 40);

//   static TextStyle titleSmall = TextStyle(
//     fontFamily: fontFamily,
//     fontWeight: medium,
//     fontSize: 14,
//     color: CretaColor.text,
//   );
//   static TextStyle titleMedium = titleSmall.copyWith(fontSize: 16);
//   static TextStyle titleLarge = titleSmall.copyWith(fontSize: 20);
//   static TextStyle titleELarge = titleSmall.copyWith(fontSize: 22);
//   static TextStyle titleTiny = titleSmall.copyWith(fontSize: 12);

//   static TextStyle displaySmall = TextStyle(
//     fontFamily: fontFamily,
//     fontWeight: medium,
//     fontSize: 40,
//     color: CretaColor.text,
//   );
//   static TextStyle displayMedium = displaySmall.copyWith(fontSize: 50);
//   static TextStyle displayLarge = displaySmall.copyWith(fontSize: 60);

//   static TextStyle bodyESmall = TextStyle(
//     fontFamily: fontFamily,
//     fontWeight: regular,
//     fontSize: 12,
//     color: CretaColor.text,
//   );
//   static TextStyle bodySmall = bodyESmall.copyWith(fontSize: 14);
//   static TextStyle bodyMedium = bodyESmall.copyWith(fontSize: 16);
//   static TextStyle bodyLarge = bodyESmall.copyWith(fontSize: 20);

//   static TextStyle buttonSmall = TextStyle(
//     fontFamily: fontFamily,
//     fontWeight: medium,
//     fontSize: 11,
//     color: CretaColor.text,
//   );
//   static TextStyle buttonMedium = buttonSmall.copyWith(fontSize: 13);
//   static TextStyle buttonLarge = buttonSmall.copyWith(fontSize: 15);

//   static TextStyle logoStyle = const TextStyle(
//     fontFamily: 'GodoRounded',
//     fontWeight: FontWeight.w400,
//     fontSize: 16,
//     color: Colors.white,
//   );
// }
