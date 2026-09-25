import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/loading_state_component/loading_state_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'content_hub_view_article_page_widget.dart'
    show ContentHubViewArticlePageWidget;
import 'package:flutter/material.dart';

class ContentHubViewArticlePageModel
    extends FlutterFlowModel<ContentHubViewArticlePageWidget> {
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

  ContentHubArticleModelStruct? article;
  void updateArticleStruct(Function(ContentHubArticleModelStruct) updateFn) {
    updateFn(article ??= ContentHubArticleModelStruct());
  }

  ContentHubArticlesSlugModelStruct? viewArticle;
  void updateViewArticleStruct(
      Function(ContentHubArticlesSlugModelStruct) updateFn) {
    updateFn(viewArticle ??= ContentHubArticlesSlugModelStruct());
  }

  ContentHubBodyModelStruct? bodyState;
  void updateBodyStateStruct(Function(ContentHubBodyModelStruct) updateFn) {
    updateFn(bodyState ??= ContentHubBodyModelStruct());
  }

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (Retail Content Hub Articles Slug)] action in ContentHubViewArticlePage widget.
  ApiCallResponse? apiResultoid;
  // Stores action output result for [Backend Call - API (Retail Content Hub Article Events)] action in ContentHubViewArticlePage widget.
  ApiCallResponse? apiResultpjqw;
  // Stores action output result for [Custom Action - parseArticleContentAction] action in ContentHubViewArticlePage widget.
  dynamic body;
  // Stores action output result for [Custom Action - getDwellTimeMs] action in ContentHubViewArticlePage widget.
  int? getDwellTimeMS;
  // Stores action output result for [Backend Call - API (Retail Content Hub Article Events)] action in ContentHubViewArticlePage widget.
  ApiCallResponse? apiResultpjq;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel1;
  // Model for LoadingStateComponent component.
  late LoadingStateComponentModel loadingStateComponentModel2;
  // Model for CustomMobileAppBar component.
  late CustomMobileAppBarModel customMobileAppBarModel;
  // Stores action output result for [Backend Call - API (Retail Content Hub Article Events)] action in ScrollListener widget.
  ApiCallResponse? apiResultpjqd;
  // Model for MobileNavigationBar component.
  late MobileNavigationBarModel mobileNavigationBarModel;
  // Model for CustomWebAppBar component.
  late CustomWebAppBarModel customWebAppBarModel;

  @override
  void initState(BuildContext context) {
    loadingStateComponentModel1 =
        createModel(context, () => LoadingStateComponentModel());
    loadingStateComponentModel2 =
        createModel(context, () => LoadingStateComponentModel());
    customMobileAppBarModel =
        createModel(context, () => CustomMobileAppBarModel());
    mobileNavigationBarModel =
        createModel(context, () => MobileNavigationBarModel());
    customWebAppBarModel = createModel(context, () => CustomWebAppBarModel());
  }

  @override
  void dispose() {
    loadingStateComponentModel1.dispose();
    loadingStateComponentModel2.dispose();
    customMobileAppBarModel.dispose();
    mobileNavigationBarModel.dispose();
    customWebAppBarModel.dispose();
  }
}
