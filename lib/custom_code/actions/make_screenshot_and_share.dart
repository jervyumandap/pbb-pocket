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

import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import '/custom_code/download_helper.dart';

// Takes a screenshot of the current screen. On mobile it opens the native
// share sheet; on Web (where dart:io / path_provider are unavailable) it
// downloads the captured receipt image instead.
Future<bool> makeScreenshotAndShare(BuildContext context) async {
  try {
    // Wait for the widget tree to fully render before capture.
    await Future.delayed(const Duration(milliseconds: 100));
    await WidgetsBinding.instance.endOfFrame;

    RenderRepaintBoundary? boundary;

    final RenderObject? renderObject = context.findRenderObject();
    if (renderObject == null) {
      return false;
    }

    RenderObject? current = renderObject;
    while (current != null) {
      if (current is RenderRepaintBoundary) {
        boundary = current;
        break;
      }
      try {
        current = current.parent;
      } catch (e) {
        break;
      }
    }

    if (boundary == null) {
      if (renderObject is RenderRepaintBoundary) {
        boundary = renderObject;
      } else {
        return false;
      }
    }

    // Ensure the frame is stable before capture.
    await WidgetsBinding.instance.endOfFrame;

    final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    if (byteData == null) {
      return false;
    }

    final Uint8List pngBytes = byteData.buffer.asUint8List();
    final String fileName =
        'receipt_${DateTime.now().millisecondsSinceEpoch}.png';

    if (kIsWeb) {
      // Web: download the image (Web Share API file support is inconsistent
      // across browsers, e.g. desktop Firefox). Use a data URL through the
      // project's existing download helper.
      final String dataUrl = 'data:image/png;base64,${base64Encode(pngBytes)}';
      await downloadFileV2(dataUrl, fileName);
      return true;
    }

    // Mobile/desktop: write to a temp file and open the native share sheet.
    final Directory tempDir = await getTemporaryDirectory();
    final String filePath = '${tempDir.path}/$fileName';
    final File file = File(filePath);
    await file.writeAsBytes(pngBytes);

    final XFile xFile = XFile(filePath, mimeType: 'image/png');
    final ShareResult result = await SharePlus.instance.share(
      ShareParams(
        files: [xFile],
        text: 'Check out this screenshot 📸',
        subject: 'Shared Screenshot',
      ),
    );

    try {
      if (await file.exists()) {
        await file.delete();
      }
    } catch (e) {
      // ignore cleanup errors
    }

    return result.status == ShareResultStatus.success ||
        result.status == ShareResultStatus.dismissed;
  } catch (e) {
    debugPrint('Error taking screenshot and sharing: $e');
    return false;
  }
}
