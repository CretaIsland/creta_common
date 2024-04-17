//import 'dart:ui';
//
// enum ModelType {
//   none,
//   book,
//   page,
//   frame,
//   contents,
//   end;
//
//   static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
//   static ModelType fromInt(int? val) => ModelType.values[validCheck(val ?? none.index)];
// }

// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../lang/creta_lang.dart';

enum ServiceType {
  none,
  presentaion,
  signage,
  board,
  barricade,
  escalator,
  cdu,
  etc,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static ServiceType fromInt(int? val) => ServiceType.values[validCheck(val ?? none.index)];
}

enum BookType {
  none,
  presentaion,
  signage,
  board,
  barricade,
  escalator,
  cdu,
  etc,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static BookType fromInt(int? val) => BookType.values[validCheck(val ?? none.index)];
}

enum FrameType {
  none,
  latest,
  polygon,
  animation,
  text,
  youtube,
  weatherInfo,
  weather1,
  weather2,
  weatherSticker1,
  weatherSticker2,
  weatherSticker3,
  music,
  analogWatch,
  digitalWatch,
  stopWatch,
  countDownTimer,
  dateTimeFormat,
  sticker,
  showcaseTimeline,
  footballTimeline,
  activityTimeline,
  successTimeline,
  deliveryTimeline,
  weatherTimeline,
  monthHorizTimeline,
  appHorizTimeline,
  deliveryHorizTimeline,
  camera,
  map,
  news,
  currencyXchange,
  dailyQuote,
  dailyWord,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static FrameType fromInt(int? val) => FrameType.values[validCheck(val ?? none.index)];
}

enum CopyRightType {
  none,
  free,
  nonComertialsUseOnly,
  openSource,
  needPermition,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static CopyRightType fromInt(int? val) => CopyRightType.values[validCheck(val ?? none.index)];
}

enum PermissionType {
  none,
  owner, // 소유자
  writer, // 편집자
  reader, // 뷰어
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static PermissionType fromInt(int? val) => PermissionType.values[validCheck(val ?? none.index)];
}

enum BookSort {
  none,
  name, // 이름순
  updateTime, // 최신순
  likeCount, // 좋아요순
  viewCount, // 조회수순
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static BookSort fromInt(int? val) => BookSort.values[validCheck(val ?? none.index)];
}

// enum PageTransition {
//   none,
//   fadeIn,
//   fadeOut,
//   end;

//   static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
//   static PageTransition fromInt(int? val) => PageTransition.values[validCheck(val ?? none.index)];
// }

enum GradationType {
  none,
  top2bottom,
  bottom2top,
  left2right,
  right2left,
  leftTop2rightBottom,
  leftBottom2rightTop,
  rightBottom2leftTop,
  rightTop2leftBottom,
  in2out,
  out2in,
  topAndBottom,
  middle,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static GradationType fromInt(int? val) => GradationType.values[validCheck(val ?? none.index)];
}

enum AnimationType {
  none(0),
  fadeIn(1),
  flip(2),
  shake(4),
  blurXY(8),
  scaleXY(16),
  rotate(32),
  slideX(64),
  slideY(128),
  end(999999);

  const AnimationType(this.value);
  final int value;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static AnimationType fromInt(int? val) => AnimationType.values[validCheck(val ?? none.index)];
  static List<AnimationType> toAniListFromInt(int val) {
    List<AnimationType> retval = [];
    for (int i = 1; i < end.index; i++) {
      if ((val & AnimationType.values[i].value) == AnimationType.values[i].value) {
        retval.add(AnimationType.values[i]);
      }
    }
    return retval;
  }
}

enum PageTransitionType {
  none(0),
  fade(1),
  scale(2),
  slidingX(3),
  slidingY(4),
  end(999999);

  const PageTransitionType(this.value);
  final int value;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static PageTransitionType fromInt(int? val) =>
      PageTransitionType.values[validCheck(val ?? none.index)];

  String getTitle() {
    for (var item in CretaLang.pageTransitionType.entries) {
      if (item.value == index) {
        return item.key;
      }
    }
    return '';
  }

  static String getTitleFromInt(int idx) {
    for (var item in CretaLang.pageTransitionType.entries) {
      if (item.value == idx) {
        return item.key;
      }
    }
    return '';
  }

  static String getTitleFromInt2(int idx) {
    for (var item in CretaLang.pageTransitionType2.entries) {
      if (item.value == idx) {
        return item.key;
      }
    }
    return '';
  }
}

