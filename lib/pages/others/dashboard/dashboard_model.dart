import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/full_view_mode_component/full_view_mode_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  bool isWallet = false;

  bool isWalletBalanceVisible = true;

  bool isLoading = true;

  ParsedEMVCoDataModelStruct? qrDataParsed;
  void updateQrDataParsedStruct(Function(ParsedEMVCoDataModelStruct) updateFn) {
    updateFn(qrDataParsed ??= ParsedEMVCoDataModelStruct());
  }

  /// timestamp-nonce (1776147579495-abc)
  String? generatedChallenge = '';

  List<dynamic> balances = [];
  void addToBalances(dynamic item) => balances.add(item);
  void removeFromBalances(dynamic item) => balances.remove(item);
  void removeAtIndexFromBalances(int index) => balances.removeAt(index);
  void insertAtIndexInBalances(int index, dynamic item) =>
      balances.insert(index, item);
  void updateBalancesAtIndex(int index, Function(dynamic) updateFn) =>
      balances[index] = updateFn(balances[index]);

  List<dynamic> accountsWithBalance = [];
  void addToAccountsWithBalance(dynamic item) => accountsWithBalance.add(item);
  void removeFromAccountsWithBalance(dynamic item) =>
      accountsWithBalance.remove(item);
  void removeAtIndexFromAccountsWithBalance(int index) =>
      accountsWithBalance.removeAt(index);
  void insertAtIndexInAccountsWithBalance(int index, dynamic item) =>
      accountsWithBalance.insert(index, item);
  void updateAccountsWithBalanceAtIndex(
          int index, Function(dynamic) updateFn) =>
      accountsWithBalance[index] = updateFn(accountsWithBalance[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Settings Mpin Status)] action in Dashboard widget.
  ApiCallResponse? getMpinStatusResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Biometric)] action in Dashboard widget.
  ApiCallResponse? getBiometricResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Devices List)] action in Dashboard widget.
  ApiCallResponse? getDeviceListResponse;
  // Stores action output result for [Backend Call - API (Retail Settings Device Trust Request)] action in Dashboard widget.
  ApiCallResponse? initTrustResponse;
  // Stores action output result for [Custom Action - generatePcKeyPair] action in Dashboard widget.
  dynamic deviceKeypairOutput;
  // Stores action output result for [Backend Call - API (Retail Auth Biometric Register)] action in Dashboard widget.
  ApiCallResponse? biometricRegisterResponse;
  // Stores action output result for [Custom Action - generateKeyPair] action in Dashboard widget.
  dynamic generateKeyPairOutput;
  // Stores action output result for [Backend Call - API (Retail Settings Transaction Limits)] action in Dashboard widget.
  ApiCallResponse? apiResultbgh;
  // Stores action output result for [Backend Call - API (Get Beneficiaries)] action in Dashboard widget.
  ApiCallResponse? apiResultino;
  // Stores action output result for [Backend Call - API (Retail Saved Billers List)] action in Dashboard widget.
  ApiCallResponse? sBillersResponse;
  // Stores action output result for [Backend Call - API (Retail Kill Switch Status)] action in Dashboard widget.
  ApiCallResponse? apiResultr7b;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for FullViewModeComponent component.
  late FullViewModeComponentModel fullViewModeComponentModel;

  @override
  void initState(BuildContext context) {
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    fullViewModeComponentModel =
        createModel(context, () => FullViewModeComponentModel());
  }

  @override
  void dispose() {
    mobileNavigationBarModel.dispose();
    fullViewModeComponentModel.dispose();
  }
}
