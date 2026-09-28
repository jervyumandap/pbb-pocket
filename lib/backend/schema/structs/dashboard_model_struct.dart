// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DashboardModelStruct extends BaseStruct {
  DashboardModelStruct({
    List<AccountsStruct>? accounts,
    TotalBalanceStruct? totalBalance,
    List<RecentTransactionsStruct>? recentTransactions,
    List<QuickActionsStruct>? quickActions,
    String? lastRefreshedAt,
    String? cbsStatus,
  })  : _accounts = accounts,
        _totalBalance = totalBalance,
        _recentTransactions = recentTransactions,
        _quickActions = quickActions,
        _lastRefreshedAt = lastRefreshedAt,
        _cbsStatus = cbsStatus;

  // "accounts" field.
  List<AccountsStruct>? _accounts;
  List<AccountsStruct> get accounts => _accounts ?? const [];
  set accounts(List<AccountsStruct>? val) => _accounts = val;

  void updateAccounts(Function(List<AccountsStruct>) updateFn) {
    updateFn(_accounts ??= []);
  }

  bool hasAccounts() => _accounts != null;

  // "totalBalance" field.
  TotalBalanceStruct? _totalBalance;
  TotalBalanceStruct get totalBalance => _totalBalance ?? TotalBalanceStruct();
  set totalBalance(TotalBalanceStruct? val) => _totalBalance = val;

  void updateTotalBalance(Function(TotalBalanceStruct) updateFn) {
    updateFn(_totalBalance ??= TotalBalanceStruct());
  }

  bool hasTotalBalance() => _totalBalance != null;

  // "recentTransactions" field.
  List<RecentTransactionsStruct>? _recentTransactions;
  List<RecentTransactionsStruct> get recentTransactions =>
      _recentTransactions ?? const [];
  set recentTransactions(List<RecentTransactionsStruct>? val) =>
      _recentTransactions = val;

  void updateRecentTransactions(
      Function(List<RecentTransactionsStruct>) updateFn) {
    updateFn(_recentTransactions ??= []);
  }

  bool hasRecentTransactions() => _recentTransactions != null;

  // "quickActions" field.
  List<QuickActionsStruct>? _quickActions;
  List<QuickActionsStruct> get quickActions => _quickActions ?? const [];
  set quickActions(List<QuickActionsStruct>? val) => _quickActions = val;

  void updateQuickActions(Function(List<QuickActionsStruct>) updateFn) {
    updateFn(_quickActions ??= []);
  }

  bool hasQuickActions() => _quickActions != null;

  // "lastRefreshedAt" field.
  String? _lastRefreshedAt;
  String get lastRefreshedAt => _lastRefreshedAt ?? '';
  set lastRefreshedAt(String? val) => _lastRefreshedAt = val;

  bool hasLastRefreshedAt() => _lastRefreshedAt != null;

  // "cbsStatus" field.
  String? _cbsStatus;
  String get cbsStatus => _cbsStatus ?? '';
  set cbsStatus(String? val) => _cbsStatus = val;

  bool hasCbsStatus() => _cbsStatus != null;

  static DashboardModelStruct fromMap(Map<String, dynamic> data) =>
      DashboardModelStruct(
        accounts: getStructList(
          data['accounts'],
          AccountsStruct.fromMap,
        ),
        totalBalance: data['totalBalance'] is TotalBalanceStruct
            ? data['totalBalance']
            : TotalBalanceStruct.maybeFromMap(data['totalBalance']),
        recentTransactions: getStructList(
          data['recentTransactions'],
          RecentTransactionsStruct.fromMap,
        ),
        quickActions: getStructList(
          data['quickActions'],
          QuickActionsStruct.fromMap,
        ),
        lastRefreshedAt: data['lastRefreshedAt'] as String?,
        cbsStatus: data['cbsStatus'] as String?,
      );

  static DashboardModelStruct? maybeFromMap(dynamic data) => data is Map
      ? DashboardModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accounts': _accounts?.map((e) => e.toMap()).toList(),
        'totalBalance': _totalBalance?.toMap(),
        'recentTransactions':
            _recentTransactions?.map((e) => e.toMap()).toList(),
        'quickActions': _quickActions?.map((e) => e.toMap()).toList(),
        'lastRefreshedAt': _lastRefreshedAt,
        'cbsStatus': _cbsStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accounts': serializeParam(
          _accounts,
          ParamType.DataStruct,
          isList: true,
        ),
        'totalBalance': serializeParam(
          _totalBalance,
          ParamType.DataStruct,
        ),
        'recentTransactions': serializeParam(
          _recentTransactions,
          ParamType.DataStruct,
          isList: true,
        ),
        'quickActions': serializeParam(
          _quickActions,
          ParamType.DataStruct,
          isList: true,
        ),
        'lastRefreshedAt': serializeParam(
          _lastRefreshedAt,
          ParamType.String,
        ),
        'cbsStatus': serializeParam(
          _cbsStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static DashboardModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      DashboardModelStruct(
        accounts: deserializeStructParam<AccountsStruct>(
          data['accounts'],
          ParamType.DataStruct,
          true,
          structBuilder: AccountsStruct.fromSerializableMap,
        ),
        totalBalance: deserializeStructParam(
          data['totalBalance'],
          ParamType.DataStruct,
          false,
          structBuilder: TotalBalanceStruct.fromSerializableMap,
        ),
        recentTransactions: deserializeStructParam<RecentTransactionsStruct>(
          data['recentTransactions'],
          ParamType.DataStruct,
          true,
          structBuilder: RecentTransactionsStruct.fromSerializableMap,
        ),
        quickActions: deserializeStructParam<QuickActionsStruct>(
          data['quickActions'],
          ParamType.DataStruct,
          true,
          structBuilder: QuickActionsStruct.fromSerializableMap,
        ),
        lastRefreshedAt: deserializeParam(
          data['lastRefreshedAt'],
          ParamType.String,
          false,
        ),
        cbsStatus: deserializeParam(
          data['cbsStatus'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DashboardModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DashboardModelStruct &&
        listEquality.equals(accounts, other.accounts) &&
        totalBalance == other.totalBalance &&
        listEquality.equals(recentTransactions, other.recentTransactions) &&
        listEquality.equals(quickActions, other.quickActions) &&
        lastRefreshedAt == other.lastRefreshedAt &&
        cbsStatus == other.cbsStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accounts,
        totalBalance,
        recentTransactions,
        quickActions,
        lastRefreshedAt,
        cbsStatus
      ]);
}

DashboardModelStruct createDashboardModelStruct({
  TotalBalanceStruct? totalBalance,
  String? lastRefreshedAt,
  String? cbsStatus,
}) =>
    DashboardModelStruct(
      totalBalance: totalBalance ?? TotalBalanceStruct(),
      lastRefreshedAt: lastRefreshedAt,
      cbsStatus: cbsStatus,
    );
