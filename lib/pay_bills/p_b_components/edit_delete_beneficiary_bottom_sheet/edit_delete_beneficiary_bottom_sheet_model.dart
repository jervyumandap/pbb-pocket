import '/flutter_flow/flutter_flow_util.dart';
import 'edit_delete_beneficiary_bottom_sheet_widget.dart'
    show EditDeleteBeneficiaryBottomSheetWidget;
import 'package:flutter/material.dart';

class EditDeleteBeneficiaryBottomSheetModel
    extends FlutterFlowModel<EditDeleteBeneficiaryBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nickname-TextField widget.
  FocusNode? nicknameTextFieldFocusNode1;
  TextEditingController? nicknameTextFieldTextController1;
  String? Function(BuildContext, String?)?
      nicknameTextFieldTextController1Validator;
  // State field(s) for Nickname-TextField widget.
  FocusNode? nicknameTextFieldFocusNode2;
  TextEditingController? nicknameTextFieldTextController2;
  String? Function(BuildContext, String?)?
      nicknameTextFieldTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nicknameTextFieldFocusNode1?.dispose();
    nicknameTextFieldTextController1?.dispose();

    nicknameTextFieldFocusNode2?.dispose();
    nicknameTextFieldTextController2?.dispose();
  }
}
