import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cheque_inquiry_charge_widget.dart' show ChequeInquiryChargeWidget;
import 'package:flutter/material.dart';

class ChequeInquiryChargeModel
    extends FlutterFlowModel<ChequeInquiryChargeWidget> {
  ///  Local state fields for this component.

  String? selectedIReason;

  List<StopChequeReasonsStruct> reasons = [];
  void addToReasons(StopChequeReasonsStruct item) => reasons.add(item);
  void removeFromReasons(StopChequeReasonsStruct item) => reasons.remove(item);
  void removeAtIndexFromReasons(int index) => reasons.removeAt(index);
  void insertAtIndexInReasons(int index, StopChequeReasonsStruct item) =>
      reasons.insert(index, item);
  void updateReasonsAtIndex(
          int index, Function(StopChequeReasonsStruct) updateFn) =>
      reasons[index] = updateFn(reasons[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
