import '/content_hub/content_hub_container_with_button_component/content_hub_container_with_button_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'content_hub_article_view_component_widget.dart'
    show ContentHubArticleViewComponentWidget;
import 'package:flutter/material.dart';

class ContentHubArticleViewComponentModel
    extends FlutterFlowModel<ContentHubArticleViewComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ContentHubContainerWithButtonComponent component.
  late ContentHubContainerWithButtonComponentModel
      contentHubContainerWithButtonComponentModel;

  @override
  void initState(BuildContext context) {
    contentHubContainerWithButtonComponentModel = createModel(
        context, () => ContentHubContainerWithButtonComponentModel());
  }

  @override
  void dispose() {
    contentHubContainerWithButtonComponentModel.dispose();
  }
}
