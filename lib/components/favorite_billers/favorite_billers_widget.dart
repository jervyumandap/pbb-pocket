import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorite_billers_model.dart';
export 'favorite_billers_model.dart';

/// Create a component with favorite billes and person to send money to
class FavoriteBillersWidget extends StatefulWidget {
  const FavoriteBillersWidget({
    super.key,
    this.action1,
    this.action2,
  });

  final Future Function()? action1;
  final Future Function()? action2;

  @override
  State<FavoriteBillersWidget> createState() => _FavoriteBillersWidgetState();
}

class _FavoriteBillersWidgetState extends State<FavoriteBillersWidget> {
  late FavoriteBillersModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoriteBillersModel());

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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.action1?.call();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Hero(
                      tag: 'image',
                      transitionOnUserGestures: true,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1534694895098-4b226f923532?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjYwMzgxOTl8&ixlib=rb-4.1.0&q=80&w=1080',
                          width: 130.0,
                          height: 130.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'Ben U.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFE2F1F5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/image-13.png',
                          ).image,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFF599FF5),
                          width: 2.0,
                        ),
                      ),
                    ),
                    Text(
                      'Miguel F.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .labelMediumIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(height: 8.0)),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.action2?.call();
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 130.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          color: valueOrDefault<Color>(
                            FFAppState().prefModeOfContacts == false
                                ? Color(0xFFC5DDC9)
                                : Color(0xAADAF8FF),
                            FlutterFlowTheme.of(context).tertiary,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: valueOrDefault<Color>(
                              FFAppState().prefModeOfContacts == false
                                  ? Color(0xFF75DA94)
                                  : FlutterFlowTheme.of(context).primary,
                              Color(0xAADAF8FF),
                            ),
                            width: 2.0,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_outward,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 60.0,
                        ),
                      ),
                      Text(
                        'Send',
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .labelMediumFamily,
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .labelMediumIsCustom,
                                ),
                      ),
                    ].divide(SizedBox(height: 8.0)),
                  ),
                ),
                Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [],
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ].divide(SizedBox(height: 12.0)),
      ),
    );
  }
}
