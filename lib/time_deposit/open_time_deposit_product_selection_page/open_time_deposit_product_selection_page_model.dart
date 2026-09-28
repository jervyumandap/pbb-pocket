import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/time_deposit/open_time_deposit_component/open_time_deposit_component_widget.dart';
import '/index.dart';
import 'open_time_deposit_product_selection_page_widget.dart'
    show OpenTimeDepositProductSelectionPageWidget;
import 'package:flutter/material.dart';

class OpenTimeDepositProductSelectionPageModel
    extends FlutterFlowModel<OpenTimeDepositProductSelectionPageWidget> {
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

  // Stores action output result for [Backend Call - API (Retail Time Deposit Products)] action in OpenTimeDepositProductSelectionPage widget.
  ApiCallResponse? apiResulthnv;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Models for openTimeDepositComponent dynamic component.
  late FlutterFlowDynamicModels<OpenTimeDepositComponentModel>
      openTimeDepositComponentModels;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    openTimeDepositComponentModels =
        FlutterFlowDynamicModels(() => OpenTimeDepositComponentModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    openTimeDepositComponentModels.dispose();
    primaryButtonComponentModel.dispose();
    loadingStateComponentModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
