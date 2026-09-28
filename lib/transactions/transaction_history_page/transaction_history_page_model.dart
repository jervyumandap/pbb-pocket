import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'transaction_history_page_widget.dart' show TransactionHistoryPageWidget;
import 'package:flutter/material.dart';

class TransactionHistoryPageModel
    extends FlutterFlowModel<TransactionHistoryPageWidget> {
  ///  Local state fields for this page.

  List<String> transactionCategories = [];
  void addToTransactionCategories(String item) =>
      transactionCategories.add(item);
  void removeFromTransactionCategories(String item) =>
      transactionCategories.remove(item);
  void removeAtIndexFromTransactionCategories(int index) =>
      transactionCategories.removeAt(index);
  void insertAtIndexInTransactionCategories(int index, String item) =>
      transactionCategories.insert(index, item);
  void updateTransactionCategoriesAtIndex(
          int index, Function(String) updateFn) =>
      transactionCategories[index] = updateFn(transactionCategories[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
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
