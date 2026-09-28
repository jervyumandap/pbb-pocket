import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';

Future<void> downloadFileV2(
  String url,
  String filename,
) async {
  final directory = await getTemporaryDirectory();

  final filePath = "${directory.path}/$filename";

  await Dio().download(
    url,
    filePath,
    deleteOnError: true,
    options: Options(
      responseType: ResponseType.bytes,
      followRedirects: true,
      validateStatus: (status) =>
          status != null && status >= 200 && status < 300,
    ),
  );

  final result = await OpenFile.open(filePath);

  if (result.type != ResultType.done) {
    throw Exception(result.message);
  }
}
