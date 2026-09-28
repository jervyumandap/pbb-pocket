import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/m_pin/pin_component/pin_component_widget.dart';
import '/index.dart';
import 'm_p_i_n_verify_device_delete_widget.dart'
    show MPINVerifyDeviceDeleteWidget;
import 'package:flutter/material.dart';

class MPINVerifyDeviceDeleteModel
    extends FlutterFlowModel<MPINVerifyDeviceDeleteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PinComponent component.
  late PinComponentModel pinComponentModel;
  // Stores action output result for [Backend Call - API (Retail Settings Device Remove Challenge)] action in PinComponent widget.
  ApiCallResponse? apiResultqiq;
  // Stores action output result for [Custom Action - createPcSignature] action in PinComponent widget.
  dynamic sig;
  // Stores action output result for [Backend Call - API (Retail Settings Device Remove Confirm)] action in PinComponent widget.
  ApiCallResponse? apiResult8xo;

  @override
  void initState(BuildContext context) {
    pinComponentModel = createModel(context, () => PinComponentModel());
  }

  @override
  void dispose() {
    pinComponentModel.dispose();
  }
}
