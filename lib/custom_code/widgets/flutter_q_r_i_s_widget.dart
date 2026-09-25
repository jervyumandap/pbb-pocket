// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_qris/qris.dart';

import 'package:qr_flutter/qr_flutter.dart';

class FlutterQRISWidget extends StatefulWidget {
  const FlutterQRISWidget({
    super.key,
    this.width,
    this.height,
    required this.data,
  });

  final double? width;
  final double? height;
  final String data;

  @override
  State<FlutterQRISWidget> createState() => _FlutterQRISWidgetState();
}

class _FlutterQRISWidgetState extends State<FlutterQRISWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // QrImageView
      child: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              final qRISMPM = QRISMPM(widget.data);

              // EXAMPLE TO DEBUGING LOG
              qRISMPM.tlv.logDebugingTLV();
              debugPrint(qRISMPM.tlvtoMap(qRISMPM.tlv).toPrettyString());
              await Future.delayed(const Duration(milliseconds: 20));
              qRISMPM.additionalData.logDebugingAdditionalData();
              await Future.delayed(const Duration(milliseconds: 20));
              qRISMPM.transaction.logDebugingTip();
              await Future.delayed(const Duration(milliseconds: 20));
              qRISMPM.logDebugingCRC();
              await Future.delayed(const Duration(milliseconds: 20));
              qRISMPM.merchant.logDebugMerchant();
              await Future.delayed(const Duration(milliseconds: 20));
              qRISMPM.mcc.loglogDebugingMCC();
              await Future.delayed(const Duration(milliseconds: 20));
              qRISMPM.currency.logDebugingCurrency();
              await Future.delayed(const Duration(milliseconds: 20));

              // EXAMPLE TO USING DATA
              final pan = qRISMPM.merchant.pan;
              final currency = qRISMPM.currency.code;
              final qrisType = qRISMPM.pointOfInitiationMethod.name;

              debugPrint('PAN: $pan');
              debugPrint('Currency: $currency');
              debugPrint('QRIS Type: $qrisType');
            } on TLVException catch (e) {
              debugPrint(e.toString());
            } catch (e) {
              debugPrint(e.toString());
            }
          },
          child: Text('Decode QRIS Data'),
        ),
      ),
    );
  }
}
