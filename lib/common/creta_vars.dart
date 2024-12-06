import 'dart:ui';
// ignore: avoid_web_libraries_in_flutter
//import 'dart:html' as html;

import '../model/app_enums.dart';

class CretaVars {
  static CretaVars? _instance;
  static CretaVars get instance {
    _instance ??= CretaVars();
    _instance!._initServiceType();
    return _instance!;
  }

  ServiceType _serviceType = ServiceType.signage;
  ServiceType get serviceType => _serviceType;

  void _initServiceType() {
    const String arg = String.fromEnvironment('serviceType', defaultValue: 'signage');
    _serviceType = ServiceType.fromString(arg);

    // var url = html.window.location.href;
    // var uri = Uri.parse(url);
    // var firstPartOfHost = uri.host.split('.').first;
    // switch (firstPartOfHost) {
    //   case 'presentation':
    //     _serviceType = ServiceType.presentation;
    //     break;
    //   case 'barricade':
    //     _serviceType = ServiceType.barricade;
    //     break;
    //   case 'signage':
    //     _serviceType = ServiceType.signage;
    //     break;
    //   case 'escalator':
    //     _serviceType = ServiceType.escalator;
    //     break;
    //   case 'board':
    //     _serviceType = ServiceType.board;
    //     break;
    //   default:
    //     _serviceType = ServiceType.barricade;
    //     break;
    // }
  }

  bool isCanvaskit = true;
  bool isDeveloper = false;
  bool isPlayerMode = false;
  Size displaySize = Size.zero;

  BookType defaultBookType() {
    switch (_serviceType) {
      case ServiceType.signage:
        return BookType.signage;
      case ServiceType.barricade:
        return BookType.barricade;
      case ServiceType.presentation:
        return BookType.presentation;
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

  Size defaultSize() {
    switch (_serviceType) {
      case ServiceType.signage:
        return const Size(1080, 1920);
      case ServiceType.barricade:
        return const Size(360, 28);
      case ServiceType.presentation:
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

  Size defaultFrameSize() {
    switch (_serviceType) {
      case ServiceType.signage:
        return const Size(1080, 1920);
      case ServiceType.barricade:
        return const Size(360, 28);
      case ServiceType.presentation:
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

  String serviceTypeString() {
    switch (_serviceType) {
      case ServiceType.signage:
        return "signage";
      case ServiceType.barricade:
        return "barricade";
      case ServiceType.presentation:
        return "presentation";
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
