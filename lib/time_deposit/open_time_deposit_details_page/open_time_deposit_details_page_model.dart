import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'open_time_deposit_details_page_widget.dart'
    show OpenTimeDepositDetailsPageWidget;
import 'package:flutter/material.dart';

class OpenTimeDepositDetailsPageModel
    extends FlutterFlowModel<OpenTimeDepositDetailsPageWidget> {
  ///  Local state fields for this page.

  double? amount;

  TimeDepositComputationModelStruct? timeDepositComputationOutput;
  void updateTimeDepositComputationOutputStruct(
      Function(TimeDepositComputationModelStruct) updateFn) {
    updateFn(
        timeDepositComputationOutput ??= TimeDepositComputationModelStruct());
  }

  AccountBalanceModelStruct? selectedAccount;
  void updateSelectedAccountStruct(
      Function(AccountBalanceModelStruct) updateFn) {
    updateFn(selectedAccount ??= AccountBalanceModelStruct());
  }

  int? selectedTerm;

  bool? isAmountInvalid = false;

  String? amountErrorMessage;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - tdCalculateEarnings] action in OpenTimeDepositDetailsPage widget.
  dynamic tdCalculatedEarningsOutputV2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // State field(s) for Tetxfield-Amount widget.
  FocusNode? tetxfieldAmountFocusNode;
  TextEditingController? tetxfieldAmountTextController;
  String? Function(BuildContext, String?)?
      tetxfieldAmountTextControllerValidator;
  // Stores action output result for [Custom Action - tdCalculateEarnings] action in Tetxfield-Amount widget.
  dynamic tdCalculatedEarningsOutput;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Custom Action - tdCalculateEarnings] action in ChoiceChips widget.
  dynamic tdCalculatedEarningsOutputs;
  // Stores action output result for [Custom Action - tdCalculateEarnings] action in TimeDepositTermContainer widget.
  dynamic tdCalculatedEarningsOutput2;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    tetxfieldAmountFocusNode?.dispose();
    tetxfieldAmountTextController?.dispose();

    primaryButtonComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
