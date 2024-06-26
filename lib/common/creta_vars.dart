import 'dart:ui';
import '../model/app_enums.dart';

class CretaVars {
  static ServiceType serviceType = ServiceType.signage;

  static bool isCanvaskit = true;
  static bool isDeveloper = false;
  static Size displaySize = Size.zero;

  static BookType defaultBookType() {
    switch (CretaVars.serviceType) {
      case ServiceType.signage:
        return BookType.signage;
      case ServiceType.barricade:
        return BookType.barricade;
      case ServiceType.presentaion:
        return BookType.presentaion;
      case ServiceType.escalator:
        return BookType.escalator;
      case ServiceType.board:
        return BookType.board;
      case ServiceType.cdu:
        return BookType.cdu;
      case ServiceType.etc:
        return BookType.etc;
      default:
        return BookType.none;
    }
  }

  static Size defaultSize() {
    switch (CretaVars.serviceType) {
      case ServiceType.signage:
        return const Size(1080, 1920);
      case ServiceType.barricade:
        return const Size(360, 28);
      case ServiceType.presentaion:
        return const Size(1920, 1080);
      case ServiceType.escalator:
        return const Size(1920, 1080);
      case ServiceType.board:
        return const Size(1920, 1080);
      case ServiceType.cdu:
        return const Size(1920, 1080);
      case ServiceType.etc:
        return const Size(1920, 1080);
      default:
        return const Size(1920, 1080);
    }
  }

  static Size defaultFrameSize() {
    switch (CretaVars.serviceType) {
      case ServiceType.signage:
        return const Size(1080, 1920);
      case ServiceType.barricade:
        return const Size(360, 28);
      case ServiceType.presentaion:
        return const Size(600, 400);
      case ServiceType.escalator:
        return const Size(1920, 1080);
      case ServiceType.board:
        return const Size(1920, 1080);
      case ServiceType.cdu:
        return const Size(1920, 1080);
      case ServiceType.etc:
        return const Size(1920, 1080);
      default:
        return const Size(1920, 1080);
    }
  }

  static String serviceTypeString() {
    switch (CretaVars.serviceType) {
      case ServiceType.signage:
        return "signage";
      case ServiceType.barricade:
        return "barricade";
      case ServiceType.presentaion:
        return "presentaion";
      case ServiceType.escalator:
        return "escalator";
      case ServiceType.board:
        return "board";
      case ServiceType.cdu:
        return "cdu";
      case ServiceType.etc:
        return "etc";
      default:
        return "";
    }
  }
}
