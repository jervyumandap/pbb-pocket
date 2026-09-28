import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'dropdown_download_file_model.dart';
export 'dropdown_download_file_model.dart';

class DropdownDownloadFileWidget extends StatefulWidget {
  const DropdownDownloadFileWidget({
    super.key,
    required this.listTransactions,
  });

  final List<StatementTransactionModelStruct>? listTransactions;

  @override
  State<DropdownDownloadFileWidget> createState() =>
      _DropdownDownloadFileWidgetState();
}

class _DropdownDownloadFileWidgetState
    extends State<DropdownDownloadFileWidget> {
  late DropdownDownloadFileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DropdownDownloadFileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).whiteText,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.spreadsheetFile = await actions.exportSOAToXlsx(
                      widget.listTransactions!.toList(),
                    );
                    await downloadFile(
                      filename: 'Statement_of_Accounts_${valueOrDefault<String>(
                        dateTimeFormat(
                          "yyyy-MM-dd_HHmmss",
                          getCurrentTimestamp,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        '2025-10-01_09:00:59_AM',
                      )}.xlsx',
                      uploadedFile: _model.spreadsheetFile!,
                    );

                    safeSetState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        _model.mouseRegionOptionXlsxHovered
                            ? FlutterFlowTheme.of(context).neutral9
                            : FlutterFlowTheme.of(context).whiteText,
                        FlutterFlowTheme.of(context).whiteText,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Download (.xlsx)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                          Icon(
                            Icons.bar_chart,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionOptionXlsxHovered = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionOptionXlsxHovered = false);
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        _model.mouseRegionOptionPDFHovered
                            ? FlutterFlowTheme.of(context).neutral9
                            : FlutterFlowTheme.of(context).whiteText,
                        FlutterFlowTheme.of(context).whiteText,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Download (.pdf)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                          Icon(
                            Icons.picture_as_pdf_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                safeSetState(() => _model.mouseRegionOptionPDFHovered = true);
              }),
              onExit: ((event) async {
                safeSetState(() => _model.mouseRegionOptionPDFHovered = false);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
