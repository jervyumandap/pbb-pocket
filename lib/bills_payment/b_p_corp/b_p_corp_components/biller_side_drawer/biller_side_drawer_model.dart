import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/bills_payment/biller_list_item_component/biller_list_item_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'biller_side_drawer_widget.dart' show BillerSideDrawerWidget;
import 'package:flutter/material.dart';

class BillerSideDrawerModel extends FlutterFlowModel<BillerSideDrawerWidget> {
  ///  Local state fields for this component.

  FrequentBillerDataModelStruct? selectedBiller;
  void updateSelectedBillerStruct(
      Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(selectedBiller ??= FrequentBillerDataModelStruct());
  }

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Action Block - OauthToken] action in BillerSideDrawer widget.
  String? billersOauthToken;
  bool isDataUploading_uploadedBillerQrcode = false;
  FFUploadedFile uploadedLocalFile_uploadedBillerQrcode =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

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
  // Models for BillerListItemComponent dynamic component.
  late FlutterFlowDynamicModels<BillerListItemComponentModel>
      billerListItemComponentModels;

  /// Query cache managers for this widget.

  final _billersInfoQueryManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> billersInfoQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _billersInfoQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearBillersInfoQueryCache() => _billersInfoQueryManager.clear();
  void clearBillersInfoQueryCacheKey(String? uniqueKey) =>
      _billersInfoQueryManager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    billerListItemComponentModels =
        FlutterFlowDynamicModels(() => BillerListItemComponentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    billerListItemComponentModels.dispose();

    /// Dispose query cache managers for this widget.

    clearBillersInfoQueryCache();
  }
}
