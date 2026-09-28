import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bills_payment_review_page_widget.dart'
    show BillsPaymentReviewPageWidget;
import 'package:flutter/material.dart';

class BillsPaymentReviewPageModel
    extends FlutterFlowModel<BillsPaymentReviewPageWidget> {
  ///  Local state fields for this page.

  BillsHeaderStruct? billsHeader;
  void updateBillsHeaderStruct(Function(BillsHeaderStruct) updateFn) {
    updateFn(billsHeader ??= BillsHeaderStruct());
  }

  BillsBodyStruct? billsBody;
  void updateBillsBodyStruct(Function(BillsBodyStruct) updateFn) {
    updateFn(billsBody ??= BillsBodyStruct());
  }

  String? paymentDate;

  String? paymentStartDate;

  int? numberOfPayments;

  HeaderStruct? otpHeader;
  void updateOtpHeaderStruct(Function(HeaderStruct) updateFn) {
    updateFn(otpHeader ??= HeaderStruct());
  }

  List<AddressesStruct> emailAddresses = [];
  void addToEmailAddresses(AddressesStruct item) => emailAddresses.add(item);
  void removeFromEmailAddresses(AddressesStruct item) =>
      emailAddresses.remove(item);
  void removeAtIndexFromEmailAddresses(int index) =>
      emailAddresses.removeAt(index);
  void insertAtIndexInEmailAddresses(int index, AddressesStruct item) =>
      emailAddresses.insert(index, item);
  void updateEmailAddressesAtIndex(
          int index, Function(AddressesStruct) updateFn) =>
      emailAddresses[index] = updateFn(emailAddresses[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Action Block - OTP] action in Button-Submit widget.
  String? oTPOutputV2;
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
