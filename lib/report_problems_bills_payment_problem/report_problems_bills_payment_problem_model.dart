import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'report_problems_bills_payment_problem_widget.dart'
    show ReportProblemsBillsPaymentProblemWidget;
import 'package:flutter/material.dart';

class ReportProblemsBillsPaymentProblemModel
    extends FlutterFlowModel<ReportProblemsBillsPaymentProblemWidget> {
  ///  Local state fields for this page.

  ReportBillsPaymentSelectedStruct? informationSelected;
  void updateInformationSelectedStruct(
      Function(ReportBillsPaymentSelectedStruct) updateFn) {
    updateFn(informationSelected ??= ReportBillsPaymentSelectedStruct());
  }

  bool isIssueNotSelected = true;

  bool isTransferTypeNotSelected = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for AdditionalDetails widget.
  FocusNode? additionalDetailsFocusNode;
  TextEditingController? additionalDetailsTextController;
  String? Function(BuildContext, String?)?
      additionalDetailsTextControllerValidator;
  // Stores action output result for [Backend Call - API (Retail Report Suspicious Report)] action in Button widget.
  ApiCallResponse? apiResult1j3;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

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
