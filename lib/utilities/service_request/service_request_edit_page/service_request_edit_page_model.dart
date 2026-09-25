import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'service_request_edit_page_widget.dart'
    show ServiceRequestEditPageWidget;
import 'package:flutter/material.dart';

class ServiceRequestEditPageModel
    extends FlutterFlowModel<ServiceRequestEditPageWidget> {
  ///  Local state fields for this page.

  bool isEditMode = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for textFieldRequestName widget.
  FocusNode? textFieldRequestNameFocusNode;
  TextEditingController? textFieldRequestNameTextController;
  String? Function(BuildContext, String?)?
      textFieldRequestNameTextControllerValidator;
  // State field(s) for textFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // State field(s) for textFieldContactNo widget.
  FocusNode? textFieldContactNoFocusNode;
  TextEditingController? textFieldContactNoTextController;
  String? Function(BuildContext, String?)?
      textFieldContactNoTextControllerValidator;
  // State field(s) for textFieldRequestType widget.
  FocusNode? textFieldRequestTypeFocusNode;
  TextEditingController? textFieldRequestTypeTextController;
  String? Function(BuildContext, String?)?
      textFieldRequestTypeTextControllerValidator;
  // State field(s) for textFieldRemarks widget.
  FocusNode? textFieldRemarksFocusNode;
  TextEditingController? textFieldRemarksTextController;
  String? Function(BuildContext, String?)?
      textFieldRemarksTextControllerValidator;
  bool isDataUploading_requestDocuments = false;
  List<FFUploadedFile> uploadedLocalFiles_requestDocuments = [];

  // State field(s) for textFieldRequestNameWeb widget.
  FocusNode? textFieldRequestNameWebFocusNode;
  TextEditingController? textFieldRequestNameWebTextController;
  String? Function(BuildContext, String?)?
      textFieldRequestNameWebTextControllerValidator;
  // State field(s) for textFieldEmailWeb widget.
  FocusNode? textFieldEmailWebFocusNode;
  TextEditingController? textFieldEmailWebTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailWebTextControllerValidator;
  // State field(s) for textFieldContactNoWeb widget.
  FocusNode? textFieldContactNoWebFocusNode;
  TextEditingController? textFieldContactNoWebTextController;
  String? Function(BuildContext, String?)?
      textFieldContactNoWebTextControllerValidator;
  // State field(s) for textFieldRequestTypeWeb widget.
  FocusNode? textFieldRequestTypeWebFocusNode;
  TextEditingController? textFieldRequestTypeWebTextController;
  String? Function(BuildContext, String?)?
      textFieldRequestTypeWebTextControllerValidator;
  // State field(s) for textFieldRemarksWeb widget.
  FocusNode? textFieldRemarksWebFocusNode;
  TextEditingController? textFieldRemarksWebTextController;
  String? Function(BuildContext, String?)?
      textFieldRemarksWebTextControllerValidator;
  bool isDataUploading_requestDocumentsDrag = false;
  List<FFUploadedFile> uploadedLocalFiles_requestDocumentsDrag = [];

  bool isDataUploading_requestDocumentsWeb = false;
  List<FFUploadedFile> uploadedLocalFiles_requestDocumentsWeb = [];

  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    textFieldRequestNameFocusNode?.dispose();
    textFieldRequestNameTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldContactNoFocusNode?.dispose();
    textFieldContactNoTextController?.dispose();

    textFieldRequestTypeFocusNode?.dispose();
    textFieldRequestTypeTextController?.dispose();

    textFieldRemarksFocusNode?.dispose();
    textFieldRemarksTextController?.dispose();

    textFieldRequestNameWebFocusNode?.dispose();
    textFieldRequestNameWebTextController?.dispose();

    textFieldEmailWebFocusNode?.dispose();
    textFieldEmailWebTextController?.dispose();

    textFieldContactNoWebFocusNode?.dispose();
    textFieldContactNoWebTextController?.dispose();

    textFieldRequestTypeWebFocusNode?.dispose();
    textFieldRequestTypeWebTextController?.dispose();

    textFieldRemarksWebFocusNode?.dispose();
    textFieldRemarksWebTextController?.dispose();

    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
