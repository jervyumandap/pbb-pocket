import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'verify_mpin_page_widget.dart' show VerifyMpinPageWidget;
import 'package:flutter/material.dart';

class VerifyMpinPageModel extends FlutterFlowModel<VerifyMpinPageWidget> {
  ///  Local state fields for this page.

  String? timerState;

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Current-MpinCode widget.
  TextEditingController? currentMpinCode;
  FocusNode? currentMpinCodeFocusNode;
  String? Function(BuildContext, String?)? currentMpinCodeValidator;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    currentMpinCode = TextEditingController();
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    currentMpinCodeFocusNode?.dispose();
    currentMpinCode?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
