import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cheque_deposit_form_page_widget.dart' show ChequeDepositFormPageWidget;
import 'package:flutter/material.dart';

class ChequeDepositFormPageModel
    extends FlutterFlowModel<ChequeDepositFormPageWidget> {
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

  // Stores action output result for [Backend Call - API (Retail Time Deposit Products)] action in ChequeDepositFormPage widget.
  ApiCallResponse? apiResulthnv;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // State field(s) for Remarks-TextField widget.
  FocusNode? remarksTextFieldFocusNode;
  TextEditingController? remarksTextFieldTextController;
  String? Function(BuildContext, String?)?
      remarksTextFieldTextControllerValidator;
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
    remarksTextFieldFocusNode?.dispose();
    remarksTextFieldTextController?.dispose();

    primaryButtonComponentModel.dispose();
    loadingStateComponentModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
