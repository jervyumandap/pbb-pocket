import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_new_password_page_widget.dart' show CreateNewPasswordPageWidget;
import 'package:flutter/material.dart';

class CreateNewPasswordPageModel
    extends FlutterFlowModel<CreateNewPasswordPageWidget> {
  ///  Local state fields for this page.

  List<bool> pwValidator = [false, false, false, false, false];
  void addToPwValidator(bool item) => pwValidator.add(item);
  void removeFromPwValidator(bool item) => pwValidator.remove(item);
  void removeAtIndexFromPwValidator(int index) => pwValidator.removeAt(index);
  void insertAtIndexInPwValidator(int index, bool item) =>
      pwValidator.insert(index, item);
  void updatePwValidatorAtIndex(int index, Function(bool) updateFn) =>
      pwValidator[index] = updateFn(pwValidator[index]);

  bool isPasswordMatch = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Current-Password-TextField widget.
  FocusNode? currentPasswordTextFieldFocusNode;
  TextEditingController? currentPasswordTextFieldTextController;
  late bool currentPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      currentPasswordTextFieldTextControllerValidator;
  // State field(s) for New-Password-TextField widget.
  FocusNode? newPasswordTextFieldFocusNode;
  TextEditingController? newPasswordTextFieldTextController;
  late bool newPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      newPasswordTextFieldTextControllerValidator;
  // State field(s) for Confirm-Password-TextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordChangeResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change Challenge)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordChangeChallenge;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in PrimaryButtonComponent widget.
  CreateConfirmSigningPKResultStruct? fundTransferConfirmSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change Confirm  Passkey)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordChangeConfirmResponsePasskey;
  // Stores action output result for [Custom Action - createSignature] action in PrimaryButtonComponent widget.
  String? createSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Password Change Confirm Challenge)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordChangeConfirmResponse;
  // Stores action output result for [Backend Call - API (Retail Auth Password Recovery Reset)] action in PrimaryButtonComponent widget.
  ApiCallResponse? passwordResetResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    currentPasswordTextFieldVisibility = false;
    newPasswordTextFieldVisibility = false;
    confirmPasswordTextFieldVisibility = false;
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    currentPasswordTextFieldFocusNode?.dispose();
    currentPasswordTextFieldTextController?.dispose();

    newPasswordTextFieldFocusNode?.dispose();
    newPasswordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    primaryButtonComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
