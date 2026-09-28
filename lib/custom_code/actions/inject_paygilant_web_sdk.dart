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

import 'dart:math';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:universal_html/html.dart' as html;

Future injectPaygilantWebSdk(
  String subdomain,
  String clientKey,
) async {
  // The Paygilant Web SDK (bridge + loader) is injected once, early, in
  // web/index.html. Re-injecting here would load main.js a second time and
  // start a duplicate poll loop, so this action is intentionally a no-op on
  // web. Kept as a stub so existing page action flows don't need re-wiring.
  if (!kIsWeb) return;
  return;
}

// 9-2-2026
// Future injectPaygilantWebSdk(
//   String subdomain,
//   String clientKey,
// ) async {
//   // Add your function code here!
//   if (!kIsWeb) return; // mobile uses the plugin
//   if (html.document.getElementById('pg-web-sdk') != null) return; // once only

//   // Bridge shim (push + poll) → localStorage.
//   html.document.head!.append(html.ScriptElement()
//     ..id = 'pg-web-sdk-shim'
//     ..type = 'text/javascript'
//     ..text = '''
//       (function(){
//         function store(id){ if(id && id!=='no_session_id'){ try{localStorage.setItem('pg_fms_sid',id);}catch(e){} } }
//         window.sfCallback=function(id){store(id);};
//         var n=0,iv=setInterval(function(){n++;if(typeof window.sfGetSessionId==='function'){store(window.sfGetSessionId());}if(n>60)clearInterval(iv);},500);
//       })();
//     ''');

//   // Paygilant loader.
//   html.document.head!.append(html.ScriptElement()
//     ..id = 'pg-web-sdk'
//     ..type = 'text/javascript'
//     ..async = true
//     ..src = 'https://$subdomain/$clientKey/main.js'
//         '?r=${Random().nextDouble()}&t=${DateTime.now().millisecondsSinceEpoch}');
// }
