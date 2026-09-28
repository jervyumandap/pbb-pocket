import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reusable_reset_page_widget.dart' show ReusableResetPageWidget;
import 'package:flutter/material.dart';

class ReusableResetPageModel extends FlutterFlowModel<ReusableResetPageWidget> {
  ///  Local state fields for this page.

  String? timerState;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Username-TextField widget.
  FocusNode? usernameTextFieldFocusNode;
  TextEditingController? usernameTextFieldTextController;
  String? Function(BuildContext, String?)?
      usernameTextFieldTextControllerValidator;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    usernameTextFieldFocusNode?.dispose();
    usernameTextFieldTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
