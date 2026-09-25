// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> decodeQrph(String qrData) async {
  // Add your function code here!
  final Map<String, dynamic> result = {};
  int index = 0;

  while (index < qrData.length) {
    if (index + 4 > qrData.length) break;

    final String tag = qrData.substring(index, index + 2);
    index += 2;

    final int? length = int.tryParse(
      qrData.substring(index, index + 2),
    );

    if (length == null) break;

    index += 2;

    if (index + length > qrData.length) break;

    final String value = qrData.substring(index, index + length);

    index += length;

    result[tag] = _isNestedTag(tag) ? decodeQrph(value) : value;
  }

  print('decodeQrph result: $result');
  return result;
}

bool _isNestedTag(String tag) {
  const nestedTags = {
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
    '62',
    '64',
  };

  return nestedTags.contains(tag);
}
