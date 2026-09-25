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

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';

Future<FFUploadedFile?> makeScreenshot(BuildContext context) async {
  try {
    // Wait for the current screen to finish rendering.
    await Future.delayed(const Duration(milliseconds: 100));
    await WidgetsBinding.instance.endOfFrame;

    // Get the RenderObject associated with the current context.
    final RenderObject? renderObject = context.findRenderObject();

    if (renderObject == null) {
      debugPrint('Screenshot error: RenderObject is null');
      return null;
    }

    // Find the nearest RepaintBoundary.
    RenderRepaintBoundary? boundary;
    RenderObject? current = renderObject;

    while (current != null) {
      if (current is RenderRepaintBoundary) {
        boundary = current;
        break;
      }

      try {
        current = current.parent;
      } catch (_) {
        break;
      }
    }

    if (boundary == null) {
      debugPrint('Screenshot error: No RepaintBoundary found');
      return null;
    }

    // Make sure the frame is stable.
    await WidgetsBinding.instance.endOfFrame;

    // Capture the widget as an image.
    final ui.Image image = await boundary.toImage(
      pixelRatio: 3.0,
    );

    // Convert the image to PNG bytes.
    final ByteData? byteData = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );

    if (byteData == null) {
      debugPrint('Screenshot error: Could not convert image to PNG');
      return null;
    }

    final Uint8List pngBytes = byteData.buffer.asUint8List();

    // Return the screenshot as an FFUploadedFile.
    return FFUploadedFile(
      name: 'screenshot_${DateTime.now().millisecondsSinceEpoch}.png',
      bytes: pngBytes,
    );
  } catch (e) {
    debugPrint('Error taking screenshot: $e');
    return null;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the `</>` button on the right!
