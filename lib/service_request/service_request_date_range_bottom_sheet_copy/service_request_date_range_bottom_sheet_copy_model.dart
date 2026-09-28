import '/backend/api_requests/api_calls.dart';
import '/components/filter_date_picker_widget/filter_date_picker_widget_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'service_request_date_range_bottom_sheet_copy_widget.dart'
    show ServiceRequestDateRangeBottomSheetCopyWidget;
import 'package:flutter/material.dart';

class ServiceRequestDateRangeBottomSheetCopyModel
    extends FlutterFlowModel<ServiceRequestDateRangeBottomSheetCopyWidget> {
  ///  Local state fields for this component.

  bool? hasSelection = false;

  DateTime? fromDate;

  DateTime? toDate;

  ///  State fields for stateful widgets in this component.

  // Model for StartDatePickerWidget.
  late FilterDatePickerWidgetModel startDatePickerWidgetModel1;
  DateTime? datePicked1;
  // Model for EndDatePickerWidget.
  late FilterDatePickerWidgetModel endDatePickerWidgetModel1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (Retail Investments Statement)] action in Validate-Button widget.
  ApiCallResponse? apiResultgtxw;
  // Model for StartDatePickerWidget.
  late FilterDatePickerWidgetModel startDatePickerWidgetModel2;
  DateTime? datePicked3;
  // Model for EndDatePickerWidget.
  late FilterDatePickerWidgetModel endDatePickerWidgetModel2;
  DateTime? datePicked4;
  // Stores action output result for [Backend Call - API (Retail Investments Statement)] action in Validate-Button widget.
  ApiCallResponse? apiResultgtxwe;

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
