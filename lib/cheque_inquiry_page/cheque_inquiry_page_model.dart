import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cheque_inquiry_page_widget.dart' show ChequeInquiryPageWidget;
import 'package:flutter/material.dart';

class ChequeInquiryPageModel extends FlutterFlowModel<ChequeInquiryPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  bool isDateSelected = true;

  bool isChequeSelected = true;

  DateTime? fromDate;

  DateTime? toDate;

  AccountModelStruct? selectedAccountCheque;
  void updateSelectedAccountChequeStruct(
      Function(AccountModelStruct) updateFn) {
    updateFn(selectedAccountCheque ??= AccountModelStruct());
  }

  bool toDateInvalid = true;

  bool fromDateInvalid = true;

  bool selectedAccountInvalid = true;

  bool isAccountSelected = true;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for FromDate.
  late CustomDateLabelPickerWidgetModel fromDateModel;
  DateTime? datePicked1;
  // Model for ToDate.
  late CustomDateLabelPickerWidgetModel toDateModel;
  DateTime? datePicked2;
  // State field(s) for chequeNumber widget.
  FocusNode? chequeNumberFocusNode;
  TextEditingController? chequeNumberTextController;
  String? Function(BuildContext, String?)? chequeNumberTextControllerValidator;
  String? _chequeNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter cheque number... is required';
    }

    if (val.length < 5) {
      return 'Cheque No. have 5 minimum characters';
    }
    if (val.length > 10) {
      return 'Cheque No. have 10 minimum characters';
    }
    if (!RegExp('^\\d+\$').hasMatch(val)) {
      return 'Invalid input.';
    }
    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? formFromDate;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formToDate;
  // Stores action output result for [Backend Call - API (Retail Cheque Inquiry)] action in Button widget.
  ApiCallResponse? apiResultglys;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formValidateCheque;
  // Stores action output result for [Backend Call - API (Retail Cheque Inquiry)] action in Button widget.
  ApiCallResponse? apiResultgly;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
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

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    fromDateModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    toDateModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    chequeNumberTextControllerValidator = _chequeNumberTextControllerValidator;
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    fromDateModel.dispose();
    toDateModel.dispose();
    chequeNumberFocusNode?.dispose();
    chequeNumberTextController?.dispose();

    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
  }
}
