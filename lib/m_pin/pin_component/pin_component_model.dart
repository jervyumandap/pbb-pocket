import '/flutter_flow/flutter_flow_util.dart';
import 'pin_component_widget.dart' show PinComponentWidget;
import 'package:flutter/material.dart';

class PinComponentModel extends FlutterFlowModel<PinComponentWidget> {
  ///  Local state fields for this component.

  List<String> keyNumbers = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    'C',
    '0',
    'back'
  ];
  void addToKeyNumbers(String item) => keyNumbers.add(item);
  void removeFromKeyNumbers(String item) => keyNumbers.remove(item);
  void removeAtIndexFromKeyNumbers(int index) => keyNumbers.removeAt(index);
  void insertAtIndexInKeyNumbers(int index, String item) =>
      keyNumbers.insert(index, item);
  void updateKeyNumbersAtIndex(int index, Function(String) updateFn) =>
      keyNumbers[index] = updateFn(keyNumbers[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
