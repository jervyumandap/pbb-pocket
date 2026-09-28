import '/backend/api_requests/api_calls.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  String datePickedValue = '10/06/2025';

  int? randomPin;

  bool loadingStatement = true;

  DateTime? tokenExpirationDateTime;

  bool headerCollapsed = false;

  bool? isLoginValid = true;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - checkRefreshToken] action in LoginPage widget.
  String? outputToken;
  // Stores action output result for [Custom Action - readUsernameSecurely] action in LoginPage widget.
  String? username;
  // Stores action output result for [Custom Action - readBiometricPreferenceSecurely] action in LoginPage widget.
  bool? biometricPreference;
  // Stores action output result for [Custom Action - readUserIDSecurely] action in LoginPage widget.
  String? userID;
  // Stores action output result for [Custom Action - retrieveStoredData] action in LoginPage widget.
  String? retrievedUsernameForPK;
  // State field(s) for TextField-Username widget.
  FocusNode? textFieldUsernameFocusNode;
  TextEditingController? textFieldUsernameTextController;
  String? Function(BuildContext, String?)?
      textFieldUsernameTextControllerValidator;
  // State field(s) for TextField-Pw widget.
  FocusNode? textFieldPwFocusNode;
  TextEditingController? textFieldPwTextController;
  late bool textFieldPwVisibility;
  String? Function(BuildContext, String?)? textFieldPwTextControllerValidator;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Custom Action - getFCMToken] action in PrimaryButtonComponent widget.
  String? fcmTokenOutput;
  // Stores action output result for [Custom Action - getPaygilantSession] action in PrimaryButtonComponent widget.
  String? getPaygilantSessionOutput2;
  // Stores action output result for [Backend Call - API (Retail Login)] action in PrimaryButtonComponent widget.
  ApiCallResponse? retailLoginResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in PrimaryButtonComponent widget.
  ApiCallResponse? getProfileResponse;
  // Stores action output result for [Custom Action - getPaygilantSession] action in Passkey-Login-Button widget.
  String? getPaygilantSessionPkOutput;
  // Stores action output result for [Custom Action - passkeyAuthVerifyPayload] action in Passkey-Login-Button widget.
  dynamic passkeyAuthVerifyPayload;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Auth)] action in Passkey-Login-Button widget.
  ApiCallResponse? passkeyAuthResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in Passkey-Login-Button widget.
  ApiCallResponse? pKGetProfileResponse;
  // State field(s) for TextField-Username-Web widget.
  FocusNode? textFieldUsernameWebFocusNode;
  TextEditingController? textFieldUsernameWebTextController;
  String? Function(BuildContext, String?)?
      textFieldUsernameWebTextControllerValidator;
  // State field(s) for TextField-Pw-Web widget.
  FocusNode? textFieldPwWebFocusNode;
  TextEditingController? textFieldPwWebTextController;
  late bool textFieldPwWebVisibility;
  String? Function(BuildContext, String?)?
      textFieldPwWebTextControllerValidator;
  String? _textFieldPwWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required.';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Custom Action - getFCMToken] action in Button-Login-Web widget.
  String? fcmTokenOutputCopy;
  // Stores action output result for [Custom Action - getPaygilantSession] action in Button-Login-Web widget.
  String? getPaygilantSessionOutputWeb;
  // Stores action output result for [Backend Call - API (Retail Login)] action in Button-Login-Web widget.
  ApiCallResponse? retailLoginResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in Button-Login-Web widget.
  ApiCallResponse? getProfileResponseCopy;
  // Stores action output result for [Custom Action - getPaygilantSession] action in Button-Passkey-Login-Web widget.
  String? getPaygilantSessionPk2Output;
  // Stores action output result for [Custom Action - passkeyAuthVerifyPayload] action in Button-Passkey-Login-Web widget.
  dynamic passkeyAuthVerifyPayloadCopy;
  // Stores action output result for [Backend Call - API (Retail Verify Passkey Auth)] action in Button-Passkey-Login-Web widget.
  ApiCallResponse? passkeyAuthResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Settings Profile Details)] action in Button-Passkey-Login-Web widget.
  ApiCallResponse? pKGetProfileResponseCopy;

  @override
  void initState(BuildContext context) {
    textFieldPwVisibility = false;
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    textFieldPwWebVisibility = false;
    textFieldPwWebTextControllerValidator =
        _textFieldPwWebTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldUsernameFocusNode?.dispose();
    textFieldUsernameTextController?.dispose();

    textFieldPwFocusNode?.dispose();
    textFieldPwTextController?.dispose();

    primaryButtonComponentModel.dispose();
    textFieldUsernameWebFocusNode?.dispose();
    textFieldUsernameWebTextController?.dispose();

    textFieldPwWebFocusNode?.dispose();
    textFieldPwWebTextController?.dispose();
  }
}
