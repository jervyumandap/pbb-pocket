import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transaction_limit_item_component/transaction_limit_item_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'transaction_limits_page_widget.dart' show TransactionLimitsPageWidget;
import 'package:flutter/material.dart';

class TransactionLimitsPageModel
    extends FlutterFlowModel<TransactionLimitsPageWidget> {
  ///  Local state fields for this page.

  List<LimitsStruct> fetchedTransactionLimits = [];
  void addToFetchedTransactionLimits(LimitsStruct item) =>
      fetchedTransactionLimits.add(item);
  void removeFromFetchedTransactionLimits(LimitsStruct item) =>
      fetchedTransactionLimits.remove(item);
  void removeAtIndexFromFetchedTransactionLimits(int index) =>
      fetchedTransactionLimits.removeAt(index);
  void insertAtIndexInFetchedTransactionLimits(int index, LimitsStruct item) =>
      fetchedTransactionLimits.insert(index, item);
  void updateFetchedTransactionLimitsAtIndex(
          int index, Function(LimitsStruct) updateFn) =>
      fetchedTransactionLimits[index] =
          updateFn(fetchedTransactionLimits[index]);

  List<PatchLimitBodyStruct> patchLimitBody = [];
  void addToPatchLimitBody(PatchLimitBodyStruct item) =>
      patchLimitBody.add(item);
  void removeFromPatchLimitBody(PatchLimitBodyStruct item) =>
      patchLimitBody.remove(item);
  void removeAtIndexFromPatchLimitBody(int index) =>
      patchLimitBody.removeAt(index);
  void insertAtIndexInPatchLimitBody(int index, PatchLimitBodyStruct item) =>
      patchLimitBody.insert(index, item);
  void updatePatchLimitBodyAtIndex(
          int index, Function(PatchLimitBodyStruct) updateFn) =>
      patchLimitBody[index] = updateFn(patchLimitBody[index]);

  List<PatchLimitBodyStruct> updatedList = [];
  void addToUpdatedList(PatchLimitBodyStruct item) => updatedList.add(item);
  void removeFromUpdatedList(PatchLimitBodyStruct item) =>
      updatedList.remove(item);
  void removeAtIndexFromUpdatedList(int index) => updatedList.removeAt(index);
  void insertAtIndexInUpdatedList(int index, PatchLimitBodyStruct item) =>
      updatedList.insert(index, item);
  void updateUpdatedListAtIndex(
          int index, Function(PatchLimitBodyStruct) updateFn) =>
      updatedList[index] = updateFn(updatedList[index]);

  PatchLimitBodyStruct? existingItem;
  void updateExistingItemStruct(Function(PatchLimitBodyStruct) updateFn) {
    updateFn(existingItem ??= PatchLimitBodyStruct());
  }

  bool isLoading = true;

  bool? onSubmit = false;

  bool isTextFieldInvalid = false;

  int? resetKey = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Settings Transaction Limits)] action in TransactionLimitsPage widget.
  ApiCallResponse? getTransactionLimitsResponse;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Models for TransactionLimitItemComponent dynamic component.
  late FlutterFlowDynamicModels<TransactionLimitItemComponentModel>
      transactionLimitItemComponentModels;
  // Stores action output result for [Backend Call - API (Retail Settings Transaction Limits)] action in Button widget.
  ApiCallResponse? getTransactionLimitsResponseV2;
  // Stores action output result for [Backend Call - API (Limits Challenge)] action in Button widget.
  ApiCallResponse? apiResultyq5;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Button widget.
  CreateConfirmSigningPKResultStruct? fundTransferConfirmSigningPKPayload;
  // Stores action output result for [Backend Call - API (Limits Challenge Confirm Passkey)] action in Button widget.
  ApiCallResponse? confirmPasskey;
  // Stores action output result for [Custom Action - createSignature] action in Button widget.
  String? createSignatureOutput;
  // Stores action output result for [Backend Call - API (Limits Challenge Confirm)] action in Button widget.
  ApiCallResponse? confirm;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    transactionLimitItemComponentModels =
        FlutterFlowDynamicModels(() => TransactionLimitItemComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    transactionLimitItemComponentModels.dispose();
    loadingStateComponentModel.dispose();
    customWebAppBarModel.dispose();
  }
}
