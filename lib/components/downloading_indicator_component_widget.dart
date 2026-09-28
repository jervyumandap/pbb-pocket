import '/auth/custom_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'downloading_indicator_component_model.dart';
export 'downloading_indicator_component_model.dart';

/// Bottom sheet content showing an animated downloading indicator with a
/// title and message.
class DownloadingIndicatorComponentWidget extends StatefulWidget {
  const DownloadingIndicatorComponentWidget({
    super.key,
    this.title,
    this.message,
    required this.data,
    required this.fromDate,
    required this.toDate,
    required this.fileType,
  });

  final String? title;
  final String? message;
  final List<dynamic>? data;
  final DateTime? fromDate;
  final DateTime? toDate;
  final FileType? fileType;

  @override
  State<DownloadingIndicatorComponentWidget> createState() =>
      _DownloadingIndicatorComponentWidgetState();
}

class _DownloadingIndicatorComponentWidgetState
    extends State<DownloadingIndicatorComponentWidget> {
  late DownloadingIndicatorComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DownloadingIndicatorComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.fileType == FileType.PDF) {
        await actions.downloadAccountStatementPdf(
          currentUserData!.user.fullName,
          'Branch Name',
          'Branch Address',
          FFAppState().currentAccountV2.accountName,
          FFAppState().currentAccountV2.fullAccountNumber,
          FFAppState().currentAccountV2.currency,
          FFAppState().currentAccountV2.accountType!.name,
          functions.mapAccountTransactions(widget.data!.toList()).toList(),
          widget.fromDate!,
          widget.toDate!,
        );
      } else {
        await actions.downloadJsonAsCsv(
          functions.mapAccountTransactions(widget.data!.toList()).toList(),
          '${currentUserData?.user.fullName}_${dateTimeFormat(
            "MM-dd-yyyy-HH:mm:ss",
            getCurrentTimestamp,
            locale: FFLocalizations.of(context).languageCode,
          )}',
        );
      }

      Navigator.pop(context);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 360.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(32.0, 24.0, 32.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/jsons/Downloading_Lottie.json',
              width: 160.0,
              height: 160.0,
              fit: BoxFit.contain,
              animate: true,
            ),
            Text(
              widget.title!,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineSmallFamily,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).headlineSmallIsCustom,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.message!,
              textAlign: TextAlign.center,
              maxLines: 3,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    useGoogleFonts:
                        !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ].divide(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
