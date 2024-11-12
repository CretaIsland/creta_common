// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:typed_data';
import 'dart:async';

void saveLogToFile(String logData, String outFileName, {String folder = "download"}) {
  //print('save log to file web');
  final blob = html.Blob([logData]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.AnchorElement(href: url)
    ..setAttribute(folder, outFileName)
    ..click();
  html.Url.revokeObjectUrl(url);
}

Future<List<int>> extractBytesFromFile(dynamic param) async {
  html.File file = param as html.File;

  final reader = html.FileReader();

  final completer = Completer<List<int>>();
  reader.onLoadEnd.listen((event) {
    final Uint8List bytes = reader.result as Uint8List;
    completer.complete(bytes);
  });

  reader.onError.listen((event) {
    completer.completeError(reader.error!);
  });

  reader.readAsArrayBuffer(file);

  return completer.future;
}
