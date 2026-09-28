import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/favorites_empty_state/favorites_empty_state_widget.dart';
import '/components/favorite_biller_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/profile_with_name_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'full_view_mode_component_widget.dart' show FullViewModeComponentWidget;
import 'package:flutter/material.dart';

class FullViewModeComponentModel
    extends FlutterFlowModel<FullViewModeComponentWidget> {
  ///  Local state fields for this component.

  List<AccountsV2Struct> fetchedAccounts = [];
  void addToFetchedAccounts(AccountsV2Struct item) => fetchedAccounts.add(item);
  void removeFromFetchedAccounts(AccountsV2Struct item) =>
      fetchedAccounts.remove(item);
  void removeAtIndexFromFetchedAccounts(int index) =>
      fetchedAccounts.removeAt(index);
  void insertAtIndexInFetchedAccounts(int index, AccountsV2Struct item) =>
      fetchedAccounts.insert(index, item);
  void updateFetchedAccountsAtIndex(
          int index, Function(AccountsV2Struct) updateFn) =>
      fetchedAccounts[index] = updateFn(fetchedAccounts[index]);

  String? oAuthTokenIDCAccounts;

  ///  State fields for stateful widgets in this component.

  // Models for ProfileWithNameComponent dynamic component.
  late FlutterFlowDynamicModels<ProfileWithNameComponentModel>
      profileWithNameComponentModels1;
  // Models for FavoriteBillerComponent dynamic component.
  late FlutterFlowDynamicModels<FavoriteBillerComponentModel>
      favoriteBillerComponentModels;
  // Model for FavoritesEmptyState component.
  late FavoritesEmptyStateModel favoritesEmptyStateModel;
  // Model for PrimaryButtonComponent component.
  late PrimaryButtonComponentModel primaryButtonComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    profileWithNameComponentModels1 =
        FlutterFlowDynamicModels(() => ProfileWithNameComponentModel());
    favoriteBillerComponentModels =
        FlutterFlowDynamicModels(() => FavoriteBillerComponentModel());
    favoritesEmptyStateModel =
        createModel(context, () => FavoritesEmptyStateModel());
    primaryButtonComponentModel =
        createModel(context, () => PrimaryButtonComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    profileWithNameComponentModels1.dispose();
    favoriteBillerComponentModels.dispose();
    favoritesEmptyStateModel.dispose();
    primaryButtonComponentModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
