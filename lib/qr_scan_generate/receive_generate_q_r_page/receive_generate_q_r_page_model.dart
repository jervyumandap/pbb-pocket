import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'receive_generate_q_r_page_widget.dart' show ReceiveGenerateQRPageWidget;
import 'package:flutter/material.dart';

class ReceiveGenerateQRPageModel
    extends FlutterFlowModel<ReceiveGenerateQRPageWidget> {
  ///  Local state fields for this page.

  AccountsStruct? selectedAccount;
  void updateSelectedAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(selectedAccount ??= AccountsStruct());
  }

  double? amountEntered;

  bool isLoading = false;

  dynamic requestBody;

  ///  State fields for stateful widgets in this page.

  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Custom Action - makeScreenshotAndShare] action in Share-Button widget.
  bool? ssOutput;
  // Stores action output result for [Custom Action - makeScreenshot] action in Save-Button widget.
  FFUploadedFile? pbbfile;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
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
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
