import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_widget_small_model.dart';
export 'card_widget_small_model.dart';

class CardWidgetSmallWidget extends StatefulWidget {
  const CardWidgetSmallWidget({
    super.key,
    String? title,
    String? sutbtitle,
    String? balance,
    required this.accountType,
    this.tapAction,
    this.buttonAction,
  })  : this.title = title ?? 'Savings Account *** 123',
        this.sutbtitle = sutbtitle ?? 'Available Balance',
        this.balance = balance ?? '₱200,000.00';

  final String title;
  final String sutbtitle;
  final String balance;
  final BankAccountType? accountType;

  /// Event handler executed on tap.
  final Future Function()? tapAction;

  final Future Function()? buttonAction;

  @override
  State<CardWidgetSmallWidget> createState() => _CardWidgetSmallWidgetState();
}

class _CardWidgetSmallWidgetState extends State<CardWidgetSmallWidget> {
  late CardWidgetSmallModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardWidgetSmallModel());

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
        width: 200.0,
        height: 117.0,
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
                padding: EdgeInsets.all(16.0),
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
                        Image.asset(
                          'assets/images/visa-vector.png',
                          width: 37.6,
                          height: 12.0,
                          fit: BoxFit.contain,
                        ),
                      ].divide(SizedBox(width: 5.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                  color: FlutterFlowTheme.of(context).whiteText,
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                widget.balance.maybeHandleOverflow(
                                  maxChars: 20,
                                ),
                                minFontSize: 16.0,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .displaySmallFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .whiteText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .displaySmallIsCustom,
                                    ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 100.0,
                              buttonSize: 24.0,
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryButton,
                              icon: Icon(
                                Icons.arrow_forward,
                                color: FlutterFlowTheme.of(context).info,
                                size: 9.0,
                              ),
                              onPressed: () async {
                                await widget.buttonAction?.call();
                              },
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
