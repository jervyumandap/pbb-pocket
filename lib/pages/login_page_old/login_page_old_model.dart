import '/auth/biometric_option_component/biometric_option_component_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/image_component/image_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/m_pin/m_pinor_password_component/m_pinor_password_component_widget.dart';
import '/index.dart';
import 'login_page_old_widget.dart' show LoginPageOldWidget;
import 'package:flutter/material.dart';

class LoginPageOldModel extends FlutterFlowModel<LoginPageOldWidget> {
  ///  Local state fields for this page.

  String datePickedValue = '10/06/2025';

  int? randomPin;

  bool loadingStatement = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - checkRefreshToken] action in LoginPageOld widget.
  String? outputToken;
  // Stores action output result for [Custom Action - readUsernameSecurely] action in LoginPageOld widget.
  String? username;
  // Stores action output result for [Custom Action - getDeviceDetails] action in LoginPageOld widget.
  dynamic deviceDetails;
  // Stores action output result for [Custom Action - readBiometricPreferenceSecurely] action in LoginPageOld widget.
  bool? biometricPreference;
  // Stores action output result for [Custom Action - readUserIDSecurely] action in LoginPageOld widget.
  String? userID;
  // State field(s) for TextField-Un-Web widget.
  FocusNode? textFieldUnWebFocusNode;
  TextEditingController? textFieldUnWebTextController;
  String? Function(BuildContext, String?)?
      textFieldUnWebTextControllerValidator;
  String? _textFieldUnWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Invalid username';
    }
    return null;
  }

  // State field(s) for TextField-Pw-Web widget.
  FocusNode? textFieldPwWebFocusNode;
  TextEditingController? textFieldPwWebTextController;
  late bool textFieldPwWebVisibility;
  String? Function(BuildContext, String?)?
      textFieldPwWebTextControllerValidator;
  String? _textFieldPwWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (LoginUsingUsername)] action in Button-Web-Login widget.
  ApiCallResponse? loginResponse;
  // Model for ImageComponent component.
  late ImageComponentModel imageComponentModel;
  // Model for MPinorPasswordComponent component.
  late MPinorPasswordComponentModel mPinorPasswordComponentModel;
  // Model for BiometricOptionComponent component.
  late BiometricOptionComponentModel biometricOptionComponentModel;
  bool biometricOutput = false;
  // Stores action output result for [Action Block - getUserDeviceDetails] action in BiometricOptionComponent widget.
  String? accessToken;
  // Stores action output result for [Action Block - getUserDeviceDetails] action in Button widget.
  String? accessTokenv2;
  // Stores action output result for [Backend Call - API (GetUserCredentialsByID)] action in Button widget.
  ApiCallResponse? apiResult0jr3;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;

  @override
  void initState(BuildContext context) {
    textFieldUnWebTextControllerValidator =
        _textFieldUnWebTextControllerValidator;
    textFieldPwWebVisibility = false;
    textFieldPwWebTextControllerValidator =
        _textFieldPwWebTextControllerValidator;
    imageComponentModel = createModel(context, () => ImageComponentModel());
    mPinorPasswordComponentModel =
        createModel(context, () => MPinorPasswordComponentModel());
    biometricOptionComponentModel =
        createModel(context, () => BiometricOptionComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
  }

  @override
  void dispose() {
    textFieldUnWebFocusNode?.dispose();
    textFieldUnWebTextController?.dispose();

    textFieldPwWebFocusNode?.dispose();
    textFieldPwWebTextController?.dispose();

    imageComponentModel.dispose();
    mPinorPasswordComponentModel.dispose();
    biometricOptionComponentModel.dispose();
    loadingStateComponentModel.dispose();
  }
}
