import '/backend/schema/structs/index.dart';
import '/components/card_widget/card_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'term_deposit_edit_page_widget.dart' show TermDepositEditPageWidget;
import 'package:flutter/material.dart';

class TermDepositEditPageModel
    extends FlutterFlowModel<TermDepositEditPageWidget> {
  ///  Local state fields for this page.

  bool isConfirmation = false;

  bool isLoading = true;

  DateTime? maturityDate;

  double? maturityValue = 0.0;

  AccountsV2Struct? senderAccount;
  void updateSenderAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(senderAccount ??= AccountsV2Struct());
  }

  DepositAccountModelStruct? recipientAccount;
  void updateRecipientAccountStruct(
      Function(DepositAccountModelStruct) updateFn) {
    updateFn(recipientAccount ??= DepositAccountModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - OauthToken] action in TermDepositEditPage widget.
  String? oAuthToken;
  // Model for CardWidget component.
  late CardWidgetModel cardWidgetModel;
  // State field(s) for dropdownIPF widget.
  int? dropdownIPFValue;
  FormFieldController<int>? dropdownIPFValueController;
  // State field(s) for dropdownTerm widget.
  int? dropdownTermValue;
  FormFieldController<int>? dropdownTermValueController;
  // State field(s) for txtFieldAmountWeb widget.
  FocusNode? txtFieldAmountWebFocusNode;
  TextEditingController? txtFieldAmountWebTextController;
  String? Function(BuildContext, String?)?
      txtFieldAmountWebTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for dropdownIPFweb widget.
  int? dropdownIPFwebValue;
  FormFieldController<int>? dropdownIPFwebValueController;
  // State field(s) for dropdownTermWeb widget.
  int? dropdownTermWebValue;
  FormFieldController<int>? dropdownTermWebValueController;
  // Stores action output result for [Action Block - OTP] action in btnSubmitWeb widget.
  String? otpVerification;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cardWidgetModel = createModel(context, () => CardWidgetModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    cardWidgetModel.dispose();
    txtFieldAmountWebFocusNode?.dispose();
    txtFieldAmountWebTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
