import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bills_payment_form_summary_page_widget.dart'
    show BillsPaymentFormSummaryPageWidget;
import 'package:flutter/material.dart';

class BillsPaymentFormSummaryPageModel
    extends FlutterFlowModel<BillsPaymentFormSummaryPageWidget> {
  ///  Local state fields for this page.

  double paymentAmount = 0.0;

  String? paymentDate;

  String? startPaymentDate;

  int? numberOfPayments;

  AccountsV2Struct? selectedSourceAccount;
  void updateSelectedSourceAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(selectedSourceAccount ??= AccountsV2Struct());
  }

  FrequentBillerDataModelStruct? selectedBiller;
  void updateSelectedBillerStruct(
      Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(selectedBiller ??= FrequentBillerDataModelStruct());
  }

  BillsHeaderStruct? billsHeader;
  void updateBillsHeaderStruct(Function(BillsHeaderStruct) updateFn) {
    updateFn(billsHeader ??= BillsHeaderStruct());
  }

  BillsBodyStruct? billsBody;
  void updateBillsBodyStruct(Function(BillsBodyStruct) updateFn) {
    updateFn(billsBody ??= BillsBodyStruct());
  }

  FMHeaderStruct? fmHeader;
  void updateFmHeaderStruct(Function(FMHeaderStruct) updateFn) {
    updateFn(fmHeader ??= FMHeaderStruct());
  }

  FMSessionStruct? fmSession;
  void updateFmSessionStruct(Function(FMSessionStruct) updateFn) {
    updateFn(fmSession ??= FMSessionStruct());
  }

  TransactionCheckpointDetailsStruct? fmTransaction;
  void updateFmTransactionStruct(
      Function(TransactionCheckpointDetailsStruct) updateFn) {
    updateFn(fmTransaction ??= TransactionCheckpointDetailsStruct());
  }

  DeviceInfoStruct? fmDeviceInfo;
  void updateFmDeviceInfoStruct(Function(DeviceInfoStruct) updateFn) {
    updateFn(fmDeviceInfo ??= DeviceInfoStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
