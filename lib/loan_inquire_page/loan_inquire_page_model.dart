import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loan_inquire_page_widget.dart' show LoanInquirePageWidget;
import 'package:flutter/material.dart';

class LoanInquirePageModel extends FlutterFlowModel<LoanInquirePageWidget> {
  ///  Local state fields for this page.

  bool isYesSelected = true;

  bool isNoSelected = true;

  List<RadioSelectedItemStruct> itemSelection = [];
  void addToItemSelection(RadioSelectedItemStruct item) =>
      itemSelection.add(item);
  void removeFromItemSelection(RadioSelectedItemStruct item) =>
      itemSelection.remove(item);
  void removeAtIndexFromItemSelection(int index) =>
      itemSelection.removeAt(index);
  void insertAtIndexInItemSelection(int index, RadioSelectedItemStruct item) =>
      itemSelection.insert(index, item);
  void updateItemSelectionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      itemSelection[index] = updateFn(itemSelection[index]);

  LoanInquireAccountStruct? selectedAccount;
  void updateSelectedAccountStruct(
      Function(LoanInquireAccountStruct) updateFn) {
    updateFn(selectedAccount ??= LoanInquireAccountStruct());
  }

  bool isNotSelectedAccount = true;

  String? selectedLoanType;

  bool isInvalid = true;

  InquireLoanSelectedStruct? selectedValue;
  void updateSelectedValueStruct(Function(InquireLoanSelectedStruct) updateFn) {
    updateFn(selectedValue ??= InquireLoanSelectedStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Stores action output result for [Backend Call - API (Retail Loan Inquire SR)] action in Button widget.
  ApiCallResponse? loanInquireAPI;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
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

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
  }

  /// Action blocks.
  Future getSelection(BuildContext context) async {
    itemSelection = [];
    addToItemSelection(RadioSelectedItemStruct(
      isSelected: false,
      selectedItem: 'Auto Loan',
    ));
    selectedLoanType = 'Auto Loan';
    addToItemSelection(RadioSelectedItemStruct(
      isSelected: false,
      selectedItem: 'Housing Loan',
    ));
    addToItemSelection(RadioSelectedItemStruct(
      isSelected: false,
      selectedItem: 'Makaguro Loan',
    ));
  }
}
