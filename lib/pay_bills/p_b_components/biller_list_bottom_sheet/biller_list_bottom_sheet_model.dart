import '/components/empty_list_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'biller_list_bottom_sheet_widget.dart' show BillerListBottomSheetWidget;
import 'package:flutter/material.dart';

class BillerListBottomSheetModel
    extends FlutterFlowModel<BillerListBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Search-TextField widget.
  FocusNode? searchTextFieldFocusNode1;
  TextEditingController? searchTextFieldTextController1;
  String? Function(BuildContext, String?)?
      searchTextFieldTextController1Validator;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel1;
  // State field(s) for Search-TextField widget.
  FocusNode? searchTextFieldFocusNode2;
  TextEditingController? searchTextFieldTextController2;
  String? Function(BuildContext, String?)?
      searchTextFieldTextController2Validator;
  // Model for emptyListComponent component.
  late EmptyListComponentModel emptyListComponentModel2;

  @override
  void initState(BuildContext context) {
    emptyListComponentModel1 =
        createModel(context, () => EmptyListComponentModel());
    emptyListComponentModel2 =
        createModel(context, () => EmptyListComponentModel());
  }

  @override
  void dispose() {
    searchTextFieldFocusNode1?.dispose();
    searchTextFieldTextController1?.dispose();

    emptyListComponentModel1.dispose();
    searchTextFieldFocusNode2?.dispose();
    searchTextFieldTextController2?.dispose();

    emptyListComponentModel2.dispose();
  }
}
