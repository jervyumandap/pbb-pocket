import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'blank_page_c_widget.dart' show BlankPageCWidget;
import 'package:flutter/material.dart';

class BlankPageCModel extends FlutterFlowModel<BlankPageCWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
  }
}
