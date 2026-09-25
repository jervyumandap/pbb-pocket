import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/investment_empty_list_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'service_request_tracker_page_widget.dart'
    show ServiceRequestTrackerPageWidget;
import 'package:flutter/material.dart';

class ServiceRequestTrackerPageModel
    extends FlutterFlowModel<ServiceRequestTrackerPageWidget> {
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

  List<dynamic> balances = [];
  void addToBalances(dynamic item) => balances.add(item);
  void removeFromBalances(dynamic item) => balances.remove(item);
  void removeAtIndexFromBalances(int index) => balances.removeAt(index);
  void insertAtIndexInBalances(int index, dynamic item) =>
      balances.insert(index, item);
  void updateBalancesAtIndex(int index, Function(dynamic) updateFn) =>
      balances[index] = updateFn(balances[index]);

  bool isRequestLimitReached = false;

  List<DataStruct> serviceRequestTrackerState = [];
  void addToServiceRequestTrackerState(DataStruct item) =>
      serviceRequestTrackerState.add(item);
  void removeFromServiceRequestTrackerState(DataStruct item) =>
      serviceRequestTrackerState.remove(item);
  void removeAtIndexFromServiceRequestTrackerState(int index) =>
      serviceRequestTrackerState.removeAt(index);
  void insertAtIndexInServiceRequestTrackerState(int index, DataStruct item) =>
      serviceRequestTrackerState.insert(index, item);
  void updateServiceRequestTrackerStateAtIndex(
          int index, Function(DataStruct) updateFn) =>
      serviceRequestTrackerState[index] =
          updateFn(serviceRequestTrackerState[index]);

  String? statusCategory;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail  Service Request Tracker)] action in ServiceRequestTrackerPage widget.
  ApiCallResponse? apiResultw3r;
  // Model for investmentEmptyListComponent component.
  late InvestmentEmptyListComponentModel investmentEmptyListComponentModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel1;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (Retail  Service Request Tracker)] action in ChoiceChips widget.
  ApiCallResponse? apiResultww3r;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel2;

  @override
  void initState(BuildContext context) {
    investmentEmptyListComponentModel =
        createModel(context, () => InvestmentEmptyListComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel1 = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel2 = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    investmentEmptyListComponentModel.dispose();
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel1.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel2.dispose();
  }
}
