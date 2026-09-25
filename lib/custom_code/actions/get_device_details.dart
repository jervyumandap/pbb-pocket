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

import 'package:flutter/foundation.dart';

import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io' show Platform;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:uuid/uuid.dart';

Future<dynamic> getDeviceDetails() async {
  final deviceInfo = DeviceInfoPlugin();

  Map<String, dynamic> deviceData = {};

  try {
    if (kIsWeb) {
      final browserData = await deviceInfo.webBrowserInfo;
      debugPrint('browserData: ${browserData.data}');

      deviceData = {
        'device_id': browserData.browserName.name,
        'model': browserData.appName,
        'os': 'web',
        'os_version':
            '150.0.7871.47', // browserData.appVersion, // hardcoded, due to internal server error
        'name': browserData.browserName.name,
        'user_agent': browserData.userAgent
      };
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      debugPrint('iosInfo: ${iosInfo}');

      deviceData = {
        'device_id': iosInfo.identifierForVendor,
        'model': iosInfo.utsname.machine,
        'os': 'ios',
        'os_version': iosInfo.systemVersion,
        'name': iosInfo.modelName,
        'user_agent': null
      };
    } else if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      debugPrint('androidInfo: ${androidInfo}');

      deviceData = {
        'device_id': androidInfo.id,
        'model': androidInfo.model,
        'os': 'android',
        'os_version': androidInfo.version.release,
        'name': androidInfo.model,
        'user_agent': null
      };
    }
  } catch (e) {
    deviceData = {'error': 'Failed to get device info'};
  }

  debugPrint('deviceData: ${deviceData}');

  return deviceData;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
