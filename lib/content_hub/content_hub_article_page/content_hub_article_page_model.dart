import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'content_hub_article_page_widget.dart' show ContentHubArticlePageWidget;
import 'package:flutter/material.dart';

class ContentHubArticlePageModel
    extends FlutterFlowModel<ContentHubArticlePageWidget> {
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

  List<DataStruct> article = [];
  void addToArticle(DataStruct item) => article.add(item);
  void removeFromArticle(DataStruct item) => article.remove(item);
  void removeAtIndexFromArticle(int index) => article.removeAt(index);
  void insertAtIndexInArticle(int index, DataStruct item) =>
      article.insert(index, item);
  void updateArticleAtIndex(int index, Function(DataStruct) updateFn) =>
      article[index] = updateFn(article[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Content Hub Articles)] action in ContentHubArticlePage widget.
  ApiCallResponse? apiResultoid;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    loadingStateComponentModel =
        createModel(context, () => LoadingStateComponentModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    customMobileAppBarModel.dispose();
    loadingStateComponentModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
