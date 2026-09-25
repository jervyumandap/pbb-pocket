import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/empty_list_component_widget.dart';
import '/components/favorite_biller_component_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pay_bills/p_b_components/biller_tile_component/biller_tile_component_widget.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'dart:async';
import 'pay_bills_page_widget.dart' show PayBillsPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PayBillsPageModel extends FlutterFlowModel<PayBillsPageWidget> {
  ///  Local state fields for this page.

  BbPageViewSelection? selectedTab = BbPageViewSelection.BILLERS;

  WBBPSubmitParametersStruct? submitBody;
  void updateSubmitBodyStruct(Function(WBBPSubmitParametersStruct) updateFn) {
    updateFn(submitBody ??= WBBPSubmitParametersStruct());
  }

  /// Could be biller or saved biller
  WBBillerStruct? selectedBiller;
  void updateSelectedBillerStruct(Function(WBBillerStruct) updateFn) {
    updateFn(selectedBiller ??= WBBillerStruct());
  }

  AccountsStruct? sourceAccount;
  void updateSourceAccountStruct(Function(AccountsStruct) updateFn) {
    updateFn(sourceAccount ??= AccountsStruct());
  }

  String accountNumberLabel = 'Account Number';

  List<WBFetchedBillerStruct> listOfBillers = [];
  void addToListOfBillers(WBFetchedBillerStruct item) =>
      listOfBillers.add(item);
  void removeFromListOfBillers(WBFetchedBillerStruct item) =>
      listOfBillers.remove(item);
  void removeAtIndexFromListOfBillers(int index) =>
      listOfBillers.removeAt(index);
  void insertAtIndexInListOfBillers(int index, WBFetchedBillerStruct item) =>
      listOfBillers.insert(index, item);
  void updateListOfBillersAtIndex(
          int index, Function(WBFetchedBillerStruct) updateFn) =>
      listOfBillers[index] = updateFn(listOfBillers[index]);

  bool isGetBillersLoading = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Models for FavoriteBillerComponent dynamic component.
  late FlutterFlowDynamicModels<FavoriteBillerComponentModel>
      favoriteBillerComponentModels;
  // State field(s) for Biller-TextField widget.
  FocusNode? billerTextFieldFocusNode;
  TextEditingController? billerTextFieldTextController;
  String? Function(BuildContext, String?)?
      billerTextFieldTextControllerValidator;
  // State field(s) for Biller-TextField2 widget.
  FocusNode? billerTextField2FocusNode;
  TextEditingController? billerTextField2TextController;
  String? Function(BuildContext, String?)?
      billerTextField2TextControllerValidator;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // State field(s) for AccountNum-TextField widget.
  FocusNode? accountNumTextFieldFocusNode;
  TextEditingController? accountNumTextFieldTextController;
  late MaskTextInputFormatter accountNumTextFieldMask;
  String? Function(BuildContext, String?)?
      accountNumTextFieldTextControllerValidator;
  // State field(s) for AccountName-TextField widget.
  FocusNode? accountNameTextFieldFocusNode;
  TextEditingController? accountNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      accountNameTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Retail Bills Payment Validate Biller Account)] action in Next-Button widget.
  ApiCallResponse? validateBillerResponse;
  // Models for BillerTileComponent dynamic component.
  late FlutterFlowDynamicModels<BillerTileComponentModel>
      billerTileComponentModels;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Stores action output result for [Backend Call - API (Retail Saved Biller Update)] action in BillerTileComponent widget.
  ApiCallResponse? billerUpdateResponse;
  // Stores action output result for [Backend Call - API (Retail Saved Biller Delete)] action in BillerTileComponent widget.
  ApiCallResponse? billerDeleteResponse;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  /// Query cache managers for this widget.

  final _savedBillersQueryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> savedBillersQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _savedBillersQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearSavedBillersQueryCache() => _savedBillersQueryManager.clear();
  void clearSavedBillersQueryCacheKey(String? uniqueKey) =>
      _savedBillersQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    favoriteBillerComponentModels =
        FlutterFlowDynamicModels(() => FavoriteBillerComponentModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    billerTileComponentModels =
        FlutterFlowDynamicModels(() => BillerTileComponentModel());
    emptyListComponentModel =
        createModel(context, () => EmptyListComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    favoriteBillerComponentModels.dispose();
    billerTextFieldFocusNode?.dispose();
    billerTextFieldTextController?.dispose();

    billerTextField2FocusNode?.dispose();
    billerTextField2TextController?.dispose();

    loadingStateComponentModel.dispose();
    accountNumTextFieldFocusNode?.dispose();
    accountNumTextFieldTextController?.dispose();

    accountNameTextFieldFocusNode?.dispose();
    accountNameTextFieldTextController?.dispose();

    billerTileComponentModels.dispose();
    emptyListComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearSavedBillersQueryCache();
  }

  /// Action blocks.
  Future getBillerList(BuildContext context) async {
    ApiCallResponse? apiResultwf0;

    apiResultwf0 =
        await WhitebankGroupAPIGroup.retailBillsPaymentBillersCall.call(
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
    );

    if ((apiResultwf0.succeeded ?? true)) {
      listOfBillers = (getJsonField(
        (apiResultwf0.jsonBody ?? ''),
        r'''$.billers''',
        true,
      )!
              .toList()
              .map<WBFetchedBillerStruct?>(WBFetchedBillerStruct.maybeFromMap)
              .toList() as Iterable<WBFetchedBillerStruct?>)
          .withoutNulls
          .sortedList(keyOf: (e) => e.name, desc: false)
          .toList()
          .cast<WBFetchedBillerStruct>();
    }
  }

  Future getSavedBillers(BuildContext context) async {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
