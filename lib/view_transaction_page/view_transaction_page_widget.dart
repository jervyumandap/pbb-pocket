import '/components/custom_mobile_app_bar/custom_mobile_app_bar_widget.dart';
import '/components/custom_web_app_bar/custom_web_app_bar_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'view_transaction_page_model.dart';
export 'view_transaction_page_model.dart';

class ViewTransactionPageWidget extends StatefulWidget {
  const ViewTransactionPageWidget({
    super.key,
    required this.status,
    required this.amount,
    required this.referenceNumber,
    required this.dateCreated,
    required this.recipientName,
    required this.currency,
  });

  final String? status;
  final double? amount;
  final String? referenceNumber;
  final String? dateCreated;
  final String? recipientName;
  final String? currency;

  static String routeName = 'ViewTransactionPage';
  static String routePath = '/viewTransactionPage';

  @override
  State<ViewTransactionPageWidget> createState() =>
      _ViewTransactionPageWidgetState();
}

class _ViewTransactionPageWidgetState extends State<ViewTransactionPageWidget> {
  late ViewTransactionPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewTransactionPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await action_blocks.refreshSessionActionBlock(context);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (false)
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.mobileNavigationBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: MobileNavigationBarWidget(
                    pageIndex: 10,
                    shouldHideBottomNav: true,
                  ),
                ),
              ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 83.0, 0.0, 24.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Semantics(
                                  label: 'ConditionalBuilder Status Image',
                                  child: Builder(
                                    builder: (context) {
                                      if (widget.status == 'COMPLETED') {
                                        return Container(
                                          width: 64.0,
                                          height: 64.0,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            'assets/images/Container.png',
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      } else if (widget.status == 'ACTIVE') {
                                        return FlutterFlowIconButton(
                                          borderRadius: 100.0,
                                          buttonSize: 64.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .error3,
                                          icon: Icon(
                                            Icons.next_plan_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            size: 32.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        );
                                      } else {
                                        return FlutterFlowIconButton(
                                          borderRadius: 100.0,
                                          buttonSize: 64.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .error3,
                                          icon: Icon(
                                            Icons.close,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 32.0,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        );
                                      }
                                    },
                                  ),
                                ),
                                Semantics(
                                  label: 'Status Text',
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.status,
                                      'Paid',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w500,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: widget.status == 'COMPLETED'
                                              ? Color(0xFF00A63E)
                                              : FlutterFlowTheme.of(context)
                                                  .error2,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 24.0)),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Semantics(
                                label: 'Amount Text',
                                child: Text(
                                  '${widget.currency}${formatNumber(
                                    widget.amount,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.periodDecimal,
                                  )}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF101828),
                                        fontSize: 36.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                              Semantics(
                                label: 'Recipient Name Text',
                                child: Text(
                                  'Payment to ${widget.recipientName}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: Color(0xFF6A7282),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 24.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 94.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF9FAFB),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Reference Number',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF4A5565),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Semantics(
                                          label: 'Reference Number Text',
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget.referenceNumber,
                                              'PBB2026041568000',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF101828),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Date & Time',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF4A5565),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Semantics(
                                          label: 'Date Created Text',
                                          child: Text(
                                            valueOrDefault<String>(
                                              functions.formatTransactionDate(
                                                  widget.dateCreated),
                                              'Apr 28, 2026, 02:30 PM',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily,
                                                  color: Color(0xFF101828),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  useGoogleFonts:
                                                      !FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumIsCustom,
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
                        ],
                      ),
                    ),
                    Semantics(
                      label: 'CustomMobileAppBar',
                      child: wrapWithModel(
                        model: _model.customMobileAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomMobileAppBarWidget(
                          pageTitle: '',
                          rightButtonIcon: Icon(
                            Icons.file_download_outlined,
                            color: Color(0xFF027377),
                            size: 24.0,
                          ),
                          leftButtonIcon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          midRightButtonIcon: Icon(
                            Icons.share_outlined,
                            color: Color(0xFF027377),
                            size: 24.0,
                          ),
                          buttonColor: Colors.transparent,
                          buttonWithoutBackground: false,
                          isTitleLeftAlign: false,
                          titleLeftAlign: 'Transactions',
                          rightButtonAction: () async {
                            _model.screenshotAndShare =
                                await actions.makeScreenshotAndShare(
                              context,
                            );

                            safeSetState(() {});
                          },
                          leftButtonAction: () async {
                            context.safePop();
                          },
                          midRightButtonAction: () async {
                            _model.screenshotShare =
                                await actions.makeScreenshotAndShare(
                              context,
                            );

                            safeSetState(() {});
                          },
                        ),
                      ),
                    ),
                    Semantics(
                      label: 'CustomWebAppBar',
                      child: wrapWithModel(
                        model: _model.customWebAppBarModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CustomWebAppBarWidget(
                          pageTitle: '',
                          midButtonIcon: Icon(
                            Icons.share_outlined,
                            size: 24.0,
                          ),
                          rightButtonIcon: Icon(
                            Icons.file_download_outlined,
                            size: 24.0,
                          ),
                          leftButtonAction: () async {},
                          midButtonAction: () async {},
                          rightButtonAction: () async {},
                        ),
                      ),
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
