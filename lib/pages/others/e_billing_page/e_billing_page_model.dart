import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'e_billing_page_widget.dart' show EBillingPageWidget;
import 'package:flutter/material.dart';

class EBillingPageModel extends FlutterFlowModel<EBillingPageWidget> {
  ///  Local state fields for this page.

  bool hasGeneratedQr = false;

  ///  State fields for stateful widgets in this page.

  var qrScanOutput = '';
  // State field(s) for TextField-data widget.
  FocusNode? textFieldDataFocusNode;
  TextEditingController? textFieldDataTextController;
  String? Function(BuildContext, String?)? textFieldDataTextControllerValidator;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    textFieldDataFocusNode?.dispose();
    textFieldDataTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
