import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'inbox_details_page_widget.dart' show InboxDetailsPageWidget;
import 'package:flutter/material.dart';

class InboxDetailsPageModel extends FlutterFlowModel<InboxDetailsPageWidget> {
  ///  Local state fields for this page.

  List<String> filters = ['ANNOUNCEMENT'];
  void addToFilters(String item) => filters.add(item);
  void removeFromFilters(String item) => filters.remove(item);
  void removeAtIndexFromFilters(int index) => filters.removeAt(index);
  void insertAtIndexInFilters(int index, String item) =>
      filters.insert(index, item);
  void updateFiltersAtIndex(int index, Function(String) updateFn) =>
      filters[index] = updateFn(filters[index]);

  ///  State fields for stateful widgets in this page.

  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
