import '/backend/schema/structs/index.dart';
import '/components/card_widget_medium/card_widget_medium_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'bills_payment_form_review_page_widget.dart'
    show BillsPaymentFormReviewPageWidget;
import 'package:flutter/material.dart';

class BillsPaymentFormReviewPageModel
    extends FlutterFlowModel<BillsPaymentFormReviewPageWidget> {
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
  // Model for CardWidgetMedium component.
  late CardWidgetMediumModel cardWidgetMediumModel;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode1;
  TextEditingController? billerTextFieldTextController1;
  String? Function(BuildContext, String?)?
      billerTextFieldTextController1Validator;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode2;
  TextEditingController? billerTextFieldTextController2;
  String? Function(BuildContext, String?)?
      billerTextFieldTextController2Validator;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode3;
  TextEditingController? billerTextFieldTextController3;
  String? Function(BuildContext, String?)?
      billerTextFieldTextController3Validator;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode4;
  TextEditingController? billerTextFieldTextController4;
  String? Function(BuildContext, String?)?
      billerTextFieldTextController4Validator;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode5;
  TextEditingController? billerTextFieldTextController5;
  String? Function(BuildContext, String?)?
      billerTextFieldTextController5Validator;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode6;
  TextEditingController? billerTextFieldTextController6;
  String? Function(BuildContext, String?)?
      billerTextFieldTextController6Validator;
  // State field(s) for Reference-Num-TextField widget.
  FocusNode? referenceNumTextFieldFocusNode1;
  TextEditingController? referenceNumTextFieldTextController1;
  String? Function(BuildContext, String?)?
      referenceNumTextFieldTextController1Validator;
  // State field(s) for Reference-Num-TextField widget.
  FocusNode? referenceNumTextFieldFocusNode2;
  TextEditingController? referenceNumTextFieldTextController2;
  String? Function(BuildContext, String?)?
      referenceNumTextFieldTextController2Validator;
  // State field(s) for Payment-Amount-TextField widget.
  FocusNode? paymentAmountTextFieldFocusNode1;
  TextEditingController? paymentAmountTextFieldTextController1;
  String? Function(BuildContext, String?)?
      paymentAmountTextFieldTextController1Validator;
  // State field(s) for Payment-Amount-TextField widget.
  FocusNode? paymentAmountTextFieldFocusNode2;
  TextEditingController? paymentAmountTextFieldTextController2;
  String? Function(BuildContext, String?)?
      paymentAmountTextFieldTextController2Validator;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cardWidgetMediumModel = createModel(context, () => CardWidgetMediumModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    cardWidgetMediumModel.dispose();
    billerTextFieldFocusNode1?.dispose();
    billerTextFieldTextController1?.dispose();

    billerTextFieldFocusNode2?.dispose();
    billerTextFieldTextController2?.dispose();

    billerTextFieldFocusNode3?.dispose();
    billerTextFieldTextController3?.dispose();

    billerTextFieldFocusNode4?.dispose();
    billerTextFieldTextController4?.dispose();

    billerTextFieldFocusNode5?.dispose();
    billerTextFieldTextController5?.dispose();

    billerTextFieldFocusNode6?.dispose();
    billerTextFieldTextController6?.dispose();

    referenceNumTextFieldFocusNode1?.dispose();
    referenceNumTextFieldTextController1?.dispose();

    referenceNumTextFieldFocusNode2?.dispose();
    referenceNumTextFieldTextController2?.dispose();

    paymentAmountTextFieldFocusNode1?.dispose();
    paymentAmountTextFieldTextController1?.dispose();

    paymentAmountTextFieldFocusNode2?.dispose();
    paymentAmountTextFieldTextController2?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
