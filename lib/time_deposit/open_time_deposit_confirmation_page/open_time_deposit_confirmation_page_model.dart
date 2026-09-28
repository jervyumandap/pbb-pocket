import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'open_time_deposit_confirmation_page_widget.dart'
    show OpenTimeDepositConfirmationPageWidget;
import 'package:flutter/material.dart';

class OpenTimeDepositConfirmationPageModel
    extends FlutterFlowModel<OpenTimeDepositConfirmationPageWidget> {
  ///  Local state fields for this page.

  ProductsStruct? selectedTDProduct;
  void updateSelectedTDProductStruct(Function(ProductsStruct) updateFn) {
    updateFn(selectedTDProduct ??= ProductsStruct());
  }

  String? selectedProductCode;

  String? id;

  String? challenge;

  ///  State fields for stateful widgets in this page.

  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // State field(s) for Policy-Checkbox widget.
  bool? policyCheckboxValue;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Retail Time Deposits Challenge)] action in PrimaryButtonComponent widget.
  ApiCallResponse? apiResulthdh;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in PrimaryButtonComponent widget.
  CreateConfirmSigningPKResultStruct? signingPKPayload;
  // Stores action output result for [Backend Call - API (Retail Time Deposits Confirm Passkey)] action in PrimaryButtonComponent widget.
  ApiCallResponse? tDConfirmOutputPasskey;
  // Stores action output result for [Custom Action - createSignature] action in PrimaryButtonComponent widget.
  String? createSignatureOutputV2;
  // Stores action output result for [Backend Call - API (Retail Time Deposits Confirm)] action in PrimaryButtonComponent widget.
  ApiCallResponse? tDConfirmOutput;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    primaryButtonComponentModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
