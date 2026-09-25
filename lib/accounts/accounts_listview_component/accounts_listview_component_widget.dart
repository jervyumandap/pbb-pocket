import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_card/fund_transfer_card_widget.dart';
import 'package:flutter/material.dart';
import 'accounts_listview_component_model.dart';
export 'accounts_listview_component_model.dart';

class AccountsListviewComponentWidget extends StatefulWidget {
  const AccountsListviewComponentWidget({
    super.key,
    required this.accounts,
    this.callback,
  });

  final List<AccountsV2Struct>? accounts;
  final Future Function()? callback;

  @override
  State<AccountsListviewComponentWidget> createState() =>
      _AccountsListviewComponentWidgetState();
}

class _AccountsListviewComponentWidgetState
    extends State<AccountsListviewComponentWidget> {
  late AccountsListviewComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccountsListviewComponentModel());

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
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/Home-_Wallet_(1).png',
            ).image,
          ),
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
                    final favorite = widget.accounts!.toList();

                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: favorite.length,
                      separatorBuilder: (_, __) => SizedBox(height: 12.0),
                      itemBuilder: (context, favoriteIndex) {
                        final favoriteItem = favorite[favoriteIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().accounts = favoriteItem;
                            FFAppState().update(() {});
                            await widget.callback?.call();
                            Navigator.pop(context);
                          },
                          child: FundTransferCardWidget(
                            key: Key(
                                'Keyn7n_${favoriteIndex}_of_${favorite.length}'),
                            accountName: favoriteItem.accountName,
                            accountNumber: favoriteItem.accountNumber,
                            accountBank: '',
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
