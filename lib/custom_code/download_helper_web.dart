// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

Future<void> downloadFileV2(
  String url,
  String filename,
) async {
  final anchor = html.AnchorElement(href: url)
    ..download = filename
    ..style.display = 'none';

  html.document.body?.append(anchor);

  anchor.click();

  anchor.remove();
}
