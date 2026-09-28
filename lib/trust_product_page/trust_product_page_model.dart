import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/radio_button_container_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'trust_product_page_widget.dart' show TrustProductPageWidget;
import 'package:flutter/material.dart';

class TrustProductPageModel extends FlutterFlowModel<TrustProductPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  bool isDateSelected = true;

  bool isChequeSelected = true;

  DateTime? fromDate;

  DateTime? toDate;

  ///  State fields for stateful widgets in this page.

  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Settings Device Register)] action in CustomMobileAppBar widget.
  ApiCallResponse? registerDeviceResponse;
  // Stores action output result for [Custom Action - getFCMToken] action in CustomMobileAppBar widget.
  String? fcmTokenOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Devices List)] action in CustomMobileAppBar widget.
  ApiCallResponse? devicesResponse;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel1;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel2;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel3;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel4;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel5;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel6;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel7;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel8;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel9;
  // Model for RadioButtonContainerComponent component.
  late RadioButtonContainerComponentModel radioButtonContainerComponentModel10;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    radioButtonContainerComponentModel1 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel2 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel3 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel4 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel5 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel6 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel7 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel8 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel9 =
        createModel(context, () => RadioButtonContainerComponentModel());
    radioButtonContainerComponentModel10 =
        createModel(context, () => RadioButtonContainerComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    radioButtonContainerComponentModel1.dispose();
    radioButtonContainerComponentModel2.dispose();
    radioButtonContainerComponentModel3.dispose();
    radioButtonContainerComponentModel4.dispose();
    radioButtonContainerComponentModel5.dispose();
    radioButtonContainerComponentModel6.dispose();
    radioButtonContainerComponentModel7.dispose();
    radioButtonContainerComponentModel8.dispose();
    radioButtonContainerComponentModel9.dispose();
    radioButtonContainerComponentModel10.dispose();
    customWebAppBarModel.dispose();
  }
}
