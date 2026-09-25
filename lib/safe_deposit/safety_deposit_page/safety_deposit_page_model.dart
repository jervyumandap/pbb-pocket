import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'safety_deposit_page_widget.dart' show SafetyDepositPageWidget;
import 'package:flutter/material.dart';

class SafetyDepositPageModel extends FlutterFlowModel<SafetyDepositPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  bool isDateSelected = true;

  bool isChequeSelected = true;

  DateTime? fromDate;

  DateTime? toDate;

  List<String> mock = ['1', '2', '3', '4', '5'];
  void addToMock(String item) => mock.add(item);
  void removeFromMock(String item) => mock.remove(item);
  void removeAtIndexFromMock(int index) => mock.removeAt(index);
  void insertAtIndexInMock(int index, String item) => mock.insert(index, item);
  void updateMockAtIndex(int index, Function(String) updateFn) =>
      mock[index] = updateFn(mock[index]);

  SafetyDepositBoxBranchModelStruct? safetyBoxBranches;
  void updateSafetyBoxBranchesStruct(
      Function(SafetyDepositBoxBranchModelStruct) updateFn) {
    updateFn(safetyBoxBranches ??= SafetyDepositBoxBranchModelStruct());
  }

  List<String> listOfBoxSizes = [
    '3×5×20',
    '3×10×10',
    '3×10×16',
    '3×10×18',
    '3×10×20',
    '5×5×10',
    '5×5×20',
    '5×5×24',
    '5×10×12',
    '5×10×16',
    '5×10×20',
    '5×10×24',
    '10×10×6',
    '10×10×10',
    '10×10×16',
    '10×10×18',
    '10×10×20',
    '10×10×24'
  ];
  void addToListOfBoxSizes(String item) => listOfBoxSizes.add(item);
  void removeFromListOfBoxSizes(String item) => listOfBoxSizes.remove(item);
  void removeAtIndexFromListOfBoxSizes(int index) =>
      listOfBoxSizes.removeAt(index);
  void insertAtIndexInListOfBoxSizes(int index, String item) =>
      listOfBoxSizes.insert(index, item);
  void updateListOfBoxSizesAtIndex(int index, Function(String) updateFn) =>
      listOfBoxSizes[index] = updateFn(listOfBoxSizes[index]);

  int? selectedIndex;

  String? selectedBoxSize;

  bool isInvalidRequest = false;

  String? isInvalidRequestMessage;

  String? isInvalidRequestMessage2;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Safety Deposit Box Requests Branches)] action in SafetyDepositPage widget.
  ApiCallResponse? apiResult81m;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
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
  // Stores action output result for [Backend Call - API (Retail Safety Deposit Box Requests)] action in Password-Login widget.
  ApiCallResponse? apiResult444;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
