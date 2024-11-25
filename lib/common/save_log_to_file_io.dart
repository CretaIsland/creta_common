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

String getFirstPath() {
  throw UnsupportedError('extractBytesFromFile is not supported on this platform');
  // Uri uri = Uri.parse(html.window.location.href);
  // // URL의 경로 세그먼트를 가져옵니다.
  // List<String> pathSegments = uri.pathSegments;
  // // 첫 번째 디렉토리 이름을 반환합니다. 경로가 없거나 첫 번째 디렉토리가 없는 경우 빈 문자열을 반환합니다.
  // return pathSegments.isNotEmpty ? pathSegments[0] : '';
}

String getFirstTokenBeforeDot() {
  throw UnsupportedError('extractBytesFromFile is not supported on this platform');
  // // if (firstAddress.isNotEmpty) {
  // //   return firstAddress;
  // // }
  // Uri uri = Uri.parse(html.window.location.href);
  // String host = uri.host;
  // int dotIndex = host.indexOf('.');
  // if (dotIndex != -1) {
  //   // firstAddress = host.substring(0, dotIndex);
  //   // return firstAddress;
  //   return host.substring(0, dotIndex);
  // }
  // return ''; // 점이 없는 경우 빈 문자열을 반환합니다.
}
