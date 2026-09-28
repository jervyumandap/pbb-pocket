import '/components/card_widget/card_widget_widget.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/transactions_component/transactions_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accounts_page_widget.dart' show AccountsPageWidget;
import 'package:flutter/material.dart';

class AccountsPageModel extends FlutterFlowModel<AccountsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for CardWidget component.
  late CardWidgetModel cardWidgetModel;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel1;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel2;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel3;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel4;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel5;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel6;
  // Model for TransactionsComponent component.
  late TransactionsComponentModel transactionsComponentModel7;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    cardWidgetModel = createModel(context, () => CardWidgetModel());
    transactionsComponentModel1 =
        createModel(context, () => TransactionsComponentModel());
    transactionsComponentModel2 =
        createModel(context, () => TransactionsComponentModel());
    transactionsComponentModel3 =
        createModel(context, () => TransactionsComponentModel());
    transactionsComponentModel4 =
        createModel(context, () => TransactionsComponentModel());
    transactionsComponentModel5 =
        createModel(context, () => TransactionsComponentModel());
    transactionsComponentModel6 =
        createModel(context, () => TransactionsComponentModel());
    transactionsComponentModel7 =
        createModel(context, () => TransactionsComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    cardWidgetModel.dispose();
    transactionsComponentModel1.dispose();
    transactionsComponentModel2.dispose();
    transactionsComponentModel3.dispose();
    transactionsComponentModel4.dispose();
    transactionsComponentModel5.dispose();
    transactionsComponentModel6.dispose();
    transactionsComponentModel7.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