enum NextContentTypes {
  none,
  normalCarousel,
  tiltedCarousel,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static NextContentTypes fromInt(int? val) =>
      NextContentTypes.values[validCheck(val ?? none.index)];
}

enum TextureType {
  none,
  glass,
  marble,
  wood,
  canvas,
  paper,
  hanji,
  leather,
  stone,
  grass,
  sand,
  drops,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static TextureType fromInt(int? val) => TextureType.values[validCheck(val ?? none.index)];
}

enum ImageFilterType {
  none,
  gay,
  warm,
  bright,
  dark,
  cold,
  vintage,
  romantic,
  tranquil,
  soft,
  Pleasant,
  elegant,
  sepia,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static ImageFilterType fromInt(int? val) => ImageFilterType.values[validCheck(val ?? none.index)];
}

enum ContentsFitType {
  none,
  cover,
  fill,
  free,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static ContentsFitType fromInt(int? val) => ContentsFitType.values[validCheck(val ?? none.index)];

  BoxFit toBoxFit() {
    switch (this) {
      case cover:
        return BoxFit.cover;
      case fill:
        return BoxFit.fill;
      case free:
        return BoxFit.contain;
      default:
        return BoxFit.fill;
    }
  }
}

enum MusicPlayerSizeEnum {
  none,
  Big,
  Medium,
  Small,
  Tiny,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static MusicPlayerSizeEnum fromInt(int? val) =>
      MusicPlayerSizeEnum.values[validCheck(val ?? none.index)];
}

enum NewsSizeEnum {
  none,
  Big,
  Medium,
  Small,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static NewsSizeEnum fromInt(int? val) => NewsSizeEnum.values[validCheck(val ?? none.index)];
}

// enum BorderPositionType {
//   none,
//   outSide,
//   inSide,
//   center,
//   end;

//   static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
//   static BorderPositionType fromInt(int? val) =>
//       BorderPositionType.values[validCheck(val ?? none.index)];
// }

enum BorderCapType {
  none,
  round,
  bevel,
  miter,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static BorderCapType fromInt(int? val) => BorderCapType.values[validCheck(val ?? none.index)];
}

enum ShapeType {
  none,
  rectangle,
  circle,
  oval,
  triangle,
  star,
  diamond,
  sideCut,
  waveTopLeft,
  waveTopRight,
  waveBottomLeft,
  waveBottomRight,
  ovalTop,
  ovalBottom,
  ovalLeft,
  ovalRight,
  star4,
  star8,
  star16,
  arrowUp,
  arrowDown,
  arrowLeft,
  arrowRight,
  dirUp,
  dirDown,
  dirLeft,
  dirRight,
  octagon,
  hexagon,
  digonalBottomLeft,
  digonalBottomRight,
  pepple1,
  heart,
  leaf,
  snowman,

  //rhombus, // 마름모
  //parallelogram, // 평행사변형
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static ShapeType fromInt(int? val) => ShapeType.values[validCheck(val ?? none.index)];
}

enum EffectType {
  none,
  conffeti,
  snow,
  rain,
  bubble,
  star,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static EffectType fromInt(int? val) => EffectType.values[validCheck(val ?? none.index)];
}

enum DurationType {
  none,
  forever,
  untilContentsEnd,
  specified,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static DurationType fromInt(int? val) => DurationType.values[validCheck(val ?? none.index)];
}

// enum ContentsType {
//   none,
//   video,
//   image,
//   text,
//   sheet,
//   youtube,
//   instagram,
//   web,
//   pdf,
//   effect,
//   free,
//   end;

//   static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
//   static ContentsType fromInt(int? val) => ContentsType.values[validCheck(val ?? none.index)];
// }

enum TextAniType {
  none,
  tickerSide,
  tickerUpDown,
  rotate,
  fade,
  fidget,
  typewriter,
  wavy,
  colorize,
  textLiquidFill,
  bounce,
  shimmer,
  neon,
  fadeTransition,
  rotateTransition,
  slideTransition,
  //sizeTransition,
  scaleTransition,
  randomTransition,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static TextAniType fromInt(int? val) => TextAniType.values[validCheck(val ?? none.index)];

  bool isTransition() {
    if (this == fadeTransition) return true;
    if (this == rotateTransition) return true;
    if (this == slideTransition) return true;
    //if (this == sizeTransition) return true;
    if (this == scaleTransition) return true;
    if (this == randomTransition) return true;
    return false;
  }
}

// enum TextLineType {
//   none,
//   underline,
//   overline,
//   lineThrough,
//   end;

