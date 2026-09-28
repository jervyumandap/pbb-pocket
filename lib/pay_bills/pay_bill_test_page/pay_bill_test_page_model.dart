import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pay_bill_test_page_widget.dart' show PayBillTestPageWidget;
import 'package:flutter/material.dart';

class PayBillTestPageModel extends FlutterFlowModel<PayBillTestPageWidget> {
  ///  Local state fields for this page.

  List<WBSavedBillerStruct> savebillers = [];
  void addToSavebillers(WBSavedBillerStruct item) => savebillers.add(item);
  void removeFromSavebillers(WBSavedBillerStruct item) =>
      savebillers.remove(item);
  void removeAtIndexFromSavebillers(int index) => savebillers.removeAt(index);
  void insertAtIndexInSavebillers(int index, WBSavedBillerStruct item) =>
      savebillers.insert(index, item);
  void updateSavebillersAtIndex(
          int index, Function(WBSavedBillerStruct) updateFn) =>
      savebillers[index] = updateFn(savebillers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Saved Billers List)] action in PayBillTestPage widget.
  ApiCallResponse? apiResultgmh;
  // Stores action output result for [Custom Action - makeScreenshotAndShare] action in IconButton widget.
  bool? ssOutput;
  // State field(s) for Biometric-Switch widget.
  bool? biometricSwitchValue1;
  // State field(s) for Biometric-Switch widget.
  bool? biometricSwitchValue2;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode;
  TextEditingController? billerTextFieldTextController;
  String? Function(BuildContext, String?)?
      billerTextFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    billerTextFieldFocusNode?.dispose();
    billerTextFieldTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();
  }
}
