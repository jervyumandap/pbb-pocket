import '/backend/schema/structs/index.dart';
import '/bills_payment/b_p_corp/b_p_corp_components/payment_from_account_list_item/payment_from_account_list_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'generate_q_r_from_account_bottom_sheet_model.dart';
export 'generate_q_r_from_account_bottom_sheet_model.dart';

class GenerateQRFromAccountBottomSheetWidget extends StatefulWidget {
  const GenerateQRFromAccountBottomSheetWidget({
    super.key,
    required this.callback,
  });

  final Future Function()? callback;

  @override
  State<GenerateQRFromAccountBottomSheetWidget> createState() =>
      _GenerateQRFromAccountBottomSheetWidgetState();
}

class _GenerateQRFromAccountBottomSheetWidgetState
    extends State<GenerateQRFromAccountBottomSheetWidget> {
  late GenerateQRFromAccountBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => GenerateQRFromAccountBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowIconButton(
                          borderRadius: 100.0,
                          buttonSize: 40.0,
                          icon: Icon(
                            Icons.credit_card,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                        Text(
                          'Select account',
                          style: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleLargeIsCustom,
                              ),
                        ),
                      ].divide(SizedBox(width: 8.0)),
                    ),
                    FlutterFlowIconButton(
                      borderRadius: 100.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  primary: false,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    wrapWithModel(
                      model: _model.paymentFromAccountListItemModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: PaymentFromAccountListItemWidget(
                        account: AccountsV2Struct(
                          id: 1,
                          createdAt: '',
                          userId: 1,
                          accountNumber: '1234567890',
                          accountName: 'SAVINGS',
                          balance: 150000.0,
                          currency: 'PHP',
                          status: 'active',
                          accountTypeId: '1',
                        ),
                        oauthToken: '',
                        calback: () async {
                          _model.selectedAccount = AccountsV2Struct(
                            id: 1,
                            createdAt: '',
                            userId: 1,
                            accountNumber: '1234567890',
                            accountName: 'SAVINGS',
                            balance: 150000.0,
                            currency: 'PHP',
                            status: 'active',
                            accountTypeId: '1',
                          );
                          safeSetState(() {});
                          FFAppState().GenerateQRFromAccountAppState =
                              _model.selectedAccount!;
                          safeSetState(() {});
                          await widget.callback?.call();
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.paymentFromAccountListItemModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: PaymentFromAccountListItemWidget(
                        account: AccountsV2Struct(
                          id: 1,
                          createdAt: '',
                          userId: 1,
                          accountNumber: '0987654321',
                          accountName: 'CURRENT',
                          balance: 25000.0,
                          currency: 'PHP',
                          status: 'active',
                          accountTypeId: '1',
                        ),
                        oauthToken: '',
                        calback: () async {
                          _model.selectedAccount = AccountsV2Struct(
                            id: 1,
                            createdAt: '',
                            userId: 1,
                            accountNumber: '0987654321',
                            accountName: 'CURRENT',
                            balance: 25000.0,
                            currency: 'PHP',
                            status: 'active',
                            accountTypeId: '1',
                          );
                          safeSetState(() {});
                          FFAppState().GenerateQRFromAccountAppState =
                              _model.selectedAccount!;
                          safeSetState(() {});
                          await widget.callback?.call();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
