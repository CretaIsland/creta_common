import 'dart:html' as html;

void saveLogToFile(String logData, String outFileName,
    {String folder = "download"}) {
  print('save log to file web');
  final blob = html.Blob([logData]);
  final url = html.Url.createObjectUrlFromBlob(blob);
  html.AnchorElement(href: url)
    ..setAttribute(folder, outFileName)
    ..click();
  html.Url.revokeObjectUrl(url);
}
