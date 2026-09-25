import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/fund_transfer/fund_transfer_card/fund_transfer_card_widget.dart';
import 'package:flutter/material.dart';
import 'favorites_listview_component_model.dart';
export 'favorites_listview_component_model.dart';

class FavoritesListviewComponentWidget extends StatefulWidget {
  const FavoritesListviewComponentWidget({
    super.key,
    this.callback,
  });

  final Future Function()? callback;

  @override
  State<FavoritesListviewComponentWidget> createState() =>
      _FavoritesListviewComponentWidgetState();
}

class _FavoritesListviewComponentWidgetState
    extends State<FavoritesListviewComponentWidget> {
  late FavoritesListviewComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoritesListviewComponentModel());

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
                child: FutureBuilder<ApiCallResponse>(
                  future: SupabaseGroup.getFavoriteTransfersByIDCall.call(
                    userId: currentUserUid,
                    accessToken: currentAuthenticationToken,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).secondary,
                            ),
                          ),
                        ),
                      );
                    }
                    final listViewGetFavoriteTransfersByIDResponse =
                        snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final favorite =
                            (listViewGetFavoriteTransfersByIDResponse.jsonBody
                                            .toList()
                                            .map<FavoriteTransfersStruct?>(
                                                FavoriteTransfersStruct
                                                    .maybeFromMap)
                                            .toList()
                                        as Iterable<FavoriteTransfersStruct?>)
                                    .withoutNulls
                                    .toList() ??
                                [];

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
                                FFAppState().SelectedFavoriteFundTransfer =
                                    favoriteItem;
                                safeSetState(() {});
                                await widget.callback?.call();
                                Navigator.pop(context);
                              },
                              child: FundTransferCardWidget(
                                key: Key(
                                    'Key2sb_${favoriteIndex}_of_${favorite.length}'),
                                accountName: favoriteItem.accountName,
                                accountNumber: favoriteItem.accountNumber,
                                accountBank: favoriteItem.bank,
                              ),
                            );
                          },
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
