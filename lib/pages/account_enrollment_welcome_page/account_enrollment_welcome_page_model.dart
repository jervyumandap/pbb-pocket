import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_enrollment_welcome_page_widget.dart'
    show AccountEnrollmentWelcomePageWidget;
import 'package:flutter/material.dart';

class AccountEnrollmentWelcomePageModel
    extends FlutterFlowModel<AccountEnrollmentWelcomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    primaryButtonComponentModel.dispose();
    customWebAppBarModel.dispose();
  }
}
