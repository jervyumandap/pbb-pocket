import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_m_pin_page_widget.dart' show ChangeMPinPageWidget;
import 'package:flutter/material.dart';

class ChangeMPinPageModel extends FlutterFlowModel<ChangeMPinPageWidget> {
  ///  Local state fields for this page.

  String? timerState;

  bool isLoading = false;

  bool isCreateMpinHide = true;

  bool isReEnterMpinHide = true;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for MpinCode widget.
  TextEditingController? mpinCode;
  FocusNode? mpinCodeFocusNode;
  String? Function(BuildContext, String?)? mpinCodeValidator;
  // State field(s) for Confirm-MpinCode widget.
  TextEditingController? confirmMpinCode;
  FocusNode? confirmMpinCodeFocusNode;
  String? Function(BuildContext, String?)? confirmMpinCodeValidator;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Mpin Change Set New Pin)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinChangeSetNewPin;
  // Stores action output result for [Backend Call - API (Mpin Change Challenge)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinChangeChallenge;
  // Stores action output result for [Custom Action - createPcSignature] action in PrimaryButtonComponent widget.
  dynamic mpinChangeChallengeSignature;
  // Stores action output result for [Backend Call - API (Retail Settings Mpin Verify)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinChangeVerify;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    mpinCode = TextEditingController();
    confirmMpinCode = TextEditingController();
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    mpinCodeFocusNode?.dispose();
    mpinCode?.dispose();

    confirmMpinCodeFocusNode?.dispose();
    confirmMpinCode?.dispose();

    primaryButtonComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
