import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'recovery_username_page_widget.dart' show RecoveryUsernamePageWidget;
import 'package:flutter/material.dart';

class RecoveryUsernamePageModel
    extends FlutterFlowModel<RecoveryUsernamePageWidget> {
  ///  Local state fields for this page.

  String? dateOfBirthValue;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Account-Number-TextField widget.
  FocusNode? accountNumberTextFieldFocusNode;
  TextEditingController? accountNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      accountNumberTextFieldTextControllerValidator;
  // State field(s) for ID-TextField widget.
  FocusNode? iDTextFieldFocusNode;
  TextEditingController? iDTextFieldTextController;
  String? Function(BuildContext, String?)? iDTextFieldTextControllerValidator;
  // Model for CustomDateLabelPickerWidget component.
  late CustomDateLabelPickerWidgetModel customDateLabelPickerWidgetModel;
  DateTime? datePicked;
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
    accountNumberTextFieldFocusNode?.dispose();
    accountNumberTextFieldTextController?.dispose();

    iDTextFieldFocusNode?.dispose();
    iDTextFieldTextController?.dispose();

    customDateLabelPickerWidgetModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
