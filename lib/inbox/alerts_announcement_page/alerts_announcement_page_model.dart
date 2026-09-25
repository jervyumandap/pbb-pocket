import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/filter_tags_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'alerts_announcement_page_widget.dart' show AlertsAnnouncementPageWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AlertsAnnouncementPageModel
    extends FlutterFlowModel<AlertsAnnouncementPageWidget> {
  ///  Local state fields for this page.

  List<String> filters = [''];
  void addToFilters(String item) => filters.add(item);
  void removeFromFilters(String item) => filters.remove(item);
  void removeAtIndexFromFilters(int index) => filters.removeAt(index);
  void insertAtIndexInFilters(int index, String item) =>
      filters.insert(index, item);
  void updateFiltersAtIndex(int index, Function(String) updateFn) =>
      filters[index] = updateFn(filters[index]);

  ///  State fields for stateful widgets in this page.

  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel1;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel2;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel3;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel4;
  // Model for FilterTagsComponent component.
  late FilterTagsComponentModel filterTagsComponentModel5;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  /// Query cache managers for this widget.

  final _retailInboxNotificationsQueryManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> retailInboxNotificationsQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _retailInboxNotificationsQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearRetailInboxNotificationsQueryCache() =>
      _retailInboxNotificationsQueryManager.clear();
  void clearRetailInboxNotificationsQueryCacheKey(String? uniqueKey) =>
      _retailInboxNotificationsQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    filterTagsComponentModel1 =
        createModel(context, () => FilterTagsComponentModel());
    filterTagsComponentModel2 =
        createModel(context, () => FilterTagsComponentModel());
    filterTagsComponentModel3 =
        createModel(context, () => FilterTagsComponentModel());
    filterTagsComponentModel4 =
        createModel(context, () => FilterTagsComponentModel());
    filterTagsComponentModel5 =
        createModel(context, () => FilterTagsComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    filterTagsComponentModel1.dispose();
    filterTagsComponentModel2.dispose();
    filterTagsComponentModel3.dispose();
    filterTagsComponentModel4.dispose();
    filterTagsComponentModel5.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();

    /// Dispose query cache managers for this widget.

    clearRetailInboxNotificationsQueryCache();
  }

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
