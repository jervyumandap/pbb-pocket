import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'account_details_payment_bottom_sheet_model.dart';
export 'account_details_payment_bottom_sheet_model.dart';

class AccountDetailsPaymentBottomSheetWidget extends StatefulWidget {
  const AccountDetailsPaymentBottomSheetWidget({
    super.key,
    required this.accountList,
    required this.accountListAction,
  });

  final List<AccountDetailsPaymentListStruct>? accountList;
  final Future Function(AccountDetailsPaymentListStruct selectedAccount)?
      accountListAction;

  @override
  State<AccountDetailsPaymentBottomSheetWidget> createState() =>
      _AccountDetailsPaymentBottomSheetWidgetState();
}

class _AccountDetailsPaymentBottomSheetWidgetState
    extends State<AccountDetailsPaymentBottomSheetWidget> {
  late AccountDetailsPaymentBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => AccountDetailsPaymentBottomSheetModel());

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
      height: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        border: Border.all(
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Builder(
          builder: (context) {
            final accountList = widget.accountList!.toList();

            return ListView.separated(
              padding: EdgeInsets.fromLTRB(
                0,
                20.0,
                0,
                0,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: accountList.length,
              separatorBuilder: (_, __) => SizedBox(height: 5.0),
              itemBuilder: (context, accountListIndex) {
                final accountListItem = accountList[accountListIndex];
                return Container(
                  width: 100.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 0.5,
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await widget.accountListAction?.call(
                        accountListItem,
                      );
                      Navigator.pop(context);
                    },
                    child: Stack(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  accountListItem.imageURL,
                                ).image,
                              ),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).secondary,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  accountListItem.accountName,
                                  'Account Name',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  accountListItem.accountRef,
                                  'Ref#',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .bodyMediumIsCustom,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
