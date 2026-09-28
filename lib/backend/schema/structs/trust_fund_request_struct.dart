// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrustFundRequestStruct extends BaseStruct {
  TrustFundRequestStruct({
    String? accountNumber,
    String? nationality,
    String? investibleFunds,
    String? investmentObjective,
    String? investmentHorizon,
    String? investmentAllocation,
    String? riskTolerance,
    String? netWorthLast2Years,
    String? idempotencyKey,
  })  : _accountNumber = accountNumber,
        _nationality = nationality,
        _investibleFunds = investibleFunds,
        _investmentObjective = investmentObjective,
        _investmentHorizon = investmentHorizon,
        _investmentAllocation = investmentAllocation,
        _riskTolerance = riskTolerance,
        _netWorthLast2Years = netWorthLast2Years,
        _idempotencyKey = idempotencyKey;

  // "accountNumber" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  set nationality(String? val) => _nationality = val;

  bool hasNationality() => _nationality != null;

  // "investibleFunds" field.
  String? _investibleFunds;
  String get investibleFunds => _investibleFunds ?? '';
  set investibleFunds(String? val) => _investibleFunds = val;

  bool hasInvestibleFunds() => _investibleFunds != null;

  // "investmentObjective" field.
  String? _investmentObjective;
  String get investmentObjective => _investmentObjective ?? '';
  set investmentObjective(String? val) => _investmentObjective = val;

  bool hasInvestmentObjective() => _investmentObjective != null;

  // "investmentHorizon" field.
  String? _investmentHorizon;
  String get investmentHorizon => _investmentHorizon ?? '';
  set investmentHorizon(String? val) => _investmentHorizon = val;

  bool hasInvestmentHorizon() => _investmentHorizon != null;

  // "investmentAllocation" field.
  String? _investmentAllocation;
  String get investmentAllocation => _investmentAllocation ?? '';
  set investmentAllocation(String? val) => _investmentAllocation = val;

  bool hasInvestmentAllocation() => _investmentAllocation != null;

  // "riskTolerance" field.
  String? _riskTolerance;
  String get riskTolerance => _riskTolerance ?? '';
  set riskTolerance(String? val) => _riskTolerance = val;

  bool hasRiskTolerance() => _riskTolerance != null;

  // "netWorthLast2Years" field.
  String? _netWorthLast2Years;
  String get netWorthLast2Years => _netWorthLast2Years ?? '';
  set netWorthLast2Years(String? val) => _netWorthLast2Years = val;

  bool hasNetWorthLast2Years() => _netWorthLast2Years != null;

  // "idempotencyKey" field.
  String? _idempotencyKey;
  String get idempotencyKey => _idempotencyKey ?? '';
  set idempotencyKey(String? val) => _idempotencyKey = val;

  bool hasIdempotencyKey() => _idempotencyKey != null;

  static TrustFundRequestStruct fromMap(Map<String, dynamic> data) =>
      TrustFundRequestStruct(
        accountNumber: data['accountNumber'] as String?,
        nationality: data['nationality'] as String?,
        investibleFunds: data['investibleFunds'] as String?,
        investmentObjective: data['investmentObjective'] as String?,
        investmentHorizon: data['investmentHorizon'] as String?,
        investmentAllocation: data['investmentAllocation'] as String?,
        riskTolerance: data['riskTolerance'] as String?,
        netWorthLast2Years: data['netWorthLast2Years'] as String?,
        idempotencyKey: data['idempotencyKey'] as String?,
      );

  static TrustFundRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? TrustFundRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountNumber': _accountNumber,
        'nationality': _nationality,
        'investibleFunds': _investibleFunds,
        'investmentObjective': _investmentObjective,
        'investmentHorizon': _investmentHorizon,
        'investmentAllocation': _investmentAllocation,
        'riskTolerance': _riskTolerance,
        'netWorthLast2Years': _netWorthLast2Years,
        'idempotencyKey': _idempotencyKey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountNumber': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'nationality': serializeParam(
          _nationality,
          ParamType.String,
        ),
        'investibleFunds': serializeParam(
          _investibleFunds,
          ParamType.String,
        ),
        'investmentObjective': serializeParam(
          _investmentObjective,
          ParamType.String,
        ),
        'investmentHorizon': serializeParam(
          _investmentHorizon,
          ParamType.String,
        ),
        'investmentAllocation': serializeParam(
          _investmentAllocation,
          ParamType.String,
        ),
        'riskTolerance': serializeParam(
          _riskTolerance,
          ParamType.String,
        ),
        'netWorthLast2Years': serializeParam(
          _netWorthLast2Years,
          ParamType.String,
        ),
        'idempotencyKey': serializeParam(
          _idempotencyKey,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrustFundRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TrustFundRequestStruct(
        accountNumber: deserializeParam(
          data['accountNumber'],
          ParamType.String,
          false,
        ),
        nationality: deserializeParam(
          data['nationality'],
          ParamType.String,
          false,
        ),
        investibleFunds: deserializeParam(
          data['investibleFunds'],
          ParamType.String,
          false,
        ),
        investmentObjective: deserializeParam(
          data['investmentObjective'],
          ParamType.String,
          false,
        ),
        investmentHorizon: deserializeParam(
          data['investmentHorizon'],
          ParamType.String,
          false,
        ),
        investmentAllocation: deserializeParam(
          data['investmentAllocation'],
          ParamType.String,
          false,
        ),
        riskTolerance: deserializeParam(
          data['riskTolerance'],
          ParamType.String,
          false,
        ),
        netWorthLast2Years: deserializeParam(
          data['netWorthLast2Years'],
          ParamType.String,
          false,
        ),
        idempotencyKey: deserializeParam(
          data['idempotencyKey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrustFundRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrustFundRequestStruct &&
        accountNumber == other.accountNumber &&
        nationality == other.nationality &&
        investibleFunds == other.investibleFunds &&
        investmentObjective == other.investmentObjective &&
        investmentHorizon == other.investmentHorizon &&
        investmentAllocation == other.investmentAllocation &&
        riskTolerance == other.riskTolerance &&
        netWorthLast2Years == other.netWorthLast2Years &&
        idempotencyKey == other.idempotencyKey;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accountNumber,
        nationality,
        investibleFunds,
        investmentObjective,
        investmentHorizon,
        investmentAllocation,
        riskTolerance,
        netWorthLast2Years,
        idempotencyKey
      ]);
}

TrustFundRequestStruct createTrustFundRequestStruct({
  String? accountNumber,
  String? nationality,
  String? investibleFunds,
  String? investmentObjective,
  String? investmentHorizon,
  String? investmentAllocation,
  String? riskTolerance,
  String? netWorthLast2Years,
  String? idempotencyKey,
}) =>
    TrustFundRequestStruct(
      accountNumber: accountNumber,
      nationality: nationality,
      investibleFunds: investibleFunds,
      investmentObjective: investmentObjective,
      investmentHorizon: investmentHorizon,
      investmentAllocation: investmentAllocation,
      riskTolerance: riskTolerance,
      netWorthLast2Years: netWorthLast2Years,
      idempotencyKey: idempotencyKey,
    );
