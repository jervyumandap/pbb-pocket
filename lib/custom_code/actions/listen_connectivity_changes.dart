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

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import '/components/offline_component_widget.dart';

/// Checks whether the device/browser can actually reach the internet.
Future<bool> _hasActualInternet() async {
  try {
    Uri testUri;

    if (kIsWeb) {
      // On Web, use the same origin as the FlutterFlow app.
      // This avoids CORS issues caused by external connectivity
      // check endpoints.
      testUri = Uri.parse(
        '${Uri.base.origin}/?connectivity_check=${DateTime.now().millisecondsSinceEpoch}',
      );
    } else {
      // On mobile, use Google's lightweight connectivity endpoint.
      testUri = Uri.parse(
        'https://connectivitycheck.gstatic.com/generate_204',
      );
    }

    final response = await http.get(
      testUri,
      headers: {
        'Cache-Control': 'no-cache',
        'Pragma': 'no-cache',
      },
    ).timeout(const Duration(seconds: 5));

    if (kIsWeb) {
      // Any successful HTTP response from our own app means
      // the browser has network access.
      return response.statusCode >= 200 && response.statusCode < 500;
    }

    // Mobile connectivity endpoint should return 204.
    return response.statusCode == 204 || response.statusCode == 200;
  } catch (e) {
    print('Internet check failed: $e');
    return false;
  }
}

Future listenConnectivityChanges() async {
  bool isBottomSheetShown = false;

  Connectivity().onConnectivityChanged.listen((results) async {
    try {
      final hasHardwareConnection = !results.contains(ConnectivityResult.none);

      // If the device/browser reports no connection,
      // immediately treat it as offline.
      if (!hasHardwareConnection) {
        FFAppState().update(() {
          FFAppState().offline = true;
        });

        final context = appNavigatorKey.currentContext;

        if (context != null && !isBottomSheetShown) {
          isBottomSheetShown = true;

          await showModalBottomSheet(
            context: context,
            isDismissible: false,
            enableDrag: false,
            backgroundColor: Colors.transparent,
            builder: (sheetContext) {
              return OfflineComponentWidget(
                checkConnection: () async {
                  print('Retry connectivity check...');

                  final realInternet = await _hasActualInternet();

                  print(
                    'Retry actual internet status: $realInternet',
                  );

                  if (realInternet) {
                    FFAppState().update(() {
                      FFAppState().offline = false;
                    });

                    if (Navigator.canPop(sheetContext)) {
                      Navigator.pop(sheetContext);
                    }
                  }
                },
              );
            },
          );

          isBottomSheetShown = false;
        }

        return;
      }

      // Hardware/network interface exists.
      // Now verify that actual internet is available.
      final isConnected = await _hasActualInternet();

      print(
        'Connectivity actual status: $isConnected',
      );

      FFAppState().update(() {
        FFAppState().offline = !isConnected;
      });

      final context = appNavigatorKey.currentContext;

      if (context == null) return;

      // INTERNET IS BACK
      if (isConnected && isBottomSheetShown) {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }

        isBottomSheetShown = false;
      }

      // INTERNET IS STILL DOWN
      if (!isConnected && !isBottomSheetShown) {
        isBottomSheetShown = true;

        await showModalBottomSheet(
          context: context,
          isDismissible: false,
          enableDrag: false,
          backgroundColor: Colors.transparent,
          builder: (sheetContext) {
            return OfflineComponentWidget(
              checkConnection: () async {
                print('Retry connectivity check...');

                final realInternet = await _hasActualInternet();

                print(
                  'Retry actual internet status: $realInternet',
                );

                if (realInternet) {
                  FFAppState().update(() {
                    FFAppState().offline = false;
                  });

                  if (Navigator.canPop(sheetContext)) {
                    Navigator.pop(sheetContext);
                  }
                }
              },
            );
          },
        );

        isBottomSheetShown = false;
      }
    } catch (e) {
      print('Connectivity listener error: $e');
    }
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
