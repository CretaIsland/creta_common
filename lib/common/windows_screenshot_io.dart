// import 'dart:async';
// import 'dart:typed_data';
// import 'dart:ui';
// import 'package:hycop_multi_platform/hycop.dart';
// import 'package:window_manager/window_manager.dart';
// import 'package:screenshot/screenshot.dart';

// class WindowScreenshot {
//   static final ScreenshotController screenshotController = ScreenshotController();

//   // return screenshot image url
//   static Future<String> uploadScreenshot(
//       {required String bookId,
//       Offset offset = Offset.zero,
//       Size size = const Size(210, 150)}) async {
//     try {
//       // Capture the screenshot
//       Uint8List? screenshotBytes = await screenshotController.capture(
//         pixelRatio: window.devicePixelRatio,
//         delay: Duration(milliseconds: 10),
//       );

//       if (screenshotBytes != null) {
//         // Upload the screenshot
//         FileModel? result = await HycopFactory.storage!.uploadFile(
//             '${bookId}_thumbnail.png', 'image/png', screenshotBytes);

//         if (result != null) {
//           return result.url;
//         }
//       }
//       return Future.error('Failed to capture screenshot');
//     } catch (e) {
//       return Future.error('Error capturing screenshot: $e');
//     }
//   }
// }