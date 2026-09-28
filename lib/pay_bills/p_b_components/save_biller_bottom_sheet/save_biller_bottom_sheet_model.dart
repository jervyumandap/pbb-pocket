import '/flutter_flow/flutter_flow_util.dart';
import 'save_biller_bottom_sheet_widget.dart' show SaveBillerBottomSheetWidget;
import 'package:flutter/material.dart';

class SaveBillerBottomSheetModel
    extends FlutterFlowModel<SaveBillerBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Nickname-TextField-Mob widget.
  FocusNode? nicknameTextFieldMobFocusNode;
  TextEditingController? nicknameTextFieldMobTextController;
  String? Function(BuildContext, String?)?
      nicknameTextFieldMobTextControllerValidator;
  // State field(s) for Nickname-TextField-Web widget.
  FocusNode? nicknameTextFieldWebFocusNode;
  TextEditingController? nicknameTextFieldWebTextController;
  String? Function(BuildContext, String?)?
      nicknameTextFieldWebTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nicknameTextFieldMobFocusNode?.dispose();
    nicknameTextFieldMobTextController?.dispose();

    nicknameTextFieldWebFocusNode?.dispose();
    nicknameTextFieldWebTextController?.dispose();
  }
}
