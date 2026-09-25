import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'terms_and_condition_page_widget.dart' show TermsAndConditionPageWidget;
import 'package:flutter/material.dart';

class TermsAndConditionPageModel
    extends FlutterFlowModel<TermsAndConditionPageWidget> {
  ///  Local state fields for this page.

  bool isPasswordMatch = false;

  bool isFormValid = false;

  List<bool> pwValidator = [false, false, false, false, false];
  void addToPwValidator(bool item) => pwValidator.add(item);
  void removeFromPwValidator(bool item) => pwValidator.remove(item);
  void removeAtIndexFromPwValidator(int index) => pwValidator.removeAt(index);
  void insertAtIndexInPwValidator(int index, bool item) =>
      pwValidator.insert(index, item);
  void updatePwValidatorAtIndex(int index, Function(bool) updateFn) =>
      pwValidator[index] = updateFn(pwValidator[index]);

  bool? isUsernameAvailable;

  bool isUnpwMatch = false;

  ///  State fields for stateful widgets in this page.

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
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
