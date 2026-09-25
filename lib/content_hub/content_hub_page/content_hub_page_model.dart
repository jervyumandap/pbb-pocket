import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'content_hub_page_widget.dart' show ContentHubPageWidget;
import 'package:flutter/material.dart';

class ContentHubPageModel extends FlutterFlowModel<ContentHubPageWidget> {
  ///  Local state fields for this page.

  ProductsStruct? selectedTDProduct;
  void updateSelectedTDProductStruct(Function(ProductsStruct) updateFn) {
    updateFn(selectedTDProduct ??= ProductsStruct());
  }

  String? selectedProductCode = '123123';

  String? id;

  TimeDepositProductsModelStruct? products;
  void updateProductsStruct(Function(TimeDepositProductsModelStruct) updateFn) {
    updateFn(products ??= TimeDepositProductsModelStruct());
  }

  bool isLoading = true;

  List<ContentHubCategoriesStruct> articleCategories = [];
  void addToArticleCategories(ContentHubCategoriesStruct item) =>
      articleCategories.add(item);
  void removeFromArticleCategories(ContentHubCategoriesStruct item) =>
      articleCategories.remove(item);
  void removeAtIndexFromArticleCategories(int index) =>
      articleCategories.removeAt(index);
  void insertAtIndexInArticleCategories(
          int index, ContentHubCategoriesStruct item) =>
      articleCategories.insert(index, item);
  void updateArticleCategoriesAtIndex(
          int index, Function(ContentHubCategoriesStruct) updateFn) =>
      articleCategories[index] = updateFn(articleCategories[index]);

  List<DataStruct> pinnedArticles = [];
  void addToPinnedArticles(DataStruct item) => pinnedArticles.add(item);
  void removeFromPinnedArticles(DataStruct item) => pinnedArticles.remove(item);
  void removeAtIndexFromPinnedArticles(int index) =>
      pinnedArticles.removeAt(index);
  void insertAtIndexInPinnedArticles(int index, DataStruct item) =>
      pinnedArticles.insert(index, item);
  void updatePinnedArticlesAtIndex(int index, Function(DataStruct) updateFn) =>
      pinnedArticles[index] = updateFn(pinnedArticles[index]);

  List<DataStruct> recentlyUpdatedArticles = [];
  void addToRecentlyUpdatedArticles(DataStruct item) =>
      recentlyUpdatedArticles.add(item);
  void removeFromRecentlyUpdatedArticles(DataStruct item) =>
      recentlyUpdatedArticles.remove(item);
  void removeAtIndexFromRecentlyUpdatedArticles(int index) =>
      recentlyUpdatedArticles.removeAt(index);
  void insertAtIndexInRecentlyUpdatedArticles(int index, DataStruct item) =>
      recentlyUpdatedArticles.insert(index, item);
  void updateRecentlyUpdatedArticlesAtIndex(
          int index, Function(DataStruct) updateFn) =>
      recentlyUpdatedArticles[index] = updateFn(recentlyUpdatedArticles[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Content Hub Categories)] action in ContentHubPage widget.
  ApiCallResponse? apiResultoid;
  // Stores action output result for [Backend Call - API (Retail Content Hub Articles Pinned)] action in ContentHubPage widget.
  ApiCallResponse? apiResultazw;
  // Stores action output result for [Backend Call - API (Retail Content Hub Article Events)] action in ContentHubPage widget.
  ApiCallResponse? apiResultpjqd;
  // Stores action output result for [Backend Call - API (Retail Content Hub Articles Recent)] action in ContentHubPage widget.
  ApiCallResponse? apiResultazwd;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Content Hub Article Events)] action in Container widget.
  ApiCallResponse? apiResultpjqdsCopy;
  // Stores action output result for [Backend Call - API (Retail Content Hub Article Events)] action in Container widget.
  ApiCallResponse? apiResultpjqds;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel.dispose();
    customMobileAppBarModel.dispose();
    customWebAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
  }
}
