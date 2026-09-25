import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_credentials_page_widget.dart' show AccountCredentialsPageWidget;
import 'package:flutter/material.dart';

class AccountCredentialsPageModel
    extends FlutterFlowModel<AccountCredentialsPageWidget> {
  ///  Local state fields for this page.

  bool isPasswordMatch = false;

  bool isFormValid = false;

  List<bool> pwValidator = [false, false, false, false, false];
  void addToPwValidator(bool item) => pwValidator.add(item);
  void removeFromPwValidator(bool item) => pwValidator.remove(item);
  void removeAtIndexFromPwValidator(int index) => pwValidator.removeAt(index);
  void insertAtIndexInPwValidator(int index, bool item) =>
      pwValidator.insert(index, item);
  void updatePwValidatorAtIndex(int index, Function(bool) updateFn) =>
      pwValidator[index] = updateFn(pwValidator[index]);

  bool? isUsernameAvailable;

  bool isUnpwMatch = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Username-TextField widget.
  FocusNode? usernameTextFieldFocusNode;
  TextEditingController? usernameTextFieldTextController;
  String? Function(BuildContext, String?)?
      usernameTextFieldTextControllerValidator;
  String? _usernameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Username is already taken';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Registration Validate Username)] action in Username-TextField widget.
  ApiCallResponse? validateUsernameResponse;
  // Stores action output result for [Backend Call - API (Registration Validate Username)] action in Username-TextField widget.
  ApiCallResponse? validateUsernameResponse2;
  // State field(s) for Email-TextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for Password-TextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for Confirm-Password-TextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  // State field(s) for Policy-Checkbox widget.
  bool? policyCheckboxValue;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in PrimaryButtonComponent widget.
  dynamic deviceKeypairOutput;
  // Stores action output result for [Custom Action - getFCMToken] action in PrimaryButtonComponent widget.
  String? fcmTokenOutput;
  // Stores action output result for [Custom Action - getPaygilantSession] action in PrimaryButtonComponent widget.
  String? getPaygilantSessionOutput;
  // Stores action output result for [Backend Call - API (Registration Create Credentials)] action in PrimaryButtonComponent widget.
  ApiCallResponse? createCredentialsResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in PrimaryButtonComponent widget.
  ApiCallResponse? getProfileResponse;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Registration)] action in PrimaryButtonComponent widget.
  ApiCallResponse? pKVerifyRegistrationResponse2;
  // Stores action output result for [Custom Action - passkeyRegistrationVerifyPayload] action in PrimaryButtonComponent widget.
  dynamic pKRegistrationVerifyPayload2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    usernameTextFieldTextControllerValidator =
        _usernameTextFieldTextControllerValidator;
    passwordTextFieldVisibility = false;
    confirmPasswordTextFieldVisibility = false;
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    usernameTextFieldFocusNode?.dispose();
    usernameTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    primaryButtonComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
