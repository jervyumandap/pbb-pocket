import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_card/fund_transfer_card_widget.dart';
import 'package:flutter/material.dart';
import 'deposit_accounts_listview_component_model.dart';
export 'deposit_accounts_listview_component_model.dart';

class DepositAccountsListviewComponentWidget extends StatefulWidget {
  const DepositAccountsListviewComponentWidget({
    super.key,
    required this.depositAccounts,
  });

  final List<DepositAccountsStruct>? depositAccounts;

  @override
  State<DepositAccountsListviewComponentWidget> createState() =>
      _DepositAccountsListviewComponentWidgetState();
}

class _DepositAccountsListviewComponentWidgetState
    extends State<DepositAccountsListviewComponentWidget> {
  late DepositAccountsListviewComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => DepositAccountsListviewComponentModel());

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
      padding: EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        height: 300.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Builder(
                  builder: (context) {
                    final listDepositAccounts =
                        widget.depositAccounts!.toList();

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listDepositAccounts.length,
                      separatorBuilder: (_, __) => SizedBox(height: 12.0),
                      itemBuilder: (context, listDepositAccountsIndex) {
                        final listDepositAccountsItem =
                            listDepositAccounts[listDepositAccountsIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.selectedAccount = listDepositAccountsItem;
                            safeSetState(() {});
                            if (() {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return true;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return true;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return false;
                              } else {
                                return true;
                              }
                            }()) {
                              Navigator.pop(context, _model.selectedAccount);
                              return;
                            } else {
                              Navigator.pop(context, _model.selectedAccount);
                              return;
                            }
                          },
                          child: wrapWithModel(
                            model: _model.fundTransferCardModels.getModel(
                              listDepositAccountsIndex.toString(),
                              listDepositAccountsIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: FundTransferCardWidget(
                              key: Key(
                                'Keydsi_${listDepositAccountsIndex.toString()}',
                              ),
                              accountName: valueOrDefault<String>(
                                listDepositAccountsItem.acntsAcName1,
                                '-',
                              ),
                              accountNumber: valueOrDefault<String>(
                                listDepositAccountsItem.iaclinkActualAcnum,
                                '-',
                              ),
                              accountBank: '',
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
