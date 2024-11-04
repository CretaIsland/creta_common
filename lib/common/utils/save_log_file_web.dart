import 'dart:html' as html;

class SaveLogFile {
  static void saveLogToFile(String logData, String outFileName,
      {String folder = "download"}) {
    final blob = html.Blob([logData]);
    final url = html.Url.createObjectUrlFromBlob(blob);
    html.AnchorElement(href: url)
      ..setAttribute(folder, outFileName)
      ..click();
    html.Url.revokeObjectUrl(url);
  }
}
