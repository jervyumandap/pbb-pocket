import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user_profile_page_widget.dart' show UserProfilePageWidget;
import 'package:flutter/material.dart';

class UserProfilePageModel extends FlutterFlowModel<UserProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel1;
  // Stores action output result for [Backend Call - API (Retail Kill Switch Activate Confirm)] action in Row widget.
  ApiCallResponse? apiResultu85;
  // Stores action output result for [Custom Action - createSignature] action in Row widget.
  String? createSignatureOutput;
  // Stores action output result for [Backend Call - API (Retail Kill Switch Activate Confirm Passkey)] action in Row widget.
  ApiCallResponse? apiResultu85de;
  // Stores action output result for [Action Block - CreateConfirmSigningPKPayload] action in Row widget.
  CreateConfirmSigningPKResultStruct? fTSchedConfirmSigningPKPayload;
  // Stores action output result for [Backend Call - API (Retail Kill Switch Activate Challenge)] action in Row widget.
  ApiCallResponse? apiResultvwh;
  // Stores action output result for [Backend Call - API (Retail Logout)] action in Button widget.
  ApiCallResponse? logoutResponse;
  // Stores action output result for [Custom Action - paygilantLogout] action in Button widget.
  String? paygilantLogoutOutput;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel2;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel1 =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    mobileNavigationBarModel2 =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel1.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
    mobileNavigationBarModel2.dispose();
  }
}
