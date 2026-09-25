import '/backend/schema/structs/index.dart';
import '/components/image_with_text_column_component/image_with_text_column_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pay_bills_with_chosen_biller_page_widget.dart'
    show PayBillsWithChosenBillerPageWidget;
import 'package:flutter/material.dart';

class PayBillsWithChosenBillerPageModel
    extends FlutterFlowModel<PayBillsWithChosenBillerPageWidget> {
  ///  Local state fields for this page.

  BillsHeaderStruct? requestHeader;
  void updateRequestHeaderStruct(Function(BillsHeaderStruct) updateFn) {
    updateFn(requestHeader ??= BillsHeaderStruct());
  }

  BillsBodyStruct? requestBody;
  void updateRequestBodyStruct(Function(BillsBodyStruct) updateFn) {
    updateFn(requestBody ??= BillsBodyStruct());
  }

  AccountsV2Struct? selectedSourceAccount;
  void updateSelectedSourceAccountStruct(Function(AccountsV2Struct) updateFn) {
    updateFn(selectedSourceAccount ??= AccountsV2Struct());
  }

  FrequentBillerDataModelStruct? selectedBiller;
  void updateSelectedBillerStruct(
      Function(FrequentBillerDataModelStruct) updateFn) {
    updateFn(selectedBiller ??= FrequentBillerDataModelStruct());
  }

  double? paymentAmount = 0.0;

  String? paymentDate;

  int? numberOfPayments;

  ///  State fields for stateful widgets in this page.

  // Model for ImageWithTextColumnComponent component.
  late ImageWithTextColumnComponentModel imageWithTextColumnComponentModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField-Currency widget.
  FocusNode? textFieldCurrencyFocusNode;
  TextEditingController? textFieldCurrencyTextController;
  String? Function(BuildContext, String?)?
      textFieldCurrencyTextControllerValidator;
  // State field(s) for TextField-Amount-A widget.
  FocusNode? textFieldAmountAFocusNode;
  TextEditingController? textFieldAmountATextController;
  String? Function(BuildContext, String?)?
      textFieldAmountATextControllerValidator;
  // State field(s) for Switch widget.
  bool? switchValue;
  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    imageWithTextColumnComponentModel =
        createModel(context, () => ImageWithTextColumnComponentModel());
  }

  @override
  void dispose() {
    imageWithTextColumnComponentModel.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldCurrencyFocusNode?.dispose();
    textFieldCurrencyTextController?.dispose();

    textFieldAmountAFocusNode?.dispose();
    textFieldAmountATextController?.dispose();
  }
}
