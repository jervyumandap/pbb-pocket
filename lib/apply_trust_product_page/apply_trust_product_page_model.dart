import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'apply_trust_product_page_widget.dart' show ApplyTrustProductPageWidget;
import 'package:flutter/material.dart';

class ApplyTrustProductPageModel
    extends FlutterFlowModel<ApplyTrustProductPageWidget> {
  ///  Local state fields for this page.

  LoanInquireAccountStruct? selectedAccount;
  void updateSelectedAccountStruct(
      Function(LoanInquireAccountStruct) updateFn) {
    updateFn(selectedAccount ??= LoanInquireAccountStruct());
  }

  bool isNotSelectedAccount = true;

  List<RadioSelectedItemStruct> nationalityOption = [];
  void addToNationalityOption(RadioSelectedItemStruct item) =>
      nationalityOption.add(item);
  void removeFromNationalityOption(RadioSelectedItemStruct item) =>
      nationalityOption.remove(item);
  void removeAtIndexFromNationalityOption(int index) =>
      nationalityOption.removeAt(index);
  void insertAtIndexInNationalityOption(
          int index, RadioSelectedItemStruct item) =>
      nationalityOption.insert(index, item);
  void updateNationalityOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      nationalityOption[index] = updateFn(nationalityOption[index]);

  List<RadioSelectedItemStruct> fundsOption = [];
  void addToFundsOption(RadioSelectedItemStruct item) => fundsOption.add(item);
  void removeFromFundsOption(RadioSelectedItemStruct item) =>
      fundsOption.remove(item);
  void removeAtIndexFromFundsOption(int index) => fundsOption.removeAt(index);
  void insertAtIndexInFundsOption(int index, RadioSelectedItemStruct item) =>
      fundsOption.insert(index, item);
  void updateFundsOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      fundsOption[index] = updateFn(fundsOption[index]);

  List<RadioSelectedItemStruct> investmentOption = [];
  void addToInvestmentOption(RadioSelectedItemStruct item) =>
      investmentOption.add(item);
  void removeFromInvestmentOption(RadioSelectedItemStruct item) =>
      investmentOption.remove(item);
  void removeAtIndexFromInvestmentOption(int index) =>
      investmentOption.removeAt(index);
  void insertAtIndexInInvestmentOption(
          int index, RadioSelectedItemStruct item) =>
      investmentOption.insert(index, item);
  void updateInvestmentOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      investmentOption[index] = updateFn(investmentOption[index]);

  List<RadioSelectedItemStruct> horizonOption = [];
  void addToHorizonOption(RadioSelectedItemStruct item) =>
      horizonOption.add(item);
  void removeFromHorizonOption(RadioSelectedItemStruct item) =>
      horizonOption.remove(item);
  void removeAtIndexFromHorizonOption(int index) =>
      horizonOption.removeAt(index);
  void insertAtIndexInHorizonOption(int index, RadioSelectedItemStruct item) =>
      horizonOption.insert(index, item);
  void updateHorizonOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      horizonOption[index] = updateFn(horizonOption[index]);

  List<RadioSelectedItemStruct> allocationOption = [];
  void addToAllocationOption(RadioSelectedItemStruct item) =>
      allocationOption.add(item);
  void removeFromAllocationOption(RadioSelectedItemStruct item) =>
      allocationOption.remove(item);
  void removeAtIndexFromAllocationOption(int index) =>
      allocationOption.removeAt(index);
  void insertAtIndexInAllocationOption(
          int index, RadioSelectedItemStruct item) =>
      allocationOption.insert(index, item);
  void updateAllocationOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      allocationOption[index] = updateFn(allocationOption[index]);

  List<RadioSelectedItemStruct> riskOption = [];
  void addToRiskOption(RadioSelectedItemStruct item) => riskOption.add(item);
  void removeFromRiskOption(RadioSelectedItemStruct item) =>
      riskOption.remove(item);
  void removeAtIndexFromRiskOption(int index) => riskOption.removeAt(index);
  void insertAtIndexInRiskOption(int index, RadioSelectedItemStruct item) =>
      riskOption.insert(index, item);
  void updateRiskOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      riskOption[index] = updateFn(riskOption[index]);

  List<RadioSelectedItemStruct> networthOption = [];
  void addToNetworthOption(RadioSelectedItemStruct item) =>
      networthOption.add(item);
  void removeFromNetworthOption(RadioSelectedItemStruct item) =>
      networthOption.remove(item);
  void removeAtIndexFromNetworthOption(int index) =>
      networthOption.removeAt(index);
  void insertAtIndexInNetworthOption(int index, RadioSelectedItemStruct item) =>
      networthOption.insert(index, item);
  void updateNetworthOptionAtIndex(
          int index, Function(RadioSelectedItemStruct) updateFn) =>
      networthOption[index] = updateFn(networthOption[index]);

  bool isLoading = true;

  TrustFundRequestStruct? requestValue;
  void updateRequestValueStruct(Function(TrustFundRequestStruct) updateFn) {
    updateFn(requestValue ??= TrustFundRequestStruct());
  }

  bool isNotSelected = true;

  ///  State fields for stateful widgets in this page.

  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Stores action output result for [Backend Call - API (Retail Service Request Trust ProductSubmit)] action in Button widget.
  ApiCallResponse? trustFundSuccess;
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
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
    customMobileAppBarModel.dispose();
    loadingStateComponentModel.dispose();
  }

  /// Action blocks.
  Future getOptions(BuildContext context) async {
    ApiCallResponse? trustProductOptions;

    nationalityOption = [];
    fundsOption = [];
    investmentOption = [];
    horizonOption = [];
    allocationOption = [];
    riskOption = [];
    networthOption = [];
    trustProductOptions =
        await WhitebankGroupAPIGroup.retailServiceRequestTrustProductCall.call(
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
      accessToken: currentAuthenticationToken,
    );

    if ((trustProductOptions.succeeded ?? true)) {
      await Future.wait([
        Future(() async {
          for (int loop1Index = 0;
              loop1Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .nationality
                      .options
                      .length;
              loop1Index++) {
            final currentLoop1Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .nationality
                    .options[loop1Index];
            addToNationalityOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop1Item,
            ));
          }
        }),
        Future(() async {
          for (int loop2Index = 0;
              loop2Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .investibleFunds
                      .options
                      .length;
              loop2Index++) {
            final currentLoop2Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .investibleFunds
                    .options[loop2Index];
            addToFundsOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop2Item,
            ));
          }
        }),
        Future(() async {
          for (int loop3Index = 0;
              loop3Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .investmentObjective
                      .options
                      .length;
              loop3Index++) {
            final currentLoop3Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .investmentObjective
                    .options[loop3Index];
            addToInvestmentOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop3Item,
            ));
          }
        }),
        Future(() async {
          for (int loop4Index = 0;
              loop4Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .investmentHorizon
                      .options
                      .length;
              loop4Index++) {
            final currentLoop4Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .investmentHorizon
                    .options[loop4Index];
            addToHorizonOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop4Item,
            ));
          }
        }),
        Future(() async {
          for (int loop5Index = 0;
              loop5Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .investmentAllocation
                      .options
                      .length;
              loop5Index++) {
            final currentLoop5Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .investmentAllocation
                    .options[loop5Index];
            addToAllocationOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop5Item,
            ));
          }
        }),
        Future(() async {
          for (int loop6Index = 0;
              loop6Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .riskTolerance
                      .options
                      .length;
              loop6Index++) {
            final currentLoop6Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .riskTolerance
                    .options[loop6Index];
            addToRiskOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop6Item,
            ));
          }
        }),
        Future(() async {
          for (int loop7Index = 0;
              loop7Index <
                  ServiceRequestTrustProductResponseStruct.maybeFromMap(
                          (trustProductOptions?.jsonBody ?? ''))!
                      .netWorthLast2Years
                      .options
                      .length;
              loop7Index++) {
            final currentLoop7Item =
                ServiceRequestTrustProductResponseStruct.maybeFromMap(
                        (trustProductOptions?.jsonBody ?? ''))!
                    .netWorthLast2Years
                    .options[loop7Index];
            addToNetworthOption(RadioSelectedItemStruct(
              isSelected: false,
              selectedItem: currentLoop7Item,
            ));
          }
        }),
      ]);
    }
  }
}
