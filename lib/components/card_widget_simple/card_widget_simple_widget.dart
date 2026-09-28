import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_widget_simple_model.dart';
export 'card_widget_simple_model.dart';

class CardWidgetSimpleWidget extends StatefulWidget {
  const CardWidgetSimpleWidget({
    super.key,
    String? title,
    String? sutbtitle,
    String? balance,
    required this.accountType,
    this.tapAction,
  })  : this.title = title ?? 'Savings Account *** 123',
        this.sutbtitle = sutbtitle ?? 'Available Balance',
        this.balance = balance ?? '₱200,000.00';

  final String title;
  final String sutbtitle;
  final String balance;
  final BankAccountType? accountType;

  /// Event handler executed on tap.
  final Future Function()? tapAction;

  @override
  State<CardWidgetSimpleWidget> createState() => _CardWidgetSimpleWidgetState();
}

class _CardWidgetSimpleWidgetState extends State<CardWidgetSimpleWidget> {
  late CardWidgetSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardWidgetSimpleModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.tapAction?.call();
      },
      child: Container(
        width: double.infinity,
        height: 72.0,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/card-background.png',
                  ).image,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            Opacity(
              opacity: 0.95,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      valueOrDefault<Color>(
                        () {
                          if (widget.accountType == BankAccountType.SAVINGS) {
                            return FFAppConstants.ContextualColor1;
                          } else if (widget.accountType ==
                              BankAccountType.current) {
                            return FFAppConstants.ContextualColor2;
                          } else if (widget.accountType ==
                              BankAccountType.payroll) {
                            return FFAppConstants.ContextualColor3;
                          } else if (widget.accountType != null) {
                            return FlutterFlowTheme.of(context).neutral1;
                          } else if (widget.accountType ==
                              BankAccountType.TIME_DEPOSIT) {
                            return Colors.black;
                          } else {
                            return FFAppConstants.ContextualColor1;
                          }
                        }(),
                        FlutterFlowTheme.of(context).primaryGradient,
                      ),
                      valueOrDefault<Color>(
                        () {
                          if (widget.accountType == BankAccountType.SAVINGS) {
                            return FFAppConstants.ContextualColor2;
                          } else if (widget.accountType ==
                              BankAccountType.current) {
                            return FFAppConstants.ContextualColor3;
                          } else if (widget.accountType ==
                              BankAccountType.payroll) {
                            return FFAppConstants.ContextualColor4;
                          } else if (widget.accountType != null) {
                            return Color(0xFF0D0858);
                          } else if (widget.accountType ==
                              BankAccountType.TIME_DEPOSIT) {
                            return Color(0xFFFF5247);
                          } else {
                            return FFAppConstants.ContextualColor2;
                          }
                        }(),
                        Color(0xFF08AFAD),
                      )
                    ],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(1.0, 0.0),
                    end: AlignmentDirectional(-1.0, 0),
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            widget.title,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.manrope(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).whiteText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                widget.sutbtitle,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .whiteText,
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Text(
                              widget.balance,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .displaySmallFamily,
                                    color:
                                        FlutterFlowTheme.of(context).whiteText,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .displaySmallIsCustom,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
