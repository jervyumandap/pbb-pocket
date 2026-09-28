import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recovery_entry_page_widget.dart' show RecoveryEntryPageWidget;
import 'package:flutter/material.dart';

class RecoveryEntryPageModel extends FlutterFlowModel<RecoveryEntryPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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
