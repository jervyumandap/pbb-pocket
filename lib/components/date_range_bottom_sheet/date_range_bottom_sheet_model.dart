import '/components/filter_date_picker_widget/filter_date_picker_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'date_range_bottom_sheet_widget.dart' show DateRangeBottomSheetWidget;
import 'package:flutter/material.dart';

class DateRangeBottomSheetModel
    extends FlutterFlowModel<DateRangeBottomSheetWidget> {
  ///  Local state fields for this component.

  bool? hasSelection = false;

  DateTime? fromDate;

  DateTime? toDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // Model for StartDatePickerWidget.
  late FilterDatePickerWidgetModel startDatePickerWidgetModel1;
  DateTime? datePicked1;
  // Model for EndDatePickerWidget.
  late FilterDatePickerWidgetModel endDatePickerWidgetModel1;
  DateTime? datePicked2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];
  // Model for StartDatePickerWidget.
  late FilterDatePickerWidgetModel startDatePickerWidgetModel2;
  DateTime? datePicked3;
  // Model for EndDatePickerWidget.
  late FilterDatePickerWidgetModel endDatePickerWidgetModel2;
  DateTime? datePicked4;

  @override
  void initState(BuildContext context) {
    startDatePickerWidgetModel1 =
        createModel(context, () => FilterDatePickerWidgetModel());
    endDatePickerWidgetModel1 =
        createModel(context, () => FilterDatePickerWidgetModel());
    startDatePickerWidgetModel2 =
        createModel(context, () => FilterDatePickerWidgetModel());
    endDatePickerWidgetModel2 =
        createModel(context, () => FilterDatePickerWidgetModel());
  }

  @override
  void dispose() {
    startDatePickerWidgetModel1.dispose();
    endDatePickerWidgetModel1.dispose();
    startDatePickerWidgetModel2.dispose();
    endDatePickerWidgetModel2.dispose();
  }
}
