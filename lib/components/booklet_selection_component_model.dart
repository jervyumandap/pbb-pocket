import '/flutter_flow/flutter_flow_util.dart';
import 'booklet_selection_component_widget.dart'
    show BookletSelectionComponentWidget;
import 'package:flutter/material.dart';

class BookletSelectionComponentModel
    extends FlutterFlowModel<BookletSelectionComponentWidget> {
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

  int selectedIndex = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
