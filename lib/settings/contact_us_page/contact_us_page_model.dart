import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'contact_us_page_widget.dart' show ContactUsPageWidget;
import 'package:flutter/material.dart';

class ContactUsPageModel extends FlutterFlowModel<ContactUsPageWidget> {
  ///  Local state fields for this page.

  bool isLoading = true;

  List<NotificationCategoriesStruct> listOfNotification = [];
  void addToListOfNotification(NotificationCategoriesStruct item) =>
      listOfNotification.add(item);
  void removeFromListOfNotification(NotificationCategoriesStruct item) =>
      listOfNotification.remove(item);
  void removeAtIndexFromListOfNotification(int index) =>
      listOfNotification.removeAt(index);
  void insertAtIndexInListOfNotification(
          int index, NotificationCategoriesStruct item) =>
      listOfNotification.insert(index, item);
  void updateListOfNotificationAtIndex(
          int index, Function(NotificationCategoriesStruct) updateFn) =>
      listOfNotification[index] = updateFn(listOfNotification[index]);

  ///  State fields for stateful widgets in this page.

  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customMobileAppBarModel.dispose();
  }

  /// Action blocks.
  Future getNotificationSettings(BuildContext context) async {
    ApiCallResponse? apiResult3pb;

    apiResult3pb = await WhitebankGroupAPIGroup
        .retailSettingsNotificationsPreferencesCall
        .call(
      accessToken: currentAuthenticationToken,
      baseURL: FFDevEnvironmentValues().WBPBASEURL,
    );

    if ((apiResult3pb.succeeded ?? true)) {
      listOfNotification = (getJsonField(
        (apiResult3pb.jsonBody ?? ''),
        r'''$.categories''',
        true,
      )!
              .toList()
              .map<NotificationCategoriesStruct?>(
                  NotificationCategoriesStruct.maybeFromMap)
              .toList() as Iterable<NotificationCategoriesStruct?>)
          .withoutNulls
          .toList()
          .cast<NotificationCategoriesStruct>();
    }
  }
}
