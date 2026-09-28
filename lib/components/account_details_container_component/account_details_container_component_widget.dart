import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'account_details_container_component_model.dart';
export 'account_details_container_component_model.dart';

class AccountDetailsContainerComponentWidget extends StatefulWidget {
  const AccountDetailsContainerComponentWidget({
    super.key,
    required this.accountNumber,
    this.imageUrl,
    required this.accountName,
    required this.icon,
  });

  final int? accountNumber;
  final String? imageUrl;
  final String? accountName;
  final Widget? icon;

  @override
  State<AccountDetailsContainerComponentWidget> createState() =>
      _AccountDetailsContainerComponentWidgetState();
}

class _AccountDetailsContainerComponentWidgetState
    extends State<AccountDetailsContainerComponentWidget> {
  late AccountDetailsContainerComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AccountDetailsContainerComponentModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).bgThemeColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24.0),
              child: Image.network(
                valueOrDefault<String>(
                  widget.imageUrl,
                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
                ),
                width: 48.0,
                height: 48.0,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.accountName,
                      'Allen',
                    ),
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: Color(0xFF090A0A),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleMediumIsCustom,
                        ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.accountNumber?.toString(),
                      '34234324234',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyMediumIsCustom,
                        ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
            Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                color: Color(0xFF1A9AAD),
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: widget.icon!,
              ),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
