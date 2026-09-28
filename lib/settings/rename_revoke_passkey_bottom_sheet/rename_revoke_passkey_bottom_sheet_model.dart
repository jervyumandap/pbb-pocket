import '/flutter_flow/flutter_flow_util.dart';
import 'rename_revoke_passkey_bottom_sheet_widget.dart'
    show RenameRevokePasskeyBottomSheetWidget;
import 'package:flutter/material.dart';

class RenameRevokePasskeyBottomSheetModel
    extends FlutterFlowModel<RenameRevokePasskeyBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for New-Name-TextField widget.
  FocusNode? newNameTextFieldFocusNode;
  TextEditingController? newNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      newNameTextFieldTextControllerValidator;
  // State field(s) for New-Name2-TextField widget.
  FocusNode? newName2TextFieldFocusNode;
  TextEditingController? newName2TextFieldTextController;
  String? Function(BuildContext, String?)?
      newName2TextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    newNameTextFieldFocusNode?.dispose();
    newNameTextFieldTextController?.dispose();

    newName2TextFieldFocusNode?.dispose();
    newName2TextFieldTextController?.dispose();
  }
}
