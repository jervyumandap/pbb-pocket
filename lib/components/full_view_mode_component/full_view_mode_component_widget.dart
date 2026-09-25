import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/favorites_empty_state/favorites_empty_state_widget.dart';
import '/components/banner_component_widget.dart';
import '/components/card_widget_v2/card_widget_v2_widget.dart';
import '/components/curved_card_empty_state_widget.dart';
import '/components/favorite_biller_component_widget.dart';
import '/components/mobile_navigation_bar/mobile_navigation_bar_widget.dart';
import '/components/primary_button_component/primary_button_component_widget.dart';
import '/components/profile_with_name_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_account_selection/fund_transfer_account_selection_widget.dart';
import '/pay_bills/p_b_components/pay_bills_source_account_bottom_sheet/pay_bills_source_account_bottom_sheet_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'full_view_mode_component_model.dart';
export 'full_view_mode_component_model.dart';

class FullViewModeComponentWidget extends StatefulWidget {
  const FullViewModeComponentWidget({
    super.key,
    required this.contentWidth,
    required this.dashboardAccount,
    required this.isWeb,
  });

  final double? contentWidth;
  final List<AccountsStruct>? dashboardAccount;
  final bool? isWeb;

  @override
  State<FullViewModeComponentWidget> createState() =>
      _FullViewModeComponentWidgetState();
}

