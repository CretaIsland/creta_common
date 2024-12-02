// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:http/browser_client.dart';
import 'package:http/http.dart' as http;
import 'package:hycop_multi_platform/common/util/logger.dart';
import 'package:universal_html/html.dart';

import 'dart:typed_data';
import 'dart:async';

String getOrigin(String? enterprise) {
  return Uri.base.origin;
}

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

Future<void> downloadImage(String urlImage, String bucketId, String mediaApiUrl) async {
  // const fileName = "download.png";

  // final res = await http.get(Uri.parse(urlImage));

  // final fileBlob = Blob([res.bodyBytes]);
  // AnchorElement(href: Url.createObjectUrlFromBlob(fileBlob))
  //   ..download = fileName
  //   ..click();

  http
      .post(Uri.parse("$mediaApiUrl/downloadAiImg"),
          headers: {"Content-type": "application/json"},
          body: jsonEncode({"userId": bucketId, "imgUrl": urlImage}))
      .then((value) async {
    final res = jsonDecode(value.body);
    final imgRes = await http.get(Uri.parse(res["fileView"]));

    final fileBlob = html.Blob([imgRes.bodyBytes]);
    html.AnchorElement(href: html.Url.createObjectUrlFromBlob(fileBlob))
      ..download = "${res["fileName"].toString().split('/').last}.png"
      ..click();

    //debugPrint(res.body);
  });
}

String getFirstPath() {
  Uri uri = Uri.parse(html.window.location.href);
  // URL의 경로 세그먼트를 가져옵니다.
  List<String> pathSegments = uri.pathSegments;
  // 첫 번째 디렉토리 이름을 반환합니다. 경로가 없거나 첫 번째 디렉토리가 없는 경우 빈 문자열을 반환합니다.
  return pathSegments.isNotEmpty ? pathSegments[0] : '';
}

String getFirstTokenBeforeDot() {
  // if (firstAddress.isNotEmpty) {
  //   return firstAddress;
  // }
  Uri uri = Uri.parse(html.window.location.href);
  String host = uri.host;
  int dotIndex = host.indexOf('.');
  if (dotIndex != -1) {
    // firstAddress = host.substring(0, dotIndex);
    // return firstAddress;
    return host.substring(0, dotIndex);
  }
  return ''; // 점이 없는 경우 빈 문자열을 반환합니다.
}

void toggleFullscreen(bool isFullscreen) {
  if (isFullscreen) {
    document.documentElement?.requestFullscreen();
  } else {
    document.exitFullscreen();
  }
}

Future<http.Response?> post(
  String url,
  Map<String, dynamic> body, {
  void Function(String code)? onError,
  void Function(String code)? onException,
}) async {
  String jsonString = '{\n';
  int count = 0;
  for (var ele in body.entries) {
    if (count > 0) {
      jsonString += ',\n';
    }
    jsonString += '"${ele.key}": ${ele.value}';
    count++;
  }
  jsonString += '\n}';

  //String encodedJson = base64Encode(utf8.encode(jsonString));

  //print(jsonString);

  try {
    http.Client client = http.Client();
    if (client is BrowserClient) {
      client.withCredentials = true;
    }
    // HTTP POST 요청 수행
    http.Response response = await client.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        // 추가적인 헤더를 설정할 수 있습니다.
      },
      body: jsonString, //encodedJson, //jsonString,
    );
    if (response.statusCode != 200) {
      // 에러 처리
      logger.severe('$url Failed to send data');
      logger.severe('Status code: ${response.statusCode}');
      onError?.call('${response.statusCode}');
      return null;
    }

    logger.fine('pos $url succeed');
    return response;
  } catch (e) {
    // 예외 처리
    logger.severe('$url Failed to send data');
    logger.severe('An error occurred: $e');
    onException?.call('$e');
    return null;
  }
}
