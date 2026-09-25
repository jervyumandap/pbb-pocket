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

// create a custom action to take a screenshot of the screen, then show the share options
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

// final GlobalKey screenshotKey = GlobalKey();

Future<bool> makeScreenshotAndShare(BuildContext context) async {
  try {
    // ✅ FIX: wait for widget to fully render before capture
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
        final RenderObject? rootRender = context.findRenderObject();
        if (rootRender is RenderRepaintBoundary) {
          boundary = rootRender;
        } else {
          return false;
        }
      }
    }

    // (extra safety) ensure frame is stable before capture
    await WidgetsBinding.instance.endOfFrame;

    final ui.Image image = await boundary.toImage(pixelRatio: 3.0);

    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);

    if (byteData == null) {
      return false;
    }

    final Uint8List pngBytes = byteData.buffer.asUint8List();

    final Directory tempDir = await getTemporaryDirectory();

    final String filePath =
        '${tempDir.path}/screenshot_${DateTime.now().millisecondsSinceEpoch}.png';

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

// try {
//     // FIX: wait for widget to fully render before capture
//     await Future.delayed(const Duration(milliseconds: 100));
//     await WidgetsBinding.instance.endOfFrame;

//     // Find the render object for the current widget tree
//     RenderRepaintBoundary? boundary;

//     // Try to find a RepaintBoundary in the widget tree
//     final RenderObject? renderObject = context.findRenderObject();

//     if (renderObject == null) {
//       return false;
//     }

//     // Walk up the tree to find a RepaintBoundary
//     RenderObject? current = renderObject;
//     while (current != null) {
//       if (current is RenderRepaintBoundary) {
//         boundary = current;
//         break;
//       }
//       try {
//         current = current.parent;
//       } catch (e) {
//         break;
//       }
//     }

//     // If no RepaintBoundary found, try using the renderObject directly
//     if (boundary == null) {
//       // Wrap in a try-catch in case the renderObject is not a RepaintBoundary
//       if (renderObject is RenderRepaintBoundary) {
//         boundary = renderObject;
//       } else {
//         // Fallback: capture the root
//         final BuildContext? rootContext = context;
//         if (rootContext == null) return false;

//         // Try to get the root render object
//         final RenderObject? rootRender = rootContext.findRenderObject();
//         if (rootRender is RenderRepaintBoundary) {
//           boundary = rootRender;
//         } else {
//           return false;
//         }
//       }
//     }

//     // Capture the image
//     final ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//     final ByteData? byteData =
//         await image.toByteData(format: ui.ImageByteFormat.png);

//     if (byteData == null) {
//       return false;
//     }

//     final Uint8List pngBytes = byteData.buffer.asUint8List();

//     // Save to a temporary file
//     final Directory tempDir = await getTemporaryDirectory();
//     final String filePath =
//         '${tempDir.path}/screenshot_${DateTime.now().millisecondsSinceEpoch}.png';
//     final File file = File(filePath);
//     await file.writeAsBytes(pngBytes);

//     // Share the screenshot
//     final XFile xFile = XFile(filePath, mimeType: 'image/png');

//     final ShareResult result = await SharePlus.instance.share(
//       ShareParams(
//         files: [xFile],
//         text: 'Check out this screenshot 📸',
//         subject: 'Shared Screenshot',
//       ),
//     );
//     // final XFile xFile = XFile(filePath, mimeType: 'image/png');
//     // final ShareResult result = await Share.shareXFiles(
//     //   [xFile],
//     //   text: 'Screenshot',
//     //   subject: 'Screenshot',
//     // );

//     // Clean up the temporary file after sharing
//     try {
//       if (await file.exists()) {
//         await file.delete();
//       }
//     } catch (e) {
//       // Ignore cleanup errors
//     }

//     // Return true if sharing was successful or dismissed
//     return result.status == ShareResultStatus.success ||
//         result.status == ShareResultStatus.dismissed;
//   } catch (e) {
//     debugPrint('Error taking screenshot and sharing: $e');
//     return false;
//   }
