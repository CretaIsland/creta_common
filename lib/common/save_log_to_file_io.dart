import 'dart:io';

void saveLogToFile(String logData, String outFileName, {String folder = "download"}) {
  //print('save log to file io');
  final directory = Directory(folder);
  if (!directory.existsSync()) {
    directory.createSync(recursive: true); // 폴더가 없을 경우 생성
  }

  final filePath = '${directory.path}/$outFileName';
  final file = File(filePath);

  // 파일 쓰기
  file.writeAsStringSync(logData);

  //print('Log saved to $filePath');
}

Future<List<int>> extractBytesFromFile(dynamic param) async {
  throw UnsupportedError('extractBytesFromFile is not supported on this platform');
}
