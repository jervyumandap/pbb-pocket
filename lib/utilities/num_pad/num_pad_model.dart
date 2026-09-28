import '/flutter_flow/flutter_flow_util.dart';
import 'num_pad_widget.dart' show NumPadWidget;
import 'package:flutter/material.dart';

class NumPadModel extends FlutterFlowModel<NumPadWidget> {
  ///  Local state fields for this component.

  List<String> numPadList = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '',
    '0',
    '<'
  ];
  void addToNumPadList(String item) => numPadList.add(item);
  void removeFromNumPadList(String item) => numPadList.remove(item);
  void removeAtIndexFromNumPadList(int index) => numPadList.removeAt(index);
  void insertAtIndexInNumPadList(int index, String item) =>
      numPadList.insert(index, item);
  void updateNumPadListAtIndex(int index, Function(String) updateFn) =>
      numPadList[index] = updateFn(numPadList[index]);

  double? displayValue = 0.0;

  String? stringDisplayValue;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
