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

// Automatic imports
// DO NOT REMOVE OR DUPLICATE THESE IMPORTS IN FLUTTERFLOW
// Automatic imports
// DO NOT REMOVE OR DUPLICATE THESE IMPORTS IN FLUTTERFLOW

Future<dynamic> parseArticleContentAction(String? rawBody) async {
  if (rawBody == null || rawBody.isEmpty) {
    return {
      'bodyBeforeList': '',
      'listTitle': '',
      'checklist': [],
      'bodyAfterList': '',
    };
  }

  List<String> bodyBeforeList = [];
  String listTitle = '';
  List<String> checklistItems = [];
  List<String> bodyAfterList = [];

  // Fix character escapes for literal line breaks
  String formattedBody = rawBody.replaceAll('\\n', '\n');
  List<String> lines = formattedBody.split('\n');

  bool foundChecklist = false;

  for (int i = 0; i < lines.length; i++) {
    String trimmed = lines[i].trim();
    if (trimmed.isEmpty) continue;

    // 1. Identify list/checklist items
    if (trimmed.startsWith('- [x]') ||
        trimmed.startsWith('- [ ]') ||
        trimmed.startsWith('- ') ||
        trimmed.startsWith('* ')) {
      foundChecklist = true;

      // Clean up whatever marker notation is used
      String cleanItem = trimmed;
      if (trimmed.startsWith('- [x]') || trimmed.startsWith('- [ ]')) {
        cleanItem = trimmed.replaceFirst(RegExp(r'-\s*\[[x ]\]'), '').trim();
      } else {
        cleanItem = trimmed.substring(2).trim();
      }

      if (cleanItem.isNotEmpty) {
        checklistItems.add(cleanItem);
      }
      continue;
    }

    // 2. Sort plain strings based on whether the checklist block has passed
    if (!foundChecklist) {
      bodyBeforeList.add(trimmed);
    } else {
      bodyAfterList.add(trimmed);
    }
  }

  // Look backwards inside bodyBeforeList to isolate the item immediately preceding the list
  if (bodyBeforeList.isNotEmpty) {
    String lastItem = bodyBeforeList.last;
    // Check if it looks like a section introduction sentence (e.g., ending with a colon)
    if (lastItem.endsWith(':') ||
        lastItem.toLowerCase().contains('protect yourself')) {
      listTitle = lastItem;
      bodyBeforeList.removeLast(); // Pull it out of main context paragraphs
    }
  }

  return {
    'bodyBeforeList': bodyBeforeList.join('\n\n'),
    'listTitle': listTitle,
    'checklist': checklistItems,
    'bodyAfterList': bodyAfterList.join('\n\n'),
  };
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
