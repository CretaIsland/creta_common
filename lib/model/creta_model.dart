// ignore_for_file: must_be_immutable, use_function_type_syntax_for_parameters

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hycop/hycop.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

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
      String value = entry.value.toString().replaceAll('"', '\\"').replaceAll('\n', ' ');
      // .replaceAll(']', '\\]')
      // .replaceAll('{', '\\{')
      // .replaceAll('}', '\\}');
      retval += '$tab\t"${entry.key}":"$value"';
      lineCount++;
    }
    return retval;
  }
}

class DummyModel extends CretaModel {
  DummyModel({super.pmid = '', super.type = ExModelType.none, super.parent = ''});
}
