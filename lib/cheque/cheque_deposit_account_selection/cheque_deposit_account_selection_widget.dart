import '/backend/schema/enums/enums.dart';
import '/components/account_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_mode_options/fund_transfer_mode_options_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'cheque_deposit_account_selection_model.dart';
export 'cheque_deposit_account_selection_model.dart';

class ChequeDepositAccountSelectionWidget extends StatefulWidget {
  const ChequeDepositAccountSelectionWidget({
    super.key,
    this.transferDirection,
    bool? isFromFavorites,
  }) : this.isFromFavorites = isFromFavorites ?? false;

  final String? transferDirection;
  final bool isFromFavorites;

  @override
  State<ChequeDepositAccountSelectionWidget> createState() =>
      _ChequeDepositAccountSelectionWidgetState();
}

class _ChequeDepositAccountSelectionWidgetState
    extends State<ChequeDepositAccountSelectionWidget>
    with TickerProviderStateMixin {
  late ChequeDepositAccountSelectionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChequeDepositAccountSelectionModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
          TintEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 400.0.ms,
            color: Colors.black,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 350.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'accountCardOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
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

    return Stack(
      children: [
        if (responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        ))
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              height: 500.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Container(
                            width: 29.0,
                            height: 6.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFD9D9D9),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 9.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Select Account',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color: Color(0xFF383839),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts:
                                                  !FlutterFlowTheme.of(context)
                                                      .bodyMediumIsCustom,
                                            ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.close_sharp,
                                          color: Color(0xFF252525),
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Select the account you want to send\nmoney from.',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .validTextColor1,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['columnOnPageLoadAnimation']!),
                            Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 25.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Builder(
                                      builder: (context) {
                                        final accounts = FFAppState()
                                            .ChequeEligibleAccountsState
                                            .toList();

                                        return ListView.separated(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount: accounts.length,
                                          separatorBuilder: (_, __) =>
                                              SizedBox(height: 17.0),
                                          itemBuilder:
                                              (context, accountsIndex) {
                                            final accountsItem =
                                                accounts[accountsIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                FFAppState()
                                                        .SelectedChequeAccountState =
                                                    accountsItem;
                                                safeSetState(() {});
                                                Navigator.pop(context);
                                              },
                                              child: AccountCardWidget(
                                                key: Key(
                                                    'Keyyna_${accountsIndex}_of_${accounts.length}'),
                                                accountName: accountsItem
                                                    .accountType?.name,
                                                accountNumber: accountsItem
                                                    .maskedAccountNumber,
                                                accountBalance: accountsItem
                                                    .availableBalance,
                                                currency: accountsItem.currency,
                                              ),
                                            ).animateOnPageLoad(
                                              animationsMap[
                                                  'accountCardOnPageLoadAnimation']!,
                                              effects: [
                                                FadeEffect(
                                                  curve: Curves.easeInOut,
                                                  delay: functions
                                                      .multiplyAnimation(
                                                          accountsIndex,
                                                          50,
                                                          200)!
                                                      .toDouble()
                                                      .ms,
                                                  duration: 300.0.ms,
                                                  begin: 0.0,
                                                  end: 1.0,
                                                ),
                                                MoveEffect(
                                                  curve: Curves.easeInOut,
                                                  delay: functions
                                                      .subtractAnimation(
                                                          accountsIndex,
                                                          50,
                                                          500)!
                                                      .toDouble()
                                                      .ms,
                                                  duration: functions
                                                      .multiplyAnimation(
                                                          accountsIndex,
                                                          50,
                                                          300)!
                                                      .toDouble()
                                                      .ms,
                                                  begin: Offset(0.0, 100.0),
                                                  end: Offset(0.0, 0.0),
                                                ),
                                                TintEffect(
                                                  curve: Curves.easeInOut,
                                                  delay: functions
                                                      .multiplyAnimation(
                                                          accountsIndex,
                                                          150,
                                                          300)!
                                                      .toDouble()
                                                      .ms,
                                                  duration: functions
                                                      .multiplyAnimation(
                                                          accountsIndex,
                                                          100,
                                                          600)!
                                                      .toDouble()
                                                      .ms,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  begin: 1.0,
                                                  end: 0.0,
                                                ),
                                                ScaleEffect(
                                                  curve: Curves.easeInOut,
                                                  delay: functions
                                                      .multiplyAnimation(
                                                          accountsIndex,
                                                          50,
                                                          400)!
                                                      .toDouble()
                                                      .ms,
                                                  duration: functions
                                                      .multiplyAnimation(
                                                          accountsIndex,
                                                          50,
                                                          600)!
                                                      .toDouble()
                                                      .ms,
                                                  begin: Offset(0.0, 1.0),
                                                  end: Offset(1.0, 1.0),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Align(
            alignment: AlignmentDirectional(1.0, 1.0),
            child: Container(
              width: 398.0,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.only(),
              ),
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 46.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 9.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Select Account',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    color: Color(0xFF383839),
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.close_sharp,
                                color: Color(0xFF252525),
                                size: 24.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
                        child: Text(
                          'Select the account you want to send\nmoney from.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                color: FlutterFlowTheme.of(context)
                                    .validTextColor1,
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyMediumIsCustom,
                              ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          final accounts = FFAppState()
                              .AccountsState
                              .where((e) =>
                                  (e.availableBalance > 0.0) ||
                                  (e.availableBalance > 0.0))
                              .toList();

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: accounts.length,
                            separatorBuilder: (_, __) => SizedBox(height: 17.0),
                            itemBuilder: (context, accountsIndex) {
                              final accountsItem = accounts[accountsIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (widget.transferDirection ==
                                      TransactionTypeKey.INTRABANK.name) {
                                    if (!widget.isFromFavorites) {
                                      context.pushNamed(
                                        FundTransferPageWidget.routeName,
                                        queryParameters: {
                                          'bankName': serializeParam(
                                            '',
                                            ParamType.String,
                                          ),
                                          'accountName': serializeParam(
                                            '',
                                            ParamType.String,
                                          ),
                                          'accountNumber': serializeParam(
                                            accountsItem.fullAccountNumber,
                                            ParamType.String,
                                          ),
                                          'accountType': serializeParam(
                                            accountsItem.accountType?.name,
                                            ParamType.String,
                                          ),
                                          'isFromFavorites': serializeParam(
                                            widget.isFromFavorites,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    } else {
                                      FFAppState()
                                          .updateFundTransferiniatedResponseStruct(
                                        (e) => e
                                          ..sourceAccountNumber =
                                              accountsItem.fullAccountNumber,
                                      );
                                      FFAppState().update(() {});

                                      context.pushNamed(
                                        FundTransferAmountPageWidget.routeName,
                                        queryParameters: {
                                          'isFromFavorite': serializeParam(
                                            true,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                      );
                                    }
                                  } else if (widget.transferDirection ==
                                      TransactionTypeKey.BILLS_PAYMENT.name) {
                                    context.pushNamed(
                                      FundTransferPageCopyWidget.routeName,
                                      queryParameters: {
                                        'bankName': serializeParam(
                                          '-',
                                          ParamType.String,
                                        ),
                                        'accountName': serializeParam(
                                          '-',
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  } else if (widget.transferDirection ==
                                      'changeAccount') {
                                    FFAppState()
                                        .updateFundTransferiniatedResponseStruct(
                                      (e) => e
                                        ..sourceAccountNumber =
                                            accountsItem.fullAccountNumber,
                                    );
                                    FFAppState().update(() {});
                                  } else {
                                    Navigator.pop(context);
                                    FFAppState()
                                        .updateFundTransferiniatedResponseStruct(
                                      (e) => e
                                        ..sourceAccountNumber =
                                            accountsItem.fullAccountNumber,
                                    );
                                    FFAppState().update(() {});
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (context) {
                                        return WebViewAware(
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child:
                                                FundTransferModeOptionsWidget(
                                              accountNumber: accountsItem
                                                  .fullAccountNumber,
                                              accountType: accountsItem
                                                  .accountType?.name,
                                              isFromFavorites:
                                                  widget.isFromFavorites,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  }

                                  Navigator.pop(context);
                                },
                                child: AccountCardWidget(
                                  key: Key(
                                      'Key0ds_${accountsIndex}_of_${accounts.length}'),
                                  accountName: accountsItem.accountType?.name,
                                  accountNumber: accountsItem.accountNumber,
                                  accountBalance: accountsItem.availableBalance,
                                  currency: accountsItem.currency,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
