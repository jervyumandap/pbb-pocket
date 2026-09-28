import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'card_styles_model.dart';
export 'card_styles_model.dart';

class CardStylesWidget extends StatefulWidget {
  const CardStylesWidget({
    super.key,
    required this.accounts,
    required this.callback,
    required this.mode,
  });

  final List<AccountsV2Struct>? accounts;
  final Future Function()? callback;
  final String? mode;

  @override
  State<CardStylesWidget> createState() => _CardStylesWidgetState();
}

class _CardStylesWidgetState extends State<CardStylesWidget> {
  late CardStylesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardStylesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.mode == 'listBig')
          Builder(
            builder: (context) {
              final accounts = widget.accounts!.toList();

              return Semantics(
                label: 'Row',
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(accounts.length, (accountsIndex) {
                    final accountsItem = accounts[accountsIndex];
                    return Semantics(
                      label: 'Stack',
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.callback?.call();
                        },
                        child: Container(
                          width: 390.0,
                          height: 167.0,
                          child: Stack(
                            children: [
                              Semantics(
                                label: 'Container-Image',
                                child: Container(
                                  width: 400.0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
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
                                child: Semantics(
                                  label: 'Container-Gradient',
                                  child: Container(
                                    width: 400.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                              Semantics(
                                label: 'Container-Image',
                                child: Container(
                                  width: 400.0,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Semantics(
                                              label: 'Account Number Text',
                                              child: Text(
                                                accountsItem.accountNumber,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.manrope(
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
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .whiteText,
                                                      letterSpacing: 0.0,
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
                                              ),
                                            ),
                                            Image.asset(
                                              'assets/images/visa-vector.png',
                                              width: 45.0,
                                              height: 15.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Opacity(
                                              opacity: 0.5,
                                              child: Semantics(
                                                label: 'Account Name Text',
                                                child: Text(
                                                  accountsItem.accountName,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.manrope(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .whiteText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Semantics(
                                                  label: 'Balance Text',
                                                  child: Text(
                                                    accountsItem.balance
                                                        .toString(),
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .whiteText,
                                                          fontSize: 24.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts:
                                                              !FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmallIsCustom,
                                                        ),
                                                  ),
                                                ),
                                                Semantics(
                                                  label: 'Icon Button',
                                                  child: FlutterFlowIconButton(
                                                    borderRadius: 100.0,
                                                    buttonSize: 24.0,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryButton,
                                                    icon: Icon(
                                                      Icons
                                                          .arrow_forward_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      size: 9.0,
                                                    ),
                                                    onPressed: () {
                                                      print(
                                                          'IconButton pressed ...');
                                                    },
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).divide(SizedBox(width: 20.0)),
                ),
              );
            },
          ),
        if (widget.mode == 'listSmall')
          Builder(
            builder: (context) {
              final accountsv2 = widget.accounts!.toList();

              return InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await widget.callback?.call();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(accountsv2.length, (accountsv2Index) {
                    final accountsv2Item = accountsv2[accountsv2Index];
                    return Container(
                      width: 250.0,
                      height: 100.0,
                      child: Stack(
                        children: [
                          Semantics(
                            label: 'Container-Image',
                            child: Container(
                              width: 400.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: 0.95,
                                child: Semantics(
                                  label: 'Container-Gradient',
                                  child: Container(
                                    width: 400.0,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Semantics(
                            label: 'Container-Image',
                            child: Container(
                              width: 400.0,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          accountsv2Item.accountNumber,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.manrope(
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .whiteText,
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
                                        Image.asset(
                                          'assets/images/visa-vector.png',
                                          width: 45.0,
                                          height: 15.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Opacity(
                                          opacity: 0.5,
                                          child: Semantics(
                                            label: 'Account Name Text',
                                            child: Text(
                                              accountsv2Item.accountName,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    font: GoogleFonts.manrope(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .whiteText,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Semantics(
                                              label: 'Balance Text',
                                              child: Text(
                                                accountsv2Item.balance
                                                    .toString(),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .whiteText,
                                                      fontSize: 24.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallIsCustom,
                                                    ),
                                              ),
                                            ),
                                            FlutterFlowIconButton(
                                              borderRadius: 100.0,
                                              buttonSize: 24.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryButton,
                                              icon: Icon(
                                                Icons.arrow_forward_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                size: 9.0,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
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
                          ),
                        ],
                      ),
                    );
                  }).divide(SizedBox(width: 20.0)),
                ),
              );
            },
          ),
        if (widget.mode == 'listColumn')
          Builder(
            builder: (context) {
              final accountsv3 = widget.accounts!.toList();

              return Semantics(
                label: 'Column Items',
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.callback?.call();
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children:
                        List.generate(accountsv3.length, (accountsv3Index) {
                      final accountsv3Item = accountsv3[accountsv3Index];
                      return Container(
                        width: 400.0,
                        height: 100.0,
                        child: Stack(
                          children: [
                            Semantics(
                              label: 'Container-Image',
                              child: Container(
                                width: 400.0,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
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
                            Semantics(
                              label: 'Row',
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Opacity(
                                    opacity: 0.95,
                                    child: Semantics(
                                      label: 'Container-Gradient',
                                      child: Container(
                                        width: 400.0,
                                        height: double.infinity,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: [
                                              valueOrDefault<Color>(
                                                () {
                                                  if (accountsv3Item
                                                          .accountType ==
                                                      BankAccountType.casa) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryLabel;
                                                  } else if (accountsv3Item
                                                          .accountType ==
                                                      BankAccountType.payroll) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .accent1;
                                                  } else if (accountsv3Item
                                                          .accountType ==
                                                      BankAccountType.loan) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .secondary;
                                                  } else if (accountsv3Item
                                                          .accountType ==
                                                      AccountType.others) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .neutral1;
                                                  } else {
                                                    return Color(0xFF1E1E1E);
                                                  }
                                                }(),
                                                FlutterFlowTheme.of(context)
                                                    .primaryGradient,
                                              ),
                                              valueOrDefault<Color>(
                                                () {
                                                  if (accountsv3Item
                                                          .accountType ==
                                                      BankAccountType.casa) {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primary;
                                                  } else if (accountsv3Item
                                                          .accountType ==
                                                      BankAccountType.payroll) {
                                                    return Color(0xFF094288);
                                                  } else if (accountsv3Item
                                                          .accountType ==
                                                      BankAccountType.loan) {
                                                    return Color(0xFF1E1E1E);
                                                  } else if (accountsv3Item
                                                          .accountType ==
                                                      AccountType.others) {
                                                    return Color(0xFF0D0858);
                                                  } else {
                                                    return Color(0xFF08AFAD);
                                                  }
                                                }(),
                                                FlutterFlowTheme.of(context)
                                                    .secondaryGradient,
                                              )
                                            ],
                                            stops: [0.0, 1.0],
                                            begin:
                                                AlignmentDirectional(1.0, 0.0),
                                            end: AlignmentDirectional(-1.0, 0),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Semantics(
                              label: 'Container-Image',
                              child: Container(
                                width: 400.0,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            accountsv3Item.accountNumber,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.manrope(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .whiteText,
                                                  letterSpacing: 0.0,
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
                                          ),
                                          Image.asset(
                                            'assets/images/visa-vector.png',
                                            width: 45.0,
                                            height: 15.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Opacity(
                                            opacity: 0.5,
                                            child: Text(
                                              accountsv3Item.accountName,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .labelSmall
                                                  .override(
                                                    font: GoogleFonts.manrope(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .whiteText,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                accountsv3Item.balance
                                                    .toString(),
                                                textAlign: TextAlign.end,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .whiteText,
                                                      fontSize: 24.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts:
                                                          !FlutterFlowTheme.of(
                                                                  context)
                                                              .displaySmallIsCustom,
                                                    ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderRadius: 100.0,
                                                buttonSize: 24.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryButton,
                                                icon: Icon(
                                                  Icons.arrow_forward_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  size: 9.0,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
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
                            ),
                          ],
                        ),
                      );
                    }).divide(SizedBox(height: 20.0)),
                  ),
                ),
              );
            },
          ),
      ],
    );
  }
}
