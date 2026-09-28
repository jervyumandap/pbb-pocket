import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'biller_bottom_sheet_widget.dart' show BillerBottomSheetWidget;
import 'package:flutter/material.dart';

class BillerBottomSheetModel extends FlutterFlowModel<BillerBottomSheetWidget> {
  ///  Local state fields for this component.

  FrequentBillerDataModelStruct? selectedBiller;
  void updateSelectedBillerStruct(
      Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(selectedBiller ??= FrequentBillerDataModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Action Block - OauthToken] action in BillerBottomSheet widget.
  String? billersOauthToken;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered5 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered6 = false;

  /// Query cache managers for this widget.

  final _billerListQueryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> billerListQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _billerListQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBillerListQueryCache() => _billerListQueryManager.clear();
  void clearBillerListQueryCacheKey(String? uniqueKey) =>
      _billerListQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();

    /// Dispose query cache managers for this widget.

    clearBillerListQueryCache();
  }
}
