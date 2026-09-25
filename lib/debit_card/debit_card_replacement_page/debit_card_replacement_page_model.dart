import '/backend/api_requests/api_calls.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_text_field_component/primary_text_field_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'debit_card_replacement_page_widget.dart'
    show DebitCardReplacementPageWidget;
import 'package:flutter/material.dart';

class DebitCardReplacementPageModel
    extends FlutterFlowModel<DebitCardReplacementPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  bool isDateSelected = true;

  bool isChequeSelected = true;

  DateTime? fromDate;

  DateTime? toDate;

  List<String> reasonForReplacementList = [
    'Lost',
    'Stolen',
    'Expired',
    'Damaged'
  ];
  void addToReasonForReplacementList(String item) =>
      reasonForReplacementList.add(item);
  void removeFromReasonForReplacementList(String item) =>
      reasonForReplacementList.remove(item);
  void removeAtIndexFromReasonForReplacementList(int index) =>
      reasonForReplacementList.removeAt(index);
  void insertAtIndexInReasonForReplacementList(int index, String item) =>
      reasonForReplacementList.insert(index, item);
  void updateReasonForReplacementListAtIndex(
          int index, Function(String) updateFn) =>
      reasonForReplacementList[index] =
          updateFn(reasonForReplacementList[index]);

  int? selectedReasonIndex = 0;

  String? replacementReason;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponseCopy;
  // Stores action output result for [Backend Call - API (Retail Settings Device Register)] action in CustomMobileAppBar widget.
  ApiCallResponse? registerDeviceResponse;
  // Stores action output result for [Custom Action - getFCMToken] action in CustomMobileAppBar widget.
  String? fcmTokenOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Device Initiate Trust)] action in CustomMobileAppBar widget.
  ApiCallResponse? initTrustResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Devices List)] action in CustomMobileAppBar widget.
  ApiCallResponse? devicesResponse;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Card Number is required';
    }

    if (val.length < 16) {
      return 'Must be at least 16 digits';
    }
    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Model for AccountNameTextfield.
  late PrimaryTextFieldComponentModel accountNameTextfieldModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Validate Form] action in Password-Login widget.
  bool? validateForm;
  // Stores action output result for [Backend Call - API (Retail Card Replacement Requests)] action in Password-Login widget.
  ApiCallResponse? apiResultk9m;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    textController1Validator = _textController1Validator;
    accountNameTextfieldModel =
        createModel(context, () => PrimaryTextFieldComponentModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    accountNameTextfieldModel.textControllerValidator = _formTextFieldValidator;
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    customMobileAppBarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    accountNameTextfieldModel.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Account Name is required';
    }

    return null;
  }
}
