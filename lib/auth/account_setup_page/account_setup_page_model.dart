import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_setup_page_widget.dart' show AccountSetupPageWidget;
import 'package:flutter/material.dart';

class AccountSetupPageModel extends FlutterFlowModel<AccountSetupPageWidget> {
  ///  Local state fields for this page.

  bool passwordMatch = true;

  AccountsV2Struct? accountDataModel;
  void updateAccountDataModelStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(accountDataModel ??= AccountsV2Struct());
  }

  bool passwordIsNotSame = false;

  EmailDataTypeStruct? emailDatatype;
  void updateEmailDatatypeStruct(Function(EmailDataTypeStruct) updateFn) {
    updateFn(emailDatatype ??= EmailDataTypeStruct());
  }

  List<AddressesStruct> emailAddress = [];
  void addToEmailAddress(AddressesStruct item) => emailAddress.add(item);
  void removeFromEmailAddress(AddressesStruct item) =>
      emailAddress.remove(item);
  void removeAtIndexFromEmailAddress(int index) => emailAddress.removeAt(index);
  void insertAtIndexInEmailAddress(int index, AddressesStruct item) =>
      emailAddress.insert(index, item);
  void updateEmailAddressAtIndex(
          int index, Function(AddressesStruct) updateFn) =>
      emailAddress[index] = updateFn(emailAddress[index]);

  List<AttachmentStruct> attachment = [];
  void addToAttachment(AttachmentStruct item) => attachment.add(item);
  void removeFromAttachment(AttachmentStruct item) => attachment.remove(item);
  void removeAtIndexFromAttachment(int index) => attachment.removeAt(index);
  void insertAtIndexInAttachment(int index, AttachmentStruct item) =>
      attachment.insert(index, item);
  void updateAttachmentAtIndex(
          int index, Function(AttachmentStruct) updateFn) =>
      attachment[index] = updateFn(attachment[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Username widget.
  FocusNode? textFieldUsernameFocusNode;
  TextEditingController? textFieldUsernameTextController;
  String? Function(BuildContext, String?)?
      textFieldUsernameTextControllerValidator;
  String? _textFieldUsernameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required';
    }

    if (val.length < 6) {
      return 'Must be at least 6 characters long';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for TextField-Password widget.
  FocusNode? textFieldPasswordFocusNode;
  TextEditingController? textFieldPasswordTextController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldPasswordTextControllerValidator;
  String? _textFieldPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*\\d)(?=.*[!@#\$%^&*(),.?:{}|<>]).{8,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 8 characters long, \ninclude at least one uppercase \nletter and one special character.';
    }
    return null;
  }

  // State field(s) for TextField-Confirm-Password widget.
  FocusNode? textFieldConfirmPasswordFocusNode;
  TextEditingController? textFieldConfirmPasswordTextController;
  late bool textFieldConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfirmPasswordTextControllerValidator;
  String? _textFieldConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    if (!RegExp('^(?=.*[A-Z])(?=.*\\d)(?=.*[!@#\$%^&*(),.?:{}|<>]).{8,}\$')
        .hasMatch(val)) {
      return 'Password must be at least 8 characters long, \ninclude at least one uppercase \nletter and one special character.';
    }
    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Registration Create Credentials)] action in Button-Login widget.
  ApiCallResponse? registrationCreateCredentialsResponse;
  // Stores action output result for [Backend Call - API (Registration Status)] action in Button-Login widget.
  ApiCallResponse? registrationStatusResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    textFieldUsernameTextControllerValidator =
        _textFieldUsernameTextControllerValidator;
    textFieldPasswordVisibility = false;
    textFieldPasswordTextControllerValidator =
        _textFieldPasswordTextControllerValidator;
    textFieldConfirmPasswordVisibility = false;
    textFieldConfirmPasswordTextControllerValidator =
        _textFieldConfirmPasswordTextControllerValidator;
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    textFieldUsernameFocusNode?.dispose();
    textFieldUsernameTextController?.dispose();

    textFieldPasswordFocusNode?.dispose();
    textFieldPasswordTextController?.dispose();

    textFieldConfirmPasswordFocusNode?.dispose();
    textFieldConfirmPasswordTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }

  /// Action blocks.
  Future accountSetupActionBlock(BuildContext context) async {}
}
