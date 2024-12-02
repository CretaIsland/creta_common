// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class CretaConst {
  static const String home = 'lets-creta.com';
  static const String notLoginUserEmail = 'notloginuserid@sqisoft.com';
  static const String notLoginUserName = 'notloginuser';
  static const String notLoginUserTeam = 'notloginuserid Team';
  static const String superAdmin = 'creta';
  static const String superAdminEmail = 'cretacreates@gmail.com';

  static const double orderVar = 0.0000001;

  static const double appbarHeight = 0;
  static const double verticalAppbarWidth = 88;
  static const double menuHandleWidth = 64;

  static const String bookPrefix = 'Book=';
  static const String pagePrefix = 'Page=';
  static const String framePrefix = 'Frame=';
  static const String contentsPrefix = 'Con=';

  static const double stepGranularity = 2.0; // <-- 폰트 사이즈 정밀도, 작을수록 속도가 느리다.  0.1 이 최소
  static const double minFontSize = stepGranularity * 5;
  static const double maxFontSize = 512;
  static const double defaultFontSize = 24.0;

  static const Size bookThumbSize = Size(290.0, 256.0);
  static const double cretaBannerMinHeight = 196;
  static const double cretaPaddingPixel = 40;

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

class CretaComponentLocation {
  EdgeInsets margin; // 바깥여백
  EdgeInsets padding; // 안쪽여백
  double width;
  double height;

  static const EdgeInsets noSpace = EdgeInsets.all(0);

  CretaComponentLocation(
      {this.margin = noSpace,
      this.padding = noSpace,
      this.width = double.infinity,
      this.height = double.infinity});

  // 각 컴포넌트 좌표 & 크기
  static CretaComponentLocation BarTop = CretaComponentLocation(
    height: 60,
  );
  static CretaComponentLocation TabBar = CretaComponentLocation(
    padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
    //32 - CretaConst.verticalAppbarWidth / 2, 40, 32 - CretaConst.verticalAppbarWidth / 2, 40),
    //width: 310.0 - CretaConst.verticalAppbarWidth,
    width: 0,
  );
  static CretaComponentLocation ListInTabBar = CretaComponentLocation(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
    width: 246.0,
  );
  static CretaComponentLocation UserMenuInTabBar = CretaComponentLocation(
    padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
    width: 246.0,
    height: 192.0,
  );
}
