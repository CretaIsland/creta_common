// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

void saveLogToFile(String logData, String outFileName, {String folder = "download"}) {
  //print('save log to file web');
  final blob = Blob([logData]);
  final url = Url.createObjectUrlFromBlob(blob);
  AnchorElement(href: url)
    ..setAttribute(folder, outFileName)
    ..click();
  Url.revokeObjectUrl(url);
}
