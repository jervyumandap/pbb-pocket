import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'notification_event_types_model.dart';
export 'notification_event_types_model.dart';

class NotificationEventTypesWidget extends StatefulWidget {
  const NotificationEventTypesWidget({
    super.key,
    required this.notificationEvents,
    this.eventToggle,
  });

  final NotificationEventTypesStruct? notificationEvents;
  final Future Function(bool? eventToggle)? eventToggle;

  @override
  State<NotificationEventTypesWidget> createState() =>
      _NotificationEventTypesWidgetState();
}

class _NotificationEventTypesWidgetState
    extends State<NotificationEventTypesWidget> {
  late NotificationEventTypesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationEventTypesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBackground,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.notificationEvents?.name,
                      'notifname',
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineLargeFamily,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: !FlutterFlowTheme.of(context)
                              .headlineLargeIsCustom,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.notificationEvents?.description,
                      'eventDescription',
                    ),
                    maxLines: 3,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: Color(0xFF6A7282),
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: 120.0,
                      maxWidth: 160.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sms_failed_outlined,
                            color: Color(0xFF00A8B5),
                            size: 24.0,
                          ),
                          Text(
                            ' SMS  ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontSize: 11.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .bodyMediumIsCustom,
                                ),
                          ),
                          Icon(
                            Icons.circle,
                            color: () {
                              if ((widget.notificationEvents?.sms.available ==
                                      false) ||
                                  (widget.notificationEvents?.enabled ==
                                      false)) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget
                                      .notificationEvents?.sms.enabled ==
                                  false) {
                                return FlutterFlowTheme.of(context).error;
                              } else {
                                return FlutterFlowTheme.of(context).success;
                              }
                            }(),
                            size: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      minWidth: 120.0,
                      maxWidth: 160.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9FAFB),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.bell,
                            color: Color(0xFF00A8B5),
                            size: 24.0,
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: Text(
                              ' Push Notif  ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.circle,
                            color: () {
                              if ((widget.notificationEvents?.push
                                          .available ==
                                      false) ||
                                  (widget.notificationEvents?.enabled ==
                                      false)) {
                                return FlutterFlowTheme.of(context).accent4;
                              } else if (widget
                                      .notificationEvents?.push.enabled ==
                                  false) {
                                return FlutterFlowTheme.of(context).error;
                              } else {
                                return FlutterFlowTheme.of(context).success;
                              }
                            }(),
                            size: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ].divide(SizedBox(width: 16.0)),
            ),
          ),
        ],
      ),
    );
  }
}