//   static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
//   static TextLineType fromInt(int? val) => TextLineType.values[validCheck(val ?? none.index)];

//   static TextDecoration getTextDecoration(TextLineType value) {
//     switch (value) {
//       case TextLineType.none:
//         return TextDecoration.none;
//       case TextLineType.underline:
//         return TextDecoration.underline;
//       case TextLineType.overline:
//         return TextDecoration.overline;
//       case TextLineType.lineThrough:
//         return TextDecoration.lineThrough;
//       default:
//         return TextDecoration.none;
//     }
//   }
// }

enum FontSizeType {
  none,
  huge,
  big,
  middle,
  small,
  userDefine,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static FontSizeType fromInt(int? val) => FontSizeType.values[validCheck(val ?? none.index)];
  static Map<FontSizeType, double> enumToVal = {
    FontSizeType.none: 0,
    FontSizeType.huge: 64,
    FontSizeType.big: 48,
    FontSizeType.middle: 36,
    FontSizeType.small: 24,
    FontSizeType.userDefine: 40,
    FontSizeType.end: -1,
  };
  static Map<double, FontSizeType> valToEnum = {
    0: FontSizeType.none,
    64: FontSizeType.huge,
    48: FontSizeType.big,
    36: FontSizeType.middle,
    24: FontSizeType.small,
    40: FontSizeType.userDefine,
    -1: FontSizeType.end,
  };
}

enum AutoSizeType {
  none,
  autoFontSize,
  autoFrameHeight, // 세로만 늘어나고 가로는 늘어나지 않는다.
  noAutoSize,
  autoFrameSize, // 가로세로 모두 늘어난다.
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static AutoSizeType fromInt(int? val) => AutoSizeType.values[validCheck(val ?? none.index)];
  static AutoSizeType fromString(String val) {
    if (val == CretaLang.autoFontSize) {
      return AutoSizeType.autoFontSize;
    } else if (val == CretaLang.autoFrameHeight) {
      return AutoSizeType.autoFrameHeight;
    } else {
      return AutoSizeType.noAutoSize;
    }
  }
}

enum PlayState {
  none,
  init,
  start,
  pause,
  stop,
  manualPlay,
  globalPause,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static PlayState fromInt(int? val) => PlayState.values[validCheck(val ?? none.index)];
}

// ==user property enum==
enum CretaGradeType {
  none,
  rookie,
  star,
  celebrity,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static CretaGradeType fromInt(int? val) => CretaGradeType.values[validCheck(val ?? none.index)];
}

enum RatePlanType {
  none,
  free,
  personalPay,
  teamPay,
  enterprise,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static RatePlanType fromInt(int? val) => RatePlanType.values[validCheck(val ?? none.index)];
}

enum CountryType {
  none,
  korea,
  usa,
  japan,
  china,
  vietnam,
  france,
  german,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static CountryType fromInt(int? val) => CountryType.values[validCheck(val ?? none.index)];
}

enum LanguageType {
  none,
  korean,
  english,
  japanese,
  chinese,
  vietnamese,
  french,
  germany,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static LanguageType fromInt(int? val) => LanguageType.values[validCheck(val ?? none.index)];
}

enum JobType {
  none,
  general,
  student,
  teacher,
  designer,
  developer,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static JobType fromInt(int? val) => JobType.values[validCheck(val ?? none.index)];
}

enum ThemeType {
  none,
  light,
  dark,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static ThemeType fromInt(int? val) => ThemeType.values[validCheck(val ?? none.index)];
}

enum InitPageType {
  none,
  community,
  studio,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static InitPageType fromInt(int? val) => InitPageType.values[validCheck(val ?? none.index)];
}

enum CookieType {
  none,
  allow,
  refuse,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static CookieType fromInt(int? val) => CookieType.values[validCheck(val ?? none.index)];
}

enum TeamPermissionType {
  none,
  owner,
  manager,
  general,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static TeamPermissionType fromInt(int? val) =>
      TeamPermissionType.values[validCheck(val ?? none.index)];
}

TextAlign intToTextAlign(int t) {
  switch (t) {
    case 0:
      return TextAlign.left;
    case 1:
      return TextAlign.right;
    case 2:
      return TextAlign.center;
    case 3:
      return TextAlign.justify;
    case 4:
      return TextAlign.start;
    case 5:
      return TextAlign.end;
    case 6:
  }
  return TextAlign.center;
}

AlignmentGeometry alignVToAlignment(int t) {
  switch (t) {
    case 1:
      return Alignment.bottomCenter;
    case 0:
      return Alignment.center;
    case -1:
      return Alignment.topCenter;
  }
  return Alignment.center;
}

