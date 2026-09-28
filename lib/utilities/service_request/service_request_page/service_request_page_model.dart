import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilities/service_request/components/service_request_item_component/service_request_item_component_widget.dart';
import '/index.dart';
import 'service_request_page_widget.dart' show ServiceRequestPageWidget;
import 'package:flutter/material.dart';

class ServiceRequestPageModel
    extends FlutterFlowModel<ServiceRequestPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for textFieldSearch widget.
  FocusNode? textFieldSearchFocusNode;
  TextEditingController? textFieldSearchTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchTextControllerValidator;
  // Model for ServiceRequestItemComponent component.
  late ServiceRequestItemComponentModel serviceRequestItemComponentModel1;
  // State field(s) for textFieldSearchWeb widget.
  FocusNode? textFieldSearchWebFocusNode;
  TextEditingController? textFieldSearchWebTextController;
  String? Function(BuildContext, String?)?
      textFieldSearchWebTextControllerValidator;
  // Model for ServiceRequestItemComponent component.
  late ServiceRequestItemComponentModel serviceRequestItemComponentModel2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    serviceRequestItemComponentModel1 =
        createModel(context, () => ServiceRequestItemComponentModel());
    serviceRequestItemComponentModel2 =
        createModel(context, () => ServiceRequestItemComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    textFieldSearchFocusNode?.dispose();
    textFieldSearchTextController?.dispose();

    serviceRequestItemComponentModel1.dispose();
    textFieldSearchWebFocusNode?.dispose();
    textFieldSearchWebTextController?.dispose();

    serviceRequestItemComponentModel2.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
