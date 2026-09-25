import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/card_widget/card_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'manage_account_page_widget.dart' show ManageAccountPageWidget;
import 'package:flutter/material.dart';

class ManageAccountPageModel extends FlutterFlowModel<ManageAccountPageWidget> {
  ///  Local state fields for this page.

  bool isReorderInit = false;

  bool isReorderFinished = true;

  AccountsStruct? tempAccount;
  void updateTempAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(tempAccount ??= AccountsStruct());
  }

  List<String> accountNumbers = [];
  void addToAccountNumbers(String item) => accountNumbers.add(item);
  void removeFromAccountNumbers(String item) => accountNumbers.remove(item);
  void removeAtIndexFromAccountNumbers(int index) =>
      accountNumbers.removeAt(index);
  void insertAtIndexInAccountNumbers(int index, String item) =>
      accountNumbers.insert(index, item);
  void updateAccountNumbersAtIndex(int index, Function(String) updateFn) =>
      accountNumbers[index] = updateFn(accountNumbers[index]);

  bool isLoading = true;

  ///  State fields for stateful widgets in this page.

  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Stores action output result for [Custom Action - reorderItems] action in ListView widget.
  List<dynamic>? updatedList;
  // Models for CardWidget dynamic component.
  late FlutterFlowDynamicModels<CardWidgetModel> cardWidgetModels;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel1;
  // Stores action output result for [Backend Call - API (Account Card Reorder)] action in PrimaryButtonComponent widget.
  ApiCallResponse? apiResultk5h;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    cardWidgetModels = FlutterFlowDynamicModels(() => CardWidgetModel());
    primaryButtonComponentModel1 =
        createModel(context, () => PrimaryButtonComponentModel());
    primaryButtonComponentModel2 =
        createModel(context, () => PrimaryButtonComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    emptyListComponentModel.dispose();
    cardWidgetModels.dispose();
    primaryButtonComponentModel1.dispose();
    primaryButtonComponentModel2.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
