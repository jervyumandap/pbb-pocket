import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bills_payment_verification_component_model.dart';
export 'bills_payment_verification_component_model.dart';

class BillsPaymentVerificationComponentWidget extends StatefulWidget {
  const BillsPaymentVerificationComponentWidget({
    super.key,
    required this.continueCallback,
    required this.resendOtpCallback,
  });

  final Future Function()? continueCallback;
  final Future Function()? resendOtpCallback;

  @override
  State<BillsPaymentVerificationComponentWidget> createState() =>
      _BillsPaymentVerificationComponentWidgetState();
}

class _BillsPaymentVerificationComponentWidgetState
    extends State<BillsPaymentVerificationComponentWidget> {
  late BillsPaymentVerificationComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => BillsPaymentVerificationComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.otpHeader = FFAppState().SmsRequestHeaderAppState;
      _model.otpDetails = FFAppState().OTPDetailsAppState;
      _model.verifyOtpHeader = HeaderStruct(
        channelCode: 'cbxr',
        originatingChannelCode: 'cbxr',
        checkpointType: 'verifyotp',
        referenceNumber: 'FFTest${getCurrentTimestamp.toString()}',
      );
      _model.otpValidityDetails = ValidityDetailsStruct(
        pin: _model.pinCodeBpOtp!.text,
      );
      safeSetState(() {});
      _model.timerValidityController.onStartTimer();
    });

    _model.pinCodeBpOtpFocusNode ??= FocusNode();

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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 400.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'One-time Password',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                ),
                Text(
                  'Enter the 5-digit passcode that we have sent via the number ${_model.otpDetails?.countryCode}${_model.otpDetails?.mobileNumber}.',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).labelMediumFamily,
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).labelMediumIsCustom,
                      ),
                ),
                PinCodeTextField(
                  autoDisposeControllers: false,
                  appContext: context,
                  length: 5,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        letterSpacing: 0.0,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                      ),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  enableActiveFill: false,
                  autoFocus: true,
                  focusNode: _model.pinCodeBpOtpFocusNode,
                  enablePinAutofill: false,
                  errorTextSpace: 16.0,
                  showCursor: false,
                  cursorColor: FlutterFlowTheme.of(context).primary,
                  obscureText: false,
                  hintCharacter: '●',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  pinTheme: PinTheme(
                    fieldHeight: 44.0,
                    fieldWidth: 44.0,
                    borderWidth: valueOrDefault<double>(
                      (_model.pinCodeBpOtpFocusNode?.hasFocus ?? false)
                          ? 2.0
                          : 1.0,
                      2.0,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                      topLeft: Radius.circular(100.0),
                      topRight: Radius.circular(100.0),
                    ),
                    shape: PinCodeFieldShape.box,
                    activeColor: FlutterFlowTheme.of(context).primaryText,
                    inactiveColor: FlutterFlowTheme.of(context).alternate,
                    selectedColor: FlutterFlowTheme.of(context).primary,
                  ),
                  controller: _model.pinCodeBpOtp,
                  onChanged: (_) {},
                  onCompleted: (_) async {
                    safeSetState(() {});
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: _model.pinCodeBpOtpValidator.asValidator(context),
                ),
                FFButtonWidget(
                  onPressed: (_model.pinCodeBpOtp!.text == '')
                      ? null
                      : () async {
                          var _shouldSetState = false;
                          _model.otpValidityDetails = ValidityDetailsStruct(
                            pin: _model.pinCodeBpOtp!.text,
                          );
                          safeSetState(() {});
                          _model.verifyOtpTokenResponse =
                              await PbbGroup.oauthTokenCall.call(
                            channelCode: 'cbxr',
                            checkPoint: 'verifyotp',
                            grantType: 'password',
                            originatingChannelCode: 'cbxr',
                            baseURL: 'https://lumine.pbb.com.ph',
                          );

                          _shouldSetState = true;
                          if ((_model.verifyOtpTokenResponse?.succeeded ??
                              true)) {
                            _model.verifyOtpResponse =
                                await PbbGroup.smsCall.call(
                              baseURL: 'https://lumine.pbb.com.ph',
                              oAuthaccessToken:
                                  PbbGroup.oauthTokenCall.accesstoken(
                                (_model.verifyOtpTokenResponse?.jsonBody ?? ''),
                              ),
                              headerJson: _model.otpHeader?.toMap(),
                              checkpointKey: 'ValidityDetails',
                              checkpointDetailsJson:
                                  _model.otpValidityDetails?.toMap(),
                            );

                            _shouldSetState = true;
                            if ((_model.verifyOtpResponse?.succeeded ?? true)) {
                              await widget.continueCallback?.call();
                            } else {
                              if (_shouldSetState) safeSetState(() {});
                              return;
                            }
                          } else {
                            if (_shouldSetState) safeSetState(() {});
                            return;
                          }

                          if (_shouldSetState) safeSetState(() {});
                        },
                  text: 'Continue',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 44.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: Colors.white,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleSmallIsCustom,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(16.0),
                    disabledColor: FlutterFlowTheme.of(context).neutral9,
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    _model.updateOtpDetailsStruct(
                      (e) => e..pin = functions.createOTP(),
                    );
                    safeSetState(() {});
                    _model.timerValidityController.timer.setPresetTime(
                      mSec: valueOrDefault<int>(
                        (int.parse(_model.otpDetails!.validity)) * 1000,
                        180000,
                      ),
                      add: false,
                    );
                    _model.timerValidityController.onResetTimer();

                    await widget.resendOtpCallback?.call();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFDAF8FF),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Resend code (',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color: Color(0xFF00A8CF),
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                        FlutterFlowTimer(
                          initialTime: valueOrDefault<int>(
                            (int.parse(_model.otpDetails!.validity)) * 1000,
                            180000,
                          ),
                          getDisplayTime: (value) =>
                              StopWatchTimer.getDisplayTime(
                            value,
                            hours: false,
                            milliSecond: false,
                          ),
                          controller: _model.timerValidityController,
                          updateStateInterval: Duration(milliseconds: 1000),
                          onChanged: (value, displayTime, shouldUpdate) {
                            _model.timerValidityMilliseconds = value;
                            _model.timerValidityValue = displayTime;
                            if (shouldUpdate) safeSetState(() {});
                          },
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color: Color(0xFF00A8CF),
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                        Text(
                          ')',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyLargeFamily,
                                color: Color(0xFF00A8CF),
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .bodyLargeIsCustom,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 15.0)),
            ),
          ),
        ),
      ),
    );
  }
}
