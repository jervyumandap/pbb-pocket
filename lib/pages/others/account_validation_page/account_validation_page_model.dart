import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/components/custom_date_label_picker_widget/custom_date_label_picker_widget_widget.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'account_validation_page_widget.dart' show AccountValidationPageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AccountValidationPageModel
    extends FlutterFlowModel<AccountValidationPageWidget> {
  ///  Local state fields for this page.

  String? dateOfBirthValue = '';

  bool isFormValidated = false;

  bool agreedToConditions = true;

  bool accountAlreadyRegistered = false;

  String? cifNumber = '';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField-Account-Number widget.
  FocusNode? textFieldAccountNumberFocusNode;
  TextEditingController? textFieldAccountNumberTextController;
  late MaskTextInputFormatter textFieldAccountNumberMask;
  String? Function(BuildContext, String?)?
      textFieldAccountNumberTextControllerValidator;
  // Model for CustomDateLabelPickerWidget component.
  late CustomDateLabelPickerWidgetModel customDateLabelPickerWidgetModel;
  DateTime? datePicked;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Stores action output result for [Validate Form] action in PrimaryButtonComponent widget.
  bool? formOutput;
  // Stores action output result for [Backend Call - API (Registration Initiate with Validation)] action in PrimaryButtonComponent widget.
  ApiCallResponse? registrationInitiateValidationResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customDateLabelPickerWidgetModel =
        createModel(context, () => CustomDateLabelPickerWidgetModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    textFieldAccountNumberFocusNode?.dispose();
    textFieldAccountNumberTextController?.dispose();

    customDateLabelPickerWidgetModel.dispose();
    primaryButtonComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }

  /// Action blocks.
  Future<ActionBlockReturnType?> accountVerification(
    BuildContext context, {
    required String? sessionToken,
  }) async {
    ApiCallResponse? registrationValidateAccountResponse;

    registrationValidateAccountResponse =
        await WhitebankGroupAPIGroup.registrationValidateAccountCall.call(
      personalDetailsJson: <String, dynamic>{},
      sessionToken: sessionToken,
    );

    if ((registrationValidateAccountResponse.succeeded ?? true)) {
      if (WhitebankGroupAPIGroup.registrationValidateAccountCall.isValid(
            (registrationValidateAccountResponse.jsonBody ?? ''),
          ) ==
          true) {
        return ActionBlockReturnType.success;
      }

      await showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: WebViewAware(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(dialogContext).unfocus();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: CustomInformationalDialogWidget(
                  message:
                      'The account information entered is not valid. Please check and try again.',
                  primaryButtonTitle: 'Dismiss',
                  title: 'Invalid account details',
                  primaryButtonAction: () async {
                    Navigator.pop(context);
                  },
                  secondaryButtonAction: () async {},
                ),
              ),
            ),
          );
        },
      );

      return ActionBlockReturnType.error;
    } else {
      await showDialog(
        context: context,
        builder: (dialogContext) {
          return Dialog(
            elevation: 0,
            insetPadding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            alignment: AlignmentDirectional(0.0, 0.0)
                .resolve(Directionality.of(context)),
            child: WebViewAware(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(dialogContext).unfocus();
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: CustomInformationalDialogWidget(
                  message:
                      'Please check your connection and try again. If the issue continues, contact support.',
                  primaryButtonTitle: 'Dismiss',
                  title: 'Something went wrong',
                  primaryButtonAction: () async {
                    Navigator.pop(context);
                  },
                  secondaryButtonAction: () async {},
                ),
              ),
            ),
          );
        },
      );

      return ActionBlockReturnType.error;
    }
  }
}
