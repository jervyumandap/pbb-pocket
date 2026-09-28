import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_mpin_page_widget.dart' show CreateMpinPageWidget;
import 'package:flutter/material.dart';

class CreateMpinPageModel extends FlutterFlowModel<CreateMpinPageWidget> {
  ///  Local state fields for this page.

  String? timerState;

  bool isLoading = false;

  bool isCreateMpinHide = true;

  bool isReEnterMpinHide = true;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Stores action output result for [Custom Action - retrieveStoredData] action in CreateMpinPage widget.
  String? retrievePublicKeyOutput;
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
  // Stores action output result for [Backend Call - API (Retail Settings Mpin Change)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinChangeResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Mpin Set)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinSetResponse;
  // Stores action output result for [Backend Call - API (Retail Auth Mpin Recovery Reset)] action in PrimaryButtonComponent widget.
  ApiCallResponse? mpinRecoveryResetResponse;
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
