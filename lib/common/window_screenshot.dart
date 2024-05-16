// ignore: avoid_web_libraries_in_flutter
import 'dart:async';
//import 'dart:js_util';
import 'dart:typed_data';
import 'dart:ui';
import 'package:hycop/hycop.dart';
//import 'dart:js_interop';
import 'package:js/js.dart';
//
// Use one of these valid types instead: JS types from 'dart:js_interop', ExternalDartReference, void, bool, num, double, int, String, extension types that erase to one of these types, '@staticInterop' types, 'dart:html' types when compiling to JS, or a type
// parameter that is a subtype of a valid non-primitive type.
//external String jsScreenshot(double x, double y, double width, double height);
//                 ^
//@JS()
//external dynamic jsScreenshot(double x, double y, double width, double height); // 3.22 에서는  dynmic return value 를 허용하지 않는다.
//external String jsScreenshot(double x, double y, double width, double height); // => for flutter-3.16.x

@JS('jsScreenshot')
external void jsScreenshot(
    double x, double y, double width, double height, Function(String) callback);

class WindowScreenshot {
  // return screenshot image url
  static Future<String> uploadScreenshot(
      {required String bookId,
      Offset offset = Offset.zero,
      Size size = const Size(210, 150)}) async {
    try {
      //print("Try screenshot !!!");
      // dynamic screenshot =
      //     await promiseToFuture(jsScreenshot(offset.dx, offset.dy, size.width, size.height));
      //dynamic screenshot = await jsScreenshot(offset.dx, offset.dy, size.width, size.height);
      // if (screenshot != null) {
      //   UriData screenshotBytes = Uri.parse(screenshot).data!;
      //   FileModel? result = await HycopFactory.storage!.uploadFile(
      //       '${bookId}_thumbnail.png', screenshotBytes.mimeType, screenshotBytes.contentAsBytes(),
      //       makeThumbnail: false, usageType: 'bookThumbnail');
      //   if (result != null) {
      //     return result.url;
      //   }
      // }
      final completer = Completer<String>();
      jsScreenshot(offset.dx, offset.dy, size.width, size.height,
          allowInterop((String screenshot) async {
        // Handle the result
        UriData screenshotBytes = Uri.parse(screenshot).data!;
        FileModel? result = await HycopFactory.storage!.uploadFile(
            '${bookId}_thumbnail.png', screenshotBytes.mimeType, screenshotBytes.contentAsBytes(),
            makeThumbnail: false, usageType: 'bookThumbnail');
        if (result != null) {
          completer.complete(result.url);
        } else {
          completer.complete('');
        }
      }));
      return completer.future;
    } catch (error) {
      //print("eror screenshot !!! $error");
      return '';
    }
    //return '';
  }

  // return screenshot image bytes
  static Future<Uint8List?> getScreenshotBytes(
      {required String bookId,
      Offset offset = Offset.zero,
      Size size = const Size(210, 150)}) async {
    final completer = Completer<Uint8List?>();
    try {
      jsScreenshot(offset.dx, offset.dy, size.width, size.height, allowInterop((String screenshot) {
        completer.complete(Uri.parse(screenshot).data!.contentAsBytes());
      }));
      // dynamic screenshot =
      //     await promiseToFuture(jsScreenshot(offset.dx, offset.dy, size.width, size.height));
      // if (screenshot != null) {
      //   return Uri.parse(screenshot).data!.contentAsBytes();
      // }
      return completer.future;
    } catch (error) {
      return null;
    }
    //return null;
  }
}
