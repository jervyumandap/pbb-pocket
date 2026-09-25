import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_widget_medium_model.dart';
export 'card_widget_medium_model.dart';

class CardWidgetMediumWidget extends StatefulWidget {
  const CardWidgetMediumWidget({
    super.key,
    String? title,
    String? subtitle,
    String? balance,
    required this.accountType,
    this.tapAction,
    this.buttonAction,
  })  : this.title = title ?? 'Savings Account *** 123',
        this.subtitle = subtitle ?? '0000000000',
        this.balance = balance ?? '₱200,000.00';

  final String title;
  final String subtitle;
  final String balance;
  final BankAccountType? accountType;

  /// Event handler executed on tap.
  final Future Function()? tapAction;

  /// Event handler for card button.
  final Future Function()? buttonAction;

  @override
  State<CardWidgetMediumWidget> createState() => _CardWidgetMediumWidgetState();
}

class _CardWidgetMediumWidgetState extends State<CardWidgetMediumWidget> {
  late CardWidgetMediumModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardWidgetMediumModel());

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
        height: 85.0,
        child: Stack(
          children: [
            Container(
              width: 390.0,
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
                width: 390.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      valueOrDefault<Color>(
                        () {
                          if (widget.accountType == BankAccountType.casa) {
                            return FlutterFlowTheme.of(context).primaryLabel;
                          } else if (widget.accountType ==
                              BankAccountType.payroll) {
                            return FlutterFlowTheme.of(context).accent1;
                          } else if (widget.accountType ==
                              BankAccountType.loan) {
                            return FlutterFlowTheme.of(context).secondary;
                          } else if (widget.accountType ==
                              AccountType.others) {
                            return FlutterFlowTheme.of(context).neutral1;
                          } else {
                            return Color(0xFF1E1E1E);
                          }
                        }(),
                        FlutterFlowTheme.of(context).primaryGradient,
                      ),
                      valueOrDefault<Color>(
                        () {
                          if (widget.accountType == BankAccountType.casa) {
                            return FlutterFlowTheme.of(context).primary;
                          } else if (widget.accountType ==
                              BankAccountType.payroll) {
                            return Color(0xFF094288);
                          } else if (widget.balance ==
                              BankAccountType.loan.name) {
                            return Color(0xFF1E1E1E);
                          } else if (widget.accountType ==
                              AccountType.others) {
                            return Color(0xFF0D0858);
                          } else {
                            return Color(0xFF08AFAD);
                          }
                        }(),
                        FlutterFlowTheme.of(context).secondaryGradient,
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
              width: 390.0,
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
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
                                    color:
                                        FlutterFlowTheme.of(context).whiteText,
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
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                widget.subtitle,
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
                                      fontSize: 12.0,
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
                          ].divide(SizedBox(height: 5.0)),
                        ),
                        Text(
                          widget.balance,
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .displaySmallFamily,
                                color: FlutterFlowTheme.of(context).whiteText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .displaySmallIsCustom,
                              ),
                          overflow: TextOverflow.ellipsis,
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
