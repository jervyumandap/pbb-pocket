import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/select_payment_from_account/select_payment_from_account_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'generate_q_r_page_widget.dart' show GenerateQRPageWidget;
import 'package:flutter/material.dart';

class GenerateQRPageModel extends FlutterFlowModel<GenerateQRPageWidget> {
  ///  Local state fields for this page.

  String? generatedQRImagePath;

  PGSQRHeaderStruct? pgsqrHeader;
  void updatePgsqrHeaderStruct(Function(PGSQRHeaderStruct) updateFn) {
    updateFn(pgsqrHeader ??= PGSQRHeaderStruct());
  }

  PGSQRBodyStruct? pgsqrBody;
  void updatePgsqrBodyStruct(Function(PGSQRBodyStruct) updateFn) {
    updateFn(pgsqrBody ??= PGSQRBodyStruct());
  }

  AccountsV2Struct? selectedAccount;
  void updateSelectedAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(selectedAccount ??= AccountsV2Struct());
  }

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for SelectPaymentFromAccount component.
  late SelectPaymentFromAccountModel selectPaymentFromAccountModel;
  // State field(s) for TextField-Nickname widget.
  FocusNode? textFieldNicknameFocusNode;
  TextEditingController? textFieldNicknameTextController;
  String? Function(BuildContext, String?)?
      textFieldNicknameTextControllerValidator;
  // State field(s) for TextField-Amount widget.
  FocusNode? textFieldAmountFocusNode;
  TextEditingController? textFieldAmountTextController;
  String? Function(BuildContext, String?)?
      textFieldAmountTextControllerValidator;
  // Stores action output result for [Backend Call - API (OauthToken)] action in Button widget.
  ApiCallResponse? oauthTokenResponse;
  // Stores action output result for [Backend Call - API (Create QR Vii)] action in Button widget.
  ApiCallResponse? createQrResponse;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    selectPaymentFromAccountModel =
        createModel(context, () => SelectPaymentFromAccountModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    selectPaymentFromAccountModel.dispose();
    textFieldNicknameFocusNode?.dispose();
    textFieldNicknameTextController?.dispose();

    textFieldAmountFocusNode?.dispose();
    textFieldAmountTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
