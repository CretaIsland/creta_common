import 'dart:ui';

class CretaConst {
  static const double stepGranularity = 2.0; // <-- 폰트 사이즈 정밀도, 작을수록 속도가 느리다.  0.1 이 최소
  static const double minFontSize = stepGranularity * 5;
  static const double maxFontSize = 512;
  static const double defaultFontSize = 64.0;

  static Map<String, int> fontWeightStr2Int = {
    'Thin': 100,
    'ExtraLight': 200,
    'Light': 300,
    'Regular': 400,
    'Medium': 500,
    'SemiBold': 600,
    'Bold': 700,
    'ExtraBold': 800,
    'Black': 900,
  };

  static Map<int, String> fontWeightInt2Str = {
    100: 'Thin',
    200: 'ExtraLight',
    300: 'Light',
    400: 'Regular',
    500: 'Medium',
    600: 'SemiBold',
    700: 'Bold',
    800: 'ExtraBold',
    900: 'Black',
  };

  static Map<int, FontWeight> fontWeight2Type = {
    100: FontWeight.w100,
    200: FontWeight.w200,
    300: FontWeight.w300,
    400: FontWeight.w400,
    500: FontWeight.w500,
    600: FontWeight.w600,
    700: FontWeight.w700,
    800: FontWeight.w800,
    900: FontWeight.w900,
  };
}
