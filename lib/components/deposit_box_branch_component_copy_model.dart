import '/flutter_flow/flutter_flow_util.dart';
import 'deposit_box_branch_component_copy_widget.dart'
    show DepositBoxBranchComponentCopyWidget;
import 'package:flutter/material.dart';

class DepositBoxBranchComponentCopyModel
    extends FlutterFlowModel<DepositBoxBranchComponentCopyWidget> {
  ///  Local state fields for this component.

  List<int> numberOfBooklet = [1, 2, 3, 4, 5];
  void addToNumberOfBooklet(int item) => numberOfBooklet.add(item);
  void removeFromNumberOfBooklet(int item) => numberOfBooklet.remove(item);
  void removeAtIndexFromNumberOfBooklet(int index) =>
      numberOfBooklet.removeAt(index);
  void insertAtIndexInNumberOfBooklet(int index, int item) =>
      numberOfBooklet.insert(index, item);
  void updateNumberOfBookletAtIndex(int index, Function(int) updateFn) =>
      numberOfBooklet[index] = updateFn(numberOfBooklet[index]);

  int? selectedIndex;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
