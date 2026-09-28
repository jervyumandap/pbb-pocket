import '/backend/schema/structs/index.dart';
import '/components/account_details_component/account_details_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'expanding_container_model.dart';
export 'expanding_container_model.dart';

class ExpandingContainerWidget extends StatefulWidget {
  const ExpandingContainerWidget({
    super.key,
    String? category,
    this.accounts,
    required this.icon,
  }) : this.category = category ?? 'Deposit Accounts';

  final String category;
  final List<AccountModelStruct>? accounts;
  final Widget? icon;

  @override
  State<ExpandingContainerWidget> createState() =>
      _ExpandingContainerWidgetState();
}

class _ExpandingContainerWidgetState extends State<ExpandingContainerWidget>
    with TickerProviderStateMixin {
  late ExpandingContainerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpandingContainerModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: 0.0,
            end: 0.5,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: _model.isExpanded ? 8.0 : 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).base0,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.isExpanded = !_model.isExpanded;
                    safeSetState(() {});
                    if (_model.isExpanded) {
                      if (animationsMap['iconOnActionTriggerAnimation'] !=
                          null) {
                        await animationsMap['iconOnActionTriggerAnimation']!
                            .controller
                            .forward(from: 0.0);
                      }
                    } else {
                      if (animationsMap['iconOnActionTriggerAnimation'] !=
                          null) {
                        await animationsMap['iconOnActionTriggerAnimation']!
                            .controller
                            .reverse();
                      }
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              widget.icon!,
                              Text(
                                widget.category,
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyLargeFamily,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryLabel,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyLargeIsCustom,
                                    ),
                              ),
                              Container(
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).secondary,
                                  borderRadius: BorderRadius.circular(5.0),
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 0.0, 6.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.accounts?.length.toString(),
                                      '1',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmallFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .whiteText,
                                          fontSize: 10.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodySmallIsCustom,
                                        ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                          Icon(
                            Icons.expand_more,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 24.0,
                          ).animateOnActionTrigger(
                            animationsMap['iconOnActionTriggerAnimation']!,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (_model.isExpanded)
                  Container(
                    width: double.infinity,
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).neutral10,
                      ),
                    ),
                  ),
                if (_model.isExpanded)
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      wrapWithModel(
                        model: _model.accountDetailsComponentModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: AccountDetailsComponentWidget(
                          accountDetails: AccountModelStruct(
                            accountName: 'Current Account',
                            accountNumber: '0901231234',
                            accountBalance: 500000.00,
                            currency: 'PHP',
                            subtitle: 'Available Balance',
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.accountDetailsComponentModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: AccountDetailsComponentWidget(
                          accountDetails: AccountModelStruct(
                            accountName: 'Savings Account',
                            accountNumber: '0901299999',
                            accountBalance: 9900.68,
                            currency: 'PHP',
                            subtitle: 'Available Balance',
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.accountDetailsComponentModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: AccountDetailsComponentWidget(
                          accountDetails: AccountModelStruct(
                            accountName: 'Savings Account',
                            accountNumber: '0901299999',
                            accountBalance: 9900.68,
                            currency: 'PHP',
                            subtitle: 'Available Balance',
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
    );
  }
}
