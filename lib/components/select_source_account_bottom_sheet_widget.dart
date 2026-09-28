import '/backend/schema/structs/index.dart';
import '/components/account_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'select_source_account_bottom_sheet_model.dart';
export 'select_source_account_bottom_sheet_model.dart';

class SelectSourceAccountBottomSheetWidget extends StatefulWidget {
  const SelectSourceAccountBottomSheetWidget({
    super.key,
    required this.callBack,
  });

  final Future Function(AccountsStruct selectedAccount)? callBack;

  @override
  State<SelectSourceAccountBottomSheetWidget> createState() =>
      _SelectSourceAccountBottomSheetWidgetState();
}

class _SelectSourceAccountBottomSheetWidgetState
    extends State<SelectSourceAccountBottomSheetWidget>
    with TickerProviderStateMixin {
  late SelectSourceAccountBottomSheetModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectSourceAccountBottomSheetModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 500.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36.0),
                      topRight: Radius.circular(36.0),
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 13.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: 50.0,
                                    height: 6.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 9.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Source Account',
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 25.0),
                                child: Text(
                                  'Select the account you want to see your cheques.',
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
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                              ),
                            ],
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                          Builder(
                            builder: (context) {
                              final accounts =
                                  FFAppState().AccountsState.toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: accounts.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 17.0),
                                itemBuilder: (context, accountsIndex) {
                                  final accountsItem = accounts[accountsIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.callBack?.call(
                                        accountsItem,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.accountCardModels1.getModel(
                                        accountsItem.accountNumber,
                                        accountsIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: AccountCardWidget(
                                        key: Key(
                                          'Keyjyl_${accountsItem.accountNumber}',
                                        ),
                                        accountName:
                                            accountsItem.accountType?.name,
                                        accountNumber:
                                            accountsItem.accountNumber,
                                        accountBalance:
                                            accountsItem.availableBalance,
                                        currency: 'PHP',
                                      ),
                                    ),
                                  ).animateOnPageLoad(
                                    animationsMap[
                                        'accountCardOnPageLoadAnimation']!,
                                    effects: [
                                      FadeEffect(
                                        curve: Curves.easeInOut,
                                        delay: functions
                                            .multiplyAnimation(
                                                accountsIndex, 50, 200)!
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
                                                accountsIndex, 50, 500)!
                                            .toDouble()
                                            .ms,
                                        duration: functions
                                            .multiplyAnimation(
                                                accountsIndex, 50, 300)!
                                            .toDouble()
                                            .ms,
                                        begin: Offset(0.0, 100.0),
                                        end: Offset(0.0, 0.0),
                                      ),
                                      TintEffect(
                                        curve: Curves.easeInOut,
                                        delay: functions
                                            .multiplyAnimation(
                                                accountsIndex, 150, 300)!
                                            .toDouble()
                                            .ms,
                                        duration: functions
                                            .multiplyAnimation(
                                                accountsIndex, 100, 600)!
                                            .toDouble()
                                            .ms,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        begin: 1.0,
                                        end: 0.0,
                                      ),
                                      ScaleEffect(
                                        curve: Curves.easeInOut,
                                        delay: functions
                                            .multiplyAnimation(
                                                accountsIndex, 50, 400)!
                                            .toDouble()
                                            .ms,
                                        duration: functions
                                            .multiplyAnimation(
                                                accountsIndex, 50, 600)!
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
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation']!),
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Flexible(
              child: Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Container(
                  width: FFAppConstants.RightDrawerWidth,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 9.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Source Account',
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 25.0),
                            child: Text(
                              'Select the account you want to pay the bill from.',
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
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final accounts =
                                  FFAppState().AccountsState.toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: accounts.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 17.0),
                                itemBuilder: (context, accountsIndex) {
                                  final accountsItem = accounts[accountsIndex];
                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      await widget.callBack?.call(
                                        accountsItem,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model.accountCardModels2.getModel(
                                        accountsItem.accountNumber,
                                        accountsIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: AccountCardWidget(
                                        key: Key(
                                          'Keyaaw_${accountsItem.accountNumber}',
                                        ),
                                        accountName:
                                            accountsItem.accountType?.name,
                                        accountNumber:
                                            accountsItem.accountNumber,
                                        accountBalance:
                                            accountsItem.availableBalance,
                                        currency: 'PHP',
                                      ),
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
            ),
        ],
      ),
    );
  }
}
