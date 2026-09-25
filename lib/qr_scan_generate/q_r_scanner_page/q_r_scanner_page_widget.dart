import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components/custom_informational_dialog/custom_informational_dialog_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/qr_scan_generate/q_r_details_bottom_sheet/q_r_details_bottom_sheet_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'q_r_scanner_page_model.dart';
export 'q_r_scanner_page_model.dart';

class QRScannerPageWidget extends StatefulWidget {
  const QRScannerPageWidget({
    super.key,
    this.account,
  });

  final AccountsStruct? account;

  static String routeName = 'QRScannerPage';
  static String routePath = '/qrScannerPage';

  @override
  State<QRScannerPageWidget> createState() => _QRScannerPageWidgetState();
}

class _QRScannerPageWidgetState extends State<QRScannerPageWidget> {
  late QRScannerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QRScannerPageModel());

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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Builder(
                builder: (context) => Semantics(
                  label: 'QrScannerOverlayNew',
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: custom_widgets.QrScannerOverlayNew(
                      width: double.infinity,
                      height: double.infinity,
                      onDetect: (code) async {
                        _model.qRDecodeResponse = await WhitebankGroupAPIGroup
                            .retailQRPaymentDecodeCall
                            .call(
                          qrData: code,
                          accessToken: currentAuthenticationToken,
                          baseURL: FFDevEnvironmentValues().WBPBASEURL,
                        );

                        if (WhitebankGroupAPIGroup.retailQRPaymentDecodeCall
                            .isValid(
                          (_model.qRDecodeResponse?.jsonBody ?? ''),
                        )!) {
                          FFAppState().FundTransferiniatedResponse =
                              PaymentIniatedModelStruct(
                            destinationAccountNumber:
                                WBQRDecodeResponseStruct.maybeFromMap(
                                        (_model.qRDecodeResponse?.jsonBody ??
                                            ''))
                                    ?.recipient
                                    .accountNumber,
                            destinationAccountName:
                                WBQRDecodeResponseStruct.maybeFromMap(
                                        (_model.qRDecodeResponse?.jsonBody ??
                                            ''))
                                    ?.recipient
                                    .name,
                            bankName: WBQRDecodeResponseStruct.maybeFromMap(
                                    (_model.qRDecodeResponse?.jsonBody ?? ''))
                                ?.recipient
                                .bankName,
                            destinationBankCode:
                                WBQRDecodeResponseStruct.maybeFromMap(
                                        (_model.qRDecodeResponse?.jsonBody ??
                                            ''))
                                    ?.recipient
                                    .bankCode,
                            transferType: TransactionTypeKey.INSTAPAY.name,
                            sourceAccountNumber: FFAppState()
                                .AccountsState
                                .firstOrNull
                                ?.fullAccountNumber,
                            fee: 10.0,
                            currency: WhitebankGroupAPIGroup
                                .retailQRPaymentDecodeCall
                                .currency(
                              (_model.qRDecodeResponse?.jsonBody ?? ''),
                            ),
                          );
                          FFAppState().QRPaymentInitiateModelAppState =
                              WBQrPaymentInitiateModelStruct(
                            qrData: code,
                            sourceAccountNumber: FFAppState()
                                .AccountsState
                                .firstOrNull
                                ?.fullAccountNumber,
                            idempotencyKey: functions.createUuid(),
                          );
                          safeSetState(() {});
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return WebViewAware(
                                child: GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: QRDetailsBottomSheetWidget(
                                      callBack: () async {
                                        Navigator.pop(context);

                                        context.pushNamed(
                                          FundTransferAmountPageWidget
                                              .routeName,
                                          queryParameters: {
                                            'isQrPayment': serializeParam(
                                              true,
                                              ParamType.bool,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
                        } else {
                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, 0.0)
                                    .resolve(Directionality.of(context)),
                                child: WebViewAware(
                                  child: GestureDetector(
                                    onTap: () {
                                      FocusScope.of(dialogContext).unfocus();
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: CustomInformationalDialogWidget(
                                      message: valueOrDefault<String>(
                                        getJsonField(
                                          (_model.qRDecodeResponse?.jsonBody ??
                                              ''),
                                          r'''$.message''',
                                        )?.toString(),
                                        'Something went wrong!',
                                      ),
                                      primaryButtonTitle: 'Dismiss',
                                      title: valueOrDefault<String>(
                                        WhitebankGroupAPIGroup
                                            .retailQRPaymentDecodeCall
                                            .title(
                                          (_model.qRDecodeResponse?.jsonBody ??
                                              ''),
                                        ),
                                        'Oops!',
                                      ),
                                      primaryButtonAction: () async {
                                        Navigator.pop(context);
                                      },
                                      secondaryButtonAction: () async {},
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }

                        safeSetState(() {});
                      },
                      generateQr: () async {
                        context.safePop();

                        context.pushNamed(
                          ReceiveGenerateQRPageWidget.routeName,
                          queryParameters: {
                            'account': serializeParam(
                              FFAppState().AccountsState.firstOrNull,
                              ParamType.DataStruct,
                            ),
                          }.withoutNulls,
                        );
                      },
                      uploadQr: () async {},
                      transferFund: () async {
                        context.safePop();

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
                              '',
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
