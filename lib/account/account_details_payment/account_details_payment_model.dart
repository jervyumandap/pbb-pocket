import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/utilities/num_pad/num_pad_widget.dart';
import 'account_details_payment_widget.dart' show AccountDetailsPaymentWidget;
import 'package:flutter/material.dart';

class AccountDetailsPaymentModel
    extends FlutterFlowModel<AccountDetailsPaymentWidget> {
  ///  Local state fields for this page.

  double? displayValue = 0.0;

  AccountDetailsPaymentListStruct? selectedAccountTo;
  void updateSelectedAccountToStruct(
      Function(AccountDetailsPaymentListStruct) updateFn) {
    updateFn(selectedAccountTo ??= AccountDetailsPaymentListStruct());
  }

  List<AccountDetailsPaymentListStruct> accountListTo = [];
  void addToAccountListTo(AccountDetailsPaymentListStruct item) =>
      accountListTo.add(item);
  void removeFromAccountListTo(AccountDetailsPaymentListStruct item) =>
      accountListTo.remove(item);
  void removeAtIndexFromAccountListTo(int index) =>
      accountListTo.removeAt(index);
  void insertAtIndexInAccountListTo(
          int index, AccountDetailsPaymentListStruct item) =>
      accountListTo.insert(index, item);
  void updateAccountListToAtIndex(
          int index, Function(AccountDetailsPaymentListStruct) updateFn) =>
      accountListTo[index] = updateFn(accountListTo[index]);

  List<AccountDetailsPaymentListStruct> accountListFrom = [];
  void addToAccountListFrom(AccountDetailsPaymentListStruct item) =>
      accountListFrom.add(item);
  void removeFromAccountListFrom(AccountDetailsPaymentListStruct item) =>
      accountListFrom.remove(item);
  void removeAtIndexFromAccountListFrom(int index) =>
      accountListFrom.removeAt(index);
  void insertAtIndexInAccountListFrom(
          int index, AccountDetailsPaymentListStruct item) =>
      accountListFrom.insert(index, item);
  void updateAccountListFromAtIndex(
          int index, Function(AccountDetailsPaymentListStruct) updateFn) =>
      accountListFrom[index] = updateFn(accountListFrom[index]);

  AccountDetailsPaymentListStruct? selectedAccountFrom;
  void updateSelectedAccountFromStruct(
      Function(AccountDetailsPaymentListStruct) updateFn) {
    updateFn(selectedAccountFrom ??= AccountDetailsPaymentListStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Model for NumPad component.
  late NumPadModel numPadModel;

  @override
  void initState(BuildContext context) {
    numPadModel = createModel(context, () => NumPadModel());
  }

  @override
  void dispose() {
    numPadModel.dispose();
  }
}
