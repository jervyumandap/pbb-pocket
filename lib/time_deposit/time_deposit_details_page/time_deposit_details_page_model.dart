import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'time_deposit_details_page_widget.dart'
    show TimeDepositDetailsPageWidget;
import 'package:flutter/material.dart';

class TimeDepositDetailsPageModel
    extends FlutterFlowModel<TimeDepositDetailsPageWidget> {
  ///  Local state fields for this page.

  bool? isAmountHidden = false;

  AccountBalanceStruct? accountBalance;
  void updateAccountBalanceStruct(Function(AccountBalanceStruct) updateFn) {
    updateFn(accountBalance ??= AccountBalanceStruct());
  }

  bool isLoading = true;

  double? balance;

  TimeDepositComputationModelStruct? calculatedOutputDetails;
  void updateCalculatedOutputDetailsStruct(
      Function(TimeDepositComputationModelStruct) updateFn) {
    updateFn(calculatedOutputDetails ??= TimeDepositComputationModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - tdCalculateEarnings] action in TimeDepositDetailsPage widget.
  dynamic calculatedOutput;
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
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
