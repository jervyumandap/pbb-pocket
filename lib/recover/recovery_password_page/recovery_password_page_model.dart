import '/backend/api_requests/api_calls.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recovery_password_page_widget.dart' show RecoveryPasswordPageWidget;
import 'package:flutter/material.dart';

class RecoveryPasswordPageModel
    extends FlutterFlowModel<RecoveryPasswordPageWidget> {
  ///  Local state fields for this page.

  String? dateOfBirthValue;

  bool usernameCompleted = false;

  bool accountNumberCompleted = false;

  bool emailCompleted = false;

  bool birthdateCompleted = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Username-TextField widget.
  FocusNode? usernameTextFieldFocusNode;
  TextEditingController? usernameTextFieldTextController;
  String? Function(BuildContext, String?)?
      usernameTextFieldTextControllerValidator;
  // State field(s) for Account-Number-TextField widget.
  FocusNode? accountNumberTextFieldFocusNode;
  TextEditingController? accountNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      accountNumberTextFieldTextControllerValidator;
  // State field(s) for Email-TextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // Model for CustomDateLabelPickerWidget component.
  late CustomDateLabelPickerWidgetModel customDateLabelPickerWidgetModel;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (Retail Auth Password Recovery Initiate)] action in Validate-Button widget.
  ApiCallResponse? passwordRecoveryResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customDateLabelPickerWidgetModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    usernameTextFieldFocusNode?.dispose();
    usernameTextFieldTextController?.dispose();

    accountNumberTextFieldFocusNode?.dispose();
    accountNumberTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    customDateLabelPickerWidgetModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
