import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_view_page_widget.dart' show WebViewPageWidget;
import 'package:flutter/material.dart';

class WebViewPageModel extends FlutterFlowModel<WebViewPageWidget> {
  ///  Local state fields for this page.

  String datePickedValue = '10/06/2025';

  int? randomPin;

  bool loadingStatement = true;

  ///  State fields for stateful widgets in this page.

  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
  }
}
