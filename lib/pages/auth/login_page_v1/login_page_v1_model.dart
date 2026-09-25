import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_v1_widget.dart' show LoginPageV1Widget;
import 'package:flutter/material.dart';

class LoginPageV1Model extends FlutterFlowModel<LoginPageV1Widget> {
  ///  Local state fields for this page.

  String datePickedValue = '10/06/2025';

  int? randomPin;

  bool loadingStatement = true;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - checkRefreshToken] action in LoginPageV1 widget.
  String? outputToken;
  // Stores action output result for [Custom Action - readUsernameSecurely] action in LoginPageV1 widget.
  String? username;
  // Stores action output result for [Custom Action - getDeviceDetails] action in LoginPageV1 widget.
  dynamic deviceDetails;
  // Stores action output result for [Custom Action - readBiometricPreferenceSecurely] action in LoginPageV1 widget.
  bool? biometricPreference;
  // Stores action output result for [Custom Action - readUserIDSecurely] action in LoginPageV1 widget.
  String? userID;
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
  String? _textFieldPwTextControllerValidator(
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

  // Stores action output result for [Backend Call - API (Retail Login)] action in Mobile-Login-Button widget.
  ApiCallResponse? retailLoginResponse;
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

  // Stores action output result for [Backend Call - API (Retail Login)] action in Button-Login-Web widget.
  ApiCallResponse? retailLoginResponseWeb;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    textFieldPwVisibility = false;
    textFieldPwTextControllerValidator = _textFieldPwTextControllerValidator;
    textFieldPwWebVisibility = false;
    textFieldPwWebTextControllerValidator =
        _textFieldPwWebTextControllerValidator;
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    textFieldUsernameFocusNode?.dispose();
    textFieldUsernameTextController?.dispose();

    textFieldPwFocusNode?.dispose();
    textFieldPwTextController?.dispose();

    textFieldUsernameWebFocusNode?.dispose();
    textFieldUsernameWebTextController?.dispose();

    textFieldPwWebFocusNode?.dispose();
    textFieldPwWebTextController?.dispose();

    customMobileAppBarModel.dispose();
  }
}
