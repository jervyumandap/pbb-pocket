import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cheque_deposit_confirm_page_widget.dart'
    show ChequeDepositConfirmPageWidget;
import 'package:flutter/material.dart';

class ChequeDepositConfirmPageModel
    extends FlutterFlowModel<ChequeDepositConfirmPageWidget> {
  ///  Local state fields for this page.

  ProductsStruct? selectedTDProduct;
  void updateSelectedTDProductStruct(Function(ProductsStruct) updateFn) {
    updateFn(selectedTDProduct ??= ProductsStruct());
  }

  String? selectedProductCode = '123123';

  String? id;

  TimeDepositProductsModelStruct? products;
  void updateProductsStruct(Function(TimeDepositProductsModelStruct) updateFn) {
    updateFn(products ??= TimeDepositProductsModelStruct());
  }

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Backend Call - API (Retail Chequebook Request Submit)] action in PrimaryButtonComponent widget.
  ApiCallResponse? chequebookRequestSubmitResponse;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
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
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    primaryButtonComponentModel.dispose();
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
