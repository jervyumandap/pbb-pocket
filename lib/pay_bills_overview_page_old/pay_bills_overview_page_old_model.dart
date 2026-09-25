import '/backend/api_requests/api_calls.dart';
import '/bills_payment/confirm_bills_payment_component/confirm_bills_payment_component_widget.dart';
import '/components/favorite_tile_component/favorite_tile_component_widget.dart';
import '/components/image_with_text_column_component/image_with_text_column_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import '/index.dart';
import 'pay_bills_overview_page_old_widget.dart'
    show PayBillsOverviewPageOldWidget;
import 'package:flutter/material.dart';

class PayBillsOverviewPageOldModel
    extends FlutterFlowModel<PayBillsOverviewPageOldWidget> {
  ///  Local state fields for this page.

  String paymentBillState = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel1;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel2;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel3;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel4;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel5;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel6;
  // Model for FavoriteTileComponent component.
  late FavoriteTileComponentModel favoriteTileComponentModel7;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Model for ImageWithTextColumnComponent component.
  late ImageWithTextColumnComponentModel imageWithTextColumnComponentModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for ConfirmBillsPaymentComponent component.
  late ConfirmBillsPaymentComponentModel confirmBillsPaymentComponentModel;

  /// Query cache managers for this widget.

  final _getBillerCategoriesQuery2Manager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> getBillerCategoriesQuery2({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _getBillerCategoriesQuery2Manager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetBillerCategoriesQuery2Cache() =>
      _getBillerCategoriesQuery2Manager.clear();
  void clearGetBillerCategoriesQuery2CacheKey(String? uniqueKey) =>
      _getBillerCategoriesQuery2Manager.clearRequest(uniqueKey);

  @override
  void initState(BuildContext context) {
    favoriteTileComponentModel1 =
        createModel(context, () => FavoriteTileComponentModel());
    favoriteTileComponentModel2 =
        createModel(context, () => FavoriteTileComponentModel());
    favoriteTileComponentModel3 =
        createModel(context, () => FavoriteTileComponentModel());
    favoriteTileComponentModel4 =
        createModel(context, () => FavoriteTileComponentModel());
    favoriteTileComponentModel5 =
        createModel(context, () => FavoriteTileComponentModel());
    favoriteTileComponentModel6 =
        createModel(context, () => FavoriteTileComponentModel());
    favoriteTileComponentModel7 =
        createModel(context, () => FavoriteTileComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    imageWithTextColumnComponentModel =
        createModel(context, () => ImageWithTextColumnComponentModel());
    confirmBillsPaymentComponentModel =
        createModel(context, () => ConfirmBillsPaymentComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    favoriteTileComponentModel1.dispose();
    favoriteTileComponentModel2.dispose();
    favoriteTileComponentModel3.dispose();
    favoriteTileComponentModel4.dispose();
    favoriteTileComponentModel5.dispose();
    favoriteTileComponentModel6.dispose();
    favoriteTileComponentModel7.dispose();
    mobileNavigationBarModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    imageWithTextColumnComponentModel.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    confirmBillsPaymentComponentModel.dispose();

    /// Dispose query cache managers for this widget.

    clearGetBillerCategoriesQuery2Cache();
  }
}
