import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'card_widget_v2_model.dart';
export 'card_widget_v2_model.dart';

class CardWidgetV2Widget extends StatefulWidget {
  const CardWidgetV2Widget({
    super.key,
    String? title,
    String? subtitle,
    String? balance,
    required this.accountType,
    this.tapAction,
    this.buttonAction,
    this.title2,
    bool? isEmpty,
    double? cardSpacing,
    this.currency,
  })  : this.title = title ?? 'Savings Account *** 123',
        this.subtitle = subtitle ?? 'Available Balance',
        this.balance = balance ?? '₱200,000.00',
        this.isEmpty = isEmpty ?? false,
        this.cardSpacing = cardSpacing ?? 0.0;

  final String title;
  final String subtitle;
  final String balance;
  final BankAccountType? accountType;

  /// Event handler executed on tap.
  final Future Function()? tapAction;

  /// Event handler for card button.
  final Future Function()? buttonAction;

  final String? title2;
  final bool isEmpty;
  final double cardSpacing;
  final String? currency;

  @override
  State<CardWidgetV2Widget> createState() => _CardWidgetV2WidgetState();
}

class _CardWidgetV2WidgetState extends State<CardWidgetV2Widget> {
  late CardWidgetV2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardWidgetV2Model());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          0.0,
          0.0,
          valueOrDefault<double>(
            widget.cardSpacing,
            0.0,
          ),
          0.0),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.6,
            child: Container(
              width: double.infinity,
              height: 135.0,
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
          ),
          Opacity(
            opacity: 0.95,
            child: Container(
              width: double.infinity,
              height: 135.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xCC0F85A0), Color(0xFF012D72)],
                  stops: [0.0, 1.0],
                  begin: AlignmentDirectional(-1.0, 0.64),
                  end: AlignmentDirectional(1.0, -0.64),
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 135.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Visibility(
                      visible: !widget.isEmpty,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 12.0, 24.0, 12.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Container(
                                          width: 180.0,
                                          height: 36.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              '${valueOrDefault<String>(
                                                widget.title2,
                                                '-',
                                              )} ${widget.title}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/images/Group.png',
                                    width: 42.0,
                                    height: 15.0,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.subtitle,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                          color: Colors.white,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  if (FFAppState()
                                                      .isBalanceVisible) {
                                                    return Text(
                                                      '${widget.currency} ${widget.balance}',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                              ),
                                                    );
                                                  } else {
                                                    return Text(
                                                      '${widget.currency} • • • • • •',
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                fontSize: 24.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .fontStyle,
                                                              ),
                                                    );
                                                  }
                                                },
                                              ),
                                              Builder(
                                                builder: (context) {
                                                  if (FFAppState()
                                                      .isBalanceVisible) {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState()
                                                                .isBalanceVisible =
                                                            !(FFAppState()
                                                                    .isBalanceVisible ??
                                                                true);
                                                        FFAppState()
                                                            .update(() {});
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons.eye,
                                                        color: Colors.white,
                                                        size: 17.0,
                                                      ),
                                                    );
                                                  } else {
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        FFAppState()
                                                                .isBalanceVisible =
                                                            !(FFAppState()
                                                                    .isBalanceVisible ??
                                                                true);
                                                        FFAppState()
                                                            .update(() {});
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .solidEyeSlash,
                                                        color: Colors.white,
                                                        size: 17.0,
                                                      ),
                                                    );
                                                  }
                                                },
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                          Container(
                                            width: 22.0,
                                            height: 22.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x3E1369A3),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Icon(
                                                Icons.arrow_forward_sharp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                size: 16.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (widget.isEmpty)
                  Align(
                    alignment: AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 20.0),
                      child: Text(
                        'There are currently \nno accounts linked to your \nuser profile. Please connect an account to continue.',
                        textAlign: TextAlign.end,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  color: () {
                                    if (widget.accountType ==
                                        BankAccountType.CHECKING) {
                                      return Colors.white;
                                    } else if (widget.accountType ==
                                        BankAccountType.SAVINGS) {
                                      return Color(0xFF5A5A5A);
                                    } else {
                                      return Color(0xFF025C5F);
                                    }
                                  }(),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .displaySmallIsCustom,
                                ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
