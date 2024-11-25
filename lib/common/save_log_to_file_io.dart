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

Future<void> downloadImage(String urlImage, String bucketId, String mediaApiUrl) async {
  throw UnsupportedError('downloadImage is not supported on this platform');
  // http
  //     .post(Uri.parse("$mediaApiUrl/downloadAiImg"),
  //         headers: {"Content-type": "application/json"},
  //         body: jsonEncode(
  //             {"userId": bucketId, "imgUrl": urlImage}))
  //     .then((value) async {
  //   final res = jsonDecode(value.body);
  //   final imgRes = await http.get(Uri.parse(res["fileView"]));

  //   final fileBlob = html.Blob([imgRes.bodyBytes]);
  //   html.AnchorElement(href: html.Url.createObjectUrlFromBlob(fileBlob))
  //     ..download = "${res["fileName"].toString().split('/').last}.png"
  //     ..click();

  //   //debugPrint(res.body);
  // });
}
