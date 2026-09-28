import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/saved_biller_item_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'bills_payment_page_v2_widget.dart' show BillsPaymentPageV2Widget;
import 'package:flutter/material.dart';

class BillsPaymentPageV2Model
    extends FlutterFlowModel<BillsPaymentPageV2Widget> {
  ///  Local state fields for this page.

  BillerInfoStruct? selectedBiller;
  void updateSelectedBillerStruct(Function(BillerInfoStruct) updateFn) {
    updateFn(selectedBiller ??= BillerInfoStruct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (OauthToken)] action in BillsPaymentPageV2 widget.
  ApiCallResponse? billersTokenResponse;
  // State field(s) for Biller-DropDown widget.
  String? billerDropDownValue;
  FormFieldController<String>? billerDropDownValueController;
  // Model for SavedBillerItemComponent component.
  late SavedBillerItemComponentModel savedBillerItemComponentModel1;
  // Model for SavedBillerItemComponent component.
  late SavedBillerItemComponentModel savedBillerItemComponentModel2;
  // Model for SavedBillerItemComponent component.
  late SavedBillerItemComponentModel savedBillerItemComponentModel3;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    savedBillerItemComponentModel1 =
        createModel(context, () => SavedBillerItemComponentModel());
    savedBillerItemComponentModel2 =
        createModel(context, () => SavedBillerItemComponentModel());
    savedBillerItemComponentModel3 =
        createModel(context, () => SavedBillerItemComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    savedBillerItemComponentModel1.dispose();
    savedBillerItemComponentModel2.dispose();
    savedBillerItemComponentModel3.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