TextAlignVertical intToTextAlignVertical(int t) {
  switch (t) {
    case 1:
      return TextAlignVertical.bottom;
    case 0:
      return TextAlignVertical.center;
    case -1:
      return TextAlignVertical.top;
  }
  return TextAlignVertical.center;
}

int textAlignVerticalToInt(TextAlignVertical t) {
  switch (t) {
    case TextAlignVertical.bottom:
      return 1;
    case TextAlignVertical.center:
      return 0;
    case TextAlignVertical.top:
      return -1;
  }
  return 0;
}

Alignment textAligntoAlign(TextAlign t) {
  switch (t) {
    case TextAlign.left:
      return Alignment.centerLeft;
    case TextAlign.center:
      return Alignment.center;
    case TextAlign.right:
      return Alignment.centerLeft;
    default:
      return Alignment.center;
  }
}

Alignment bothSideAlign(TextAlign align, int valign) {
  switch (align) {
    case TextAlign.left:
      switch (valign) {
        case 1:
          return Alignment.bottomLeft;
        case 0:
          return Alignment.centerLeft;
        case -1:
          return Alignment.topLeft;
        default:
          return Alignment.centerLeft;
      }
    case TextAlign.center:
      switch (valign) {
        case 1:
          return Alignment.bottomCenter;
        case 0:
          return Alignment.center;
        case -1:
          return Alignment.topCenter;
        default:
          return Alignment.center;
      }

    case TextAlign.right:
      switch (valign) {
        case 1:
          return Alignment.bottomRight;
        case 0:
          return Alignment.centerRight;
        case -1:
          return Alignment.topRight;
        default:
          return Alignment.centerRight;
      }
    default:
      return Alignment.center;
  }
}

enum GenderType {
  none,
  male,
  female,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static GenderType fromInt(int? val) => GenderType.values[validCheck(val ?? none.index)];
}

enum TextType {
  none,
  normal,
  weather,
  clock,
  date,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static TextType fromInt(int? val) => TextType.values[validCheck(val ?? none.index)];
}

enum ImageAniType {
  none,
  move,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static ImageAniType fromInt(int? val) => ImageAniType.values[validCheck(val ?? none.index)];
}

enum CommentBarType {
  none,
  addCommentMode,
  modifyCommentMode,
  addReplyMode,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static CommentBarType fromInt(int? val) => CommentBarType.values[validCheck(val ?? none.index)];
}

enum CommunityChannelType {
  none,
  books,
  playlists,
  memberChannels,
  info,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static CommunityChannelType fromInt(int? val) =>
      CommunityChannelType.values[validCheck(val ?? none.index)];
}

enum LinkIconType {
  none,
  circle2,
  dots,
  star1,
  star2,
  //rect1,
  rect2,
  triangle1,
  heart1,
  heart2,
  desc,
  language,
  play1,
  play2,
  fix,
  chart,
  warn1,
  warn2,
  info1,
  info2,
  end;

  static int validCheck(int val) => (val > end.index || val < none.index) ? none.index : val;
  static LinkIconType fromInt(int? val) => LinkIconType.values[validCheck(val ?? none.index)];

  static IconData toIcon(LinkIconType iconType) {
    switch (iconType) {
      case none:
        return Icons.radio_button_checked_outlined;
      case circle2:
        return Icons.radio_button_checked_outlined;
      case dots:
        return Icons.apps;
      case star1:
        return Icons.star_outlined;
      case star2:
        return Icons.grade_outlined;
      // case rect1:
      //   return Icons.crop_square_outlined;
      case rect2:
        return Icons.stop_circle_outlined;
      case triangle1:
        return Icons.change_history_outlined;
      case heart1:
        return Icons.favorite_outlined;
      case heart2:
        return Icons.favorite_border_outlined;
      case desc:
        return Icons.description_outlined;
      case language:
        return Icons.language_outlined;
      case play1:
        return Icons.play_circle_outlined;
      case play2:
        return Icons.smart_display_outlined;
      case fix:
        return Icons.auto_fix_high_outlined;
      case chart:
        return Icons.bar_chart_outlined;
      case warn1:
        return Icons.error_outlined;
      case warn2:
        return Icons.warning_amber_outlined;
      case info1:
        return Icons.info_outlined;
      case info2:
        return Icons.help_outline_outlined;
      default:
        return Icons.radio_button_checked_outlined;
    }
  }
}