class _FullViewModeComponentWidgetState
    extends State<FullViewModeComponentWidget> {
  late FullViewModeComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FullViewModeComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      safeSetState(() {});
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
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFF6F6F6),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(),
                            child: Image.asset(
                              'assets/images/Homepage_BG.png',
                              width: double.infinity,
                              height: 270.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 32.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 32.0;
                                    } else {
                                      return 32.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                50.0,
                                valueOrDefault<double>(
                                  () {
                                    if (MediaQuery.sizeOf(context).width <
                                        kBreakpointSmall) {
                                      return 0.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointMedium) {
                                      return 32.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        kBreakpointLarge) {
                                      return 32.0;
                                    } else {
                                      return 32.0;
                                    }
                                  }(),
                                  0.0,
                                ),
                                0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 14.0),
                                          child: Container(
                                            width: 187.0,
                                            height: 36.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.contain,
                                                image: Image.asset(
                                                  'assets/images/fuueei.png',
                                                ).image,
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0,
                                      14.0,
                                      valueOrDefault<double>(
                                        () {
                                          if (MediaQuery.sizeOf(context).width <
                                              kBreakpointSmall) {
                                            return 16.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointMedium) {
                                            return 16.0;
                                          } else if (MediaQuery.sizeOf(context)
                                                  .width <
                                              kBreakpointLarge) {
                                            return 32.0;
                                          } else {
                                            return 32.0;
                                          }
                                        }(),
                                        0.0,
                                      ),
                                      16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'My Cards',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.poppins(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              color: Color(0xFF012D72),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            ManageAccountPageWidget.routeName,
                                            extra: <String, dynamic>{
                                              '__transition_info__':
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType
                                                        .leftToRight,
                                              ),
                                            },
                                          );
                                        },
                                        child: Text(
                                          'Manage Account',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
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
                                ),
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  valueOrDefault<double>(
                                                    () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 16.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 0.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 0.0;
                                                      } else {
                                                        return 0.0;
                                                      }
                                                    }(),
                                                    0.0,
                                                  ),
                                                  0.0,
                                                  0.0,
                                                  0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 182.0,
                                            child:
                                                custom_widgets.CurvedCardDeck(
                                              width: double.infinity,
                                              height: 182.0,
                                              items: FFAppState()
                                                  .AccountsState
                                                  .map((e) => e.toMap())
                                                  .toList(),
                                              isWeb: widget.isWeb!,
                                              showPeek: true,
                                              hasOnTapFunction: true,
                                              onCardSwipe: (swipedItem) async {
                                                FFAppState().currentAccountV2 =
                                                    AccountsStruct.maybeFromMap(
                                                        swipedItem)!;
                                                FFAppState()
                                                    .AccountsState = (swipedItem
                                                            .toList()
                                                            .map<AccountsStruct?>(
                                                                AccountsStruct
                                                                    .maybeFromMap)
                                                            .toList()
                                                        as Iterable<
                                                            AccountsStruct?>)
                                                    .withoutNulls
                                                    .toList()
                                                    .cast<AccountsStruct>();
                                                FFAppState().update(() {});
                                              },
                                              onCardTap: (tappedItem) async {
                                                context.pushNamed(
                                                  AccountDetailPageWidget
                                                      .routeName,
                                                  queryParameters: {
                                                    'account': serializeParam(
                                                      AccountsStruct
                                                          .maybeFromMap(
                                                              tappedItem),
                                                      ParamType.DataStruct,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              itemBuilder: (dynamic item) =>
                                                  CardWidgetV2Widget(
                                                title: valueOrDefault<String>(
                                                  AccountsStruct.maybeFromMap(
                                                          item)
                                                      ?.accountNumber,
                                                  '-',
                                                ),
                                                subtitle: 'Available Balance',
                                                balance: valueOrDefault<String>(
                                                  formatNumber(
                                                    AccountsStruct.maybeFromMap(
                                                            item)
                                                        ?.availableBalance,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType: DecimalType
                                                        .periodDecimal,
                                                  ),
                                                  '-',
                                                ),
                                                accountType:
                                                    AccountsStruct.maybeFromMap(
                                                            item)!
                                                        .accountType!,
                                                title2: AccountsStruct
                                                                .maybeFromMap(
                                                                    item)
                                                            ?.alias ==
                                                        'test'
                                                    ? valueOrDefault<String>(
                                                        AccountsStruct
                                                                .maybeFromMap(
                                                                    item)
                                                            ?.accountType
                                                            ?.name,
                                                        '-',
                                                      )
                                                    : functions
                                                        .longStringEllipsis(
                                                            AccountsStruct
                                                                    .maybeFromMap(
                                                                        item)
                                                                ?.alias),
                                                isEmpty: item == null,
                                                cardSpacing: 8.0,
                                                currency:
                                                    valueOrDefault<String>(
                                                  AccountsStruct.maybeFromMap(
                                                          item)
                                                      ?.currency,
                                                  '-',
                                                ),
                                                tapAction: () async {},
                                                buttonAction: () async {},
                                              ),
                                              emptyStateBuilder: () =>
                                                  CurvedCardEmptyStateWidget(
                                                title:
                                                    'My Cards temporarily unavailable',
                                                body:
                                                    'We can’t load your card details right now. Please try again later.',
                                                isMyCard: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 158.0,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 16.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 16.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 32.0;
                                  } else {
                                    return 32.0;
                                  }
                                }(),
                                0.0,
                              ),
                              0.0,
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      kBreakpointSmall) {
                                    return 16.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointMedium) {
                                    return 16.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      kBreakpointLarge) {
                                    return 32.0;
                                  } else {
                                    return 32.0;
                                  }
                                }(),
                                0.0,
                              ),
                              0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Container(
                                          width: 66.0,
                                          height: 36.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              'Favorites',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    color: Color(0xFF444C66),
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
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
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (FFAppState()
                                          .BeneficiaryListState
                                          .isNotEmpty)
                                        Builder(
                                          builder: (context) {
                                            final beneficiaryList = FFAppState()
                                                .BeneficiaryListState
                                                .toList();

                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: List.generate(
                                                  beneficiaryList.length,
                                                  (beneficiaryListIndex) {
                                                final beneficiaryListItem =
                                                    beneficiaryList[
                                                        beneficiaryListIndex];
                                                return Container(
                                                  child: InkWell(
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
                                                          .updateFundTransferiniatedResponseStruct(
                                                        (e) => e
                                                          ..transferType =
                                                              beneficiaryListItem
                                                                  .transferType
                                                          ..destinationAccountName =
                                                              beneficiaryListItem
                                                                  .accountHolderName
                                                          ..bankName =
                                                              beneficiaryListItem
                                                                  .bankName
                                                          ..destinationBankCode =
                                                              beneficiaryListItem
                                                                  .bankCode
                                                          ..sourceAccountNumber =
                                                              FFAppState()
                                                                  .AccountsState
                                                                  .firstOrNull
                                                                  ?.fullAccountNumber
                                                          ..destinationAccountNumber =
                                                              beneficiaryListItem
                                                                  .accountNumber,
                                                      );
                                                      FFAppState()
                                                              .isFromFavorite =
                                                          true;
                                                      safeSetState(() {});
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  FundTransferAccountSelectionWidget(
                                                                transferDirection:
                                                                    beneficiaryListItem
                                                                        .transferType,
                                                                isFromFavorites:
                                                                    true,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .profileWithNameComponentModels1
                                                          .getModel(
                                                        beneficiaryListItem.id,
                                                        beneficiaryListIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ProfileWithNameComponentWidget(
                                                        key: Key(
                                                          'Keyi6h_${beneficiaryListItem.id}',
                                                        ),
                                                        accountName:
                                                            beneficiaryListItem
                                                                .nickname,
                                                        imageName: functions
                                                            .extractReceiver(
                                                                beneficiaryListItem
                                                                    .nickname),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                      if (FFAppState()
                                          .SavedBillersAppState
                                          .isNotEmpty)
                                        Builder(
                                          builder: (context) {
                                            final sBillers = FFAppState()
                                                .SavedBillersAppState
                                                .toList();

                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children:
                                                  List.generate(sBillers.length,
                                                      (sBillersIndex) {
                                                final sBillersItem =
                                                    sBillers[sBillersIndex];
                                                return wrapWithModel(
                                                  model: _model
                                                      .favoriteBillerComponentModels
                                                      .getModel(
                                                    sBillersIndex.toString(),
                                                    sBillersIndex,
                                                  ),
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      FavoriteBillerComponentWidget(
                                                    key: Key(
                                                      'Keyu8b_${sBillersIndex.toString()}',
                                                    ),
                                                    billerName:
                                                        sBillersItem.nickname,
                                                    callBack: () async {
                                                      FFAppState()
                                                              .PaybillsInitiateModelAppState =
                                                          WBBPSubmitParametersStruct(
                                                        billerId: sBillersItem
                                                            .biller.id,
                                                        accountNumber:
                                                            sBillersItem
                                                                .accountNumber,
                                                        accountHolderName:
                                                            sBillersItem
                                                                .accountHolderName,
                                                        savedBillerId:
                                                            sBillersItem.id,
                                                        idempotencyKey:
                                                            functions
                                                                .createUuid(),
                                                      );
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        context: context,
                                                        builder: (context) {
                                                          return WebViewAware(
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  PayBillsSourceAccountBottomSheetWidget(
                                                                callBack:
                                                                    (selectedAccount) async {
                                                                  FFAppState()
                                                                          .payingSourceAccountAppState =
                                                                      selectedAccount;
                                                                  FFAppState()
                                                                      .updatePaybillsInitiateModelAppStateStruct(
                                                                    (e) => e
                                                                      ..sourceAccountNumber =
                                                                          selectedAccount
                                                                              .fullAccountNumber,
                                                                  );
                                                                  safeSetState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);

                                                                  context
                                                                      .pushNamed(
                                                                    PayBillsAmountPageWidget
                                                                        .routeName,
                                                                    queryParameters:
                                                                        {
                                                                      'billerDetails':
                                                                          serializeParam(
                                                                        WBBillerStruct(
                                                                          id: sBillersItem
                                                                              .biller
                                                                              .id,
                                                                          code: sBillersItem
                                                                              .biller
                                                                              .code,
                                                                          name:
                                                                              sBillersItem.nickname,
                                                                          category: sBillersItem
                                                                              .biller
                                                                              .category,
                                                                        ),
                                                                        ParamType
                                                                            .DataStruct,
                                                                      ),
                                                                      'isFromFavorite':
                                                                          serializeParam(
                                                                        true,
                                                                        ParamType
                                                                            .bool,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    },
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              if (!(FFAppState()
                                          .BeneficiaryListState
                                          .isNotEmpty) &&
                                      !(FFAppState()
                                          .SavedBillersAppState
                                          .isNotEmpty)
                                  ? true
                                  : false)
                                wrapWithModel(
                                  model: _model.favoritesEmptyStateModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FavoritesEmptyStateWidget(),
                                ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 16.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 32.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 32.0;
                                } else {
                                  return 32.0;
                                }
                              }(),
                              0.0,
                            ),
                            0.0,
                            valueOrDefault<double>(
                              () {
                                if (MediaQuery.sizeOf(context).width <
                                    kBreakpointSmall) {
                                  return 16.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointMedium) {
                                  return 32.0;
                                } else if (MediaQuery.sizeOf(context).width <
                                    kBreakpointLarge) {
                                  return 32.0;
                                } else {
                                  return 32.0;
                                }
                              }(),
                              0.0,
                            ),
                            0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 66.0,
                                      height: 36.0,
                                      decoration: BoxDecoration(),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Promo & Rewards',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF444C66),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  if (false)
                                    Container(
                                      width: 80.0,
                                      decoration: BoxDecoration(),
                                      child: wrapWithModel(
                                        model:
                                            _model.primaryButtonComponentModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PrimaryButtonComponentWidget(
                                          buttonTitle: 'See All',
                                          buttonWidth: 80.0,
                                          buttonHeight: 32.0,
                                          buttonColor: Colors.transparent,
                                          textColor: Color(0xFF027377),
                                          fontSize: 12.0,
                                          borderRadius: 24.0,
                                          borderColor: Color(0xFF027377),
                                          childPadding: 8.0,
                                          buttonDisabledOption: false,
                                          callback: () async {},
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 165.0,
                          child: custom_widgets.CurvedCardDeckV2(
                            width: double.infinity,
                            height: 165.0,
                            isWeb: widget.isWeb!,
                            showPeek: false,
                            items: FFAppState()
                                .AccountsState
                                .map((e) => e.toMap())
                                .toList(),
                            onCardSwipe: (swipedItem) async {},
                            itemBuilder: (dynamic item) =>
                                BannerComponentWidget(),
                            emptyStateBuilder: () => CurvedCardEmptyStateWidget(
                              title: 'Promo & Rewards unavailable',
                              body:
                                  'We can\'t load promos and rewards right now. Please try again later.',
                              isMyCard: false,
                            ),
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
        if (true &&
            responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            ))
          wrapWithModel(
            model: _model.mobileNavigationBarModel,
            updateCallback: () => safeSetState(() {}),
            child: MobileNavigationBarWidget(
              pageIndex: 1,
              shouldHideBottomNav: false,
            ),
          ),
      ],
    );
  }
}
