import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'report_problems_scam_or_phishing_widget.dart'
    show ReportProblemsScamOrPhishingWidget;
import 'package:flutter/material.dart';

class ReportProblemsScamOrPhishingModel
    extends FlutterFlowModel<ReportProblemsScamOrPhishingWidget> {
  ///  Local state fields for this page.

  ReportScamPhishingSelectedStruct? informationSelected;
  void updateInformationSelectedStruct(
      Function(ReportScamPhishingSelectedStruct) updateFn) {
    updateFn(informationSelected ??= ReportScamPhishingSelectedStruct());
  }

  bool isIssueNotSelected = true;

  bool isContactedNotSelected = true;

  bool isHappenedNotSelected = true;

  bool isInformationNotSelected = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for AdditionalDetails widget.
  FocusNode? additionalDetailsFocusNode;
  TextEditingController? additionalDetailsTextController;
  String? Function(BuildContext, String?)?
      additionalDetailsTextControllerValidator;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Report Suspicious Report)] action in Button widget.
  ApiCallResponse? apiResult1j3;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    additionalDetailsFocusNode?.dispose();
    additionalDetailsTextController?.dispose();

    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
