import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'activity_history_widget.dart' show ActivityHistoryWidget;
import 'package:flutter/material.dart';

class ActivityHistoryModel extends FlutterFlowModel<ActivityHistoryWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<DataActHisStruct> userActivity = [];
  void addToUserActivity(DataActHisStruct item) => userActivity.add(item);
  void removeFromUserActivity(DataActHisStruct item) =>
      userActivity.remove(item);
  void removeAtIndexFromUserActivity(int index) => userActivity.removeAt(index);
  void insertAtIndexInUserActivity(int index, DataActHisStruct item) =>
      userActivity.insert(index, item);
  void updateUserActivityAtIndex(
          int index, Function(DataActHisStruct) updateFn) =>
      userActivity[index] = updateFn(userActivity[index]);

  List<LoginHistoryStruct> loginHistory = [];
  void addToLoginHistory(LoginHistoryStruct item) => loginHistory.add(item);
  void removeFromLoginHistory(LoginHistoryStruct item) =>
      loginHistory.remove(item);
  void removeAtIndexFromLoginHistory(int index) => loginHistory.removeAt(index);
  void insertAtIndexInLoginHistory(int index, LoginHistoryStruct item) =>
      loginHistory.insert(index, item);
  void updateLoginHistoryAtIndex(
          int index, Function(LoginHistoryStruct) updateFn) =>
      loginHistory[index] = updateFn(loginHistory[index]);

  ///  State fields for stateful widgets in this page.

  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // State field(s) for History widget.
  TabController? historyController;
  int get historyCurrentIndex =>
      historyController != null ? historyController!.index : 0;
  int get historyPreviousIndex =>
      historyController != null ? historyController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    historyController?.dispose();
  }

  /// Action blocks.
  Future getActivityHistory(BuildContext context) async {
    ApiCallResponse? apiResulty9y;

    apiResulty9y = await WhitebankGroupAPIGroup.retailSettingsActivityCall.call(
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
      take: 20,
    );

    if ((apiResulty9y.succeeded ?? true)) {
      userActivity = (getJsonField(
        (apiResulty9y.jsonBody ?? ''),
        r'''$.data''',
        true,
      )!
              .toList()
              .map<DataActHisStruct?>(DataActHisStruct.maybeFromMap)
              .toList() as Iterable<DataActHisStruct?>)
          .withoutNulls
          .toList()
          .cast<DataActHisStruct>();
    }
  }

  Future getLoginHistory(BuildContext context) async {
    ApiCallResponse? apiResult597;

    apiResult597 =
        await WhitebankGroupAPIGroup.retailSettingsLoginHistoryCall.call(
      page: 1,
      take: 20,
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
    );

    if ((apiResult597.succeeded ?? true)) {
      loginHistory = (getJsonField(
        (apiResult597.jsonBody ?? ''),
        r'''$.data''',
        true,
      )!
              .toList()
              .map<LoginHistoryStruct?>(LoginHistoryStruct.maybeFromMap)
              .toList() as Iterable<LoginHistoryStruct?>)
          .withoutNulls
          .toList()
          .cast<LoginHistoryStruct>();
    }
  }
}
