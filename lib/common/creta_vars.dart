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
      case ServiceType.digitalBarricade:
        return BookType.digitalBarricade;
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
        return BookType.signage;
    }
  }
}
