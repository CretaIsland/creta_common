// ignore_for_file: must_be_immutable, use_function_type_syntax_for_parameters

//import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hycop_multi_platform/hycop.dart';

import '../common/creta_common_utils.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

extension ColorExt on Color {
  String toHex() {
    if (kIsWeb) {
      return toString();
    }
    return CretaCommonUtils.color2String(this);
  }
}

class CretaModel extends AbsExModel {
  final GlobalKey key = GlobalKey();
  CretaModel({required String pmid, required super.type, required super.parent, super.realTimeKey})
      : super(pmid: pmid);

  String get getMid => mid;
  bool expanded = true;

  // DateTime convertValue(dynamic val) {
  //   if (val is Timestamp) {
  //     // Timestamp(in Firebase) => DateTimer(in FLutter)
  //     Timestamp ts = val;
  //     return ts.toDate();
  //   }
  //   return val;
  // }

  String toJson({String tab = ''}) {
    Map<String, dynamic> data = toMap();
    String retval = '';
    int lineCount = 0;
    for (var entry in data.entries) {
      if (lineCount > 0) {
        retval += ',\n';
      }

      if (entry.value is bool || entry.value is int) {
        retval += '$tab\t"${entry.key}": ${entry.value}';
      } else if (entry.value is double) {
        // . 이 있는지 확인후.
        String value = '${entry.value}';
        if (value.contains('.')) {
          retval += '$tab\t"${entry.key}": $value';
        } else {
          retval += '$tab\t"${entry.key}": $value.0';
        }
      } else if (entry.value is List<String>) {
        retval += '$tab\t"${entry.key}": [';
        List<String> list = entry.value;
        for (int i = 0; i < list.length; i++) {
          if (i > 0) {
            retval += ', ';
          }
          retval += '"${list[i]}"';
        }
        retval += ']';
      } else if (entry.value is List<int> || entry.value is List<bool>) {
        retval += '$tab\t"${entry.key}": [';
        List<int> list = entry.value;
        for (int i = 0; i < list.length; i++) {
          if (i > 0) {
            retval += ', ';
          }
          retval += '${list[i]}';
        }
        retval += ']';
      } else if (entry.value is List<double>) {
        retval += '$tab\t"${entry.key}": [';
        List<double> list = entry.value;
        for (int i = 0; i < list.length; i++) {
          if (i > 0) {
            retval += ', ';
          }
          String value = '${list[i]}';
          if (value.contains('.')) {
            retval += value;
          } else {
            retval += '$value.0';
          }
        }
        retval += ']';
      } else {
        String value = entry.value.toString().replaceAll('"', '\\"').replaceAll('\n', ' ');
        // .replaceAll(']', '\\]')
        // .replaceAll('{', '\\{')
        // .replaceAll('}', '\\}');
        retval += '$tab\t"${entry.key}":"$value"';
      }
      lineCount++;
    }
    return retval;
  }
}

class DummyModel extends CretaModel {
  DummyModel({super.pmid = '', super.type = ExModelType.none, super.parent = ''});
}
