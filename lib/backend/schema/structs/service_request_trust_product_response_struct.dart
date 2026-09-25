// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceRequestTrustProductResponseStruct extends BaseStruct {
  ServiceRequestTrustProductResponseStruct({
    NationalityStruct? nationality,
    InvestibleFundsStruct? investibleFunds,
    InvestmentObjectiveStruct? investmentObjective,
    InvestmentHorizonStruct? investmentHorizon,
    InvestmentAllocationStruct? investmentAllocation,
    RiskToleranceStruct? riskTolerance,
    NetWorthLast2YearsStruct? netWorthLast2Years,
  })  : _nationality = nationality,
        _investibleFunds = investibleFunds,
        _investmentObjective = investmentObjective,
        _investmentHorizon = investmentHorizon,
        _investmentAllocation = investmentAllocation,
        _riskTolerance = riskTolerance,
        _netWorthLast2Years = netWorthLast2Years;

  // "nationality" field.
  NationalityStruct? _nationality;
  NationalityStruct get nationality => _nationality ?? NationalityStruct();
  set nationality(NationalityStruct? val) => _nationality = val;

  void updateNationality(Function(NationalityStruct) updateFn) {
    updateFn(_nationality ??= NationalityStruct());
  }

  bool hasNationality() => _nationality != null;

  // "investibleFunds" field.
  InvestibleFundsStruct? _investibleFunds;
  InvestibleFundsStruct get investibleFunds =>
      _investibleFunds ?? InvestibleFundsStruct();
  set investibleFunds(InvestibleFundsStruct? val) => _investibleFunds = val;

  void updateInvestibleFunds(Function(InvestibleFundsStruct) updateFn) {
    updateFn(_investibleFunds ??= InvestibleFundsStruct());
  }

  bool hasInvestibleFunds() => _investibleFunds != null;

  // "investmentObjective" field.
  InvestmentObjectiveStruct? _investmentObjective;
  InvestmentObjectiveStruct get investmentObjective =>
      _investmentObjective ?? InvestmentObjectiveStruct();
  set investmentObjective(InvestmentObjectiveStruct? val) =>
      _investmentObjective = val;

  void updateInvestmentObjective(Function(InvestmentObjectiveStruct) updateFn) {
    updateFn(_investmentObjective ??= InvestmentObjectiveStruct());
  }

  bool hasInvestmentObjective() => _investmentObjective != null;

  // "investmentHorizon" field.
  InvestmentHorizonStruct? _investmentHorizon;
  InvestmentHorizonStruct get investmentHorizon =>
      _investmentHorizon ?? InvestmentHorizonStruct();
  set investmentHorizon(InvestmentHorizonStruct? val) =>
      _investmentHorizon = val;

  void updateInvestmentHorizon(Function(InvestmentHorizonStruct) updateFn) {
    updateFn(_investmentHorizon ??= InvestmentHorizonStruct());
  }

  bool hasInvestmentHorizon() => _investmentHorizon != null;

  // "investmentAllocation" field.
  InvestmentAllocationStruct? _investmentAllocation;
  InvestmentAllocationStruct get investmentAllocation =>
      _investmentAllocation ?? InvestmentAllocationStruct();
  set investmentAllocation(InvestmentAllocationStruct? val) =>
      _investmentAllocation = val;

  void updateInvestmentAllocation(
      Function(InvestmentAllocationStruct) updateFn) {
    updateFn(_investmentAllocation ??= InvestmentAllocationStruct());
  }

  bool hasInvestmentAllocation() => _investmentAllocation != null;

  // "riskTolerance" field.
  RiskToleranceStruct? _riskTolerance;
  RiskToleranceStruct get riskTolerance =>
      _riskTolerance ?? RiskToleranceStruct();
  set riskTolerance(RiskToleranceStruct? val) => _riskTolerance = val;

  void updateRiskTolerance(Function(RiskToleranceStruct) updateFn) {
    updateFn(_riskTolerance ??= RiskToleranceStruct());
  }

  bool hasRiskTolerance() => _riskTolerance != null;

  // "netWorthLast2Years" field.
  NetWorthLast2YearsStruct? _netWorthLast2Years;
  NetWorthLast2YearsStruct get netWorthLast2Years =>
      _netWorthLast2Years ?? NetWorthLast2YearsStruct();
  set netWorthLast2Years(NetWorthLast2YearsStruct? val) =>
      _netWorthLast2Years = val;

  void updateNetWorthLast2Years(Function(NetWorthLast2YearsStruct) updateFn) {
    updateFn(_netWorthLast2Years ??= NetWorthLast2YearsStruct());
  }

  bool hasNetWorthLast2Years() => _netWorthLast2Years != null;

  static ServiceRequestTrustProductResponseStruct fromMap(
          Map<String, dynamic> data) =>
      ServiceRequestTrustProductResponseStruct(
        nationality: data['nationality'] is NationalityStruct
            ? data['nationality']
            : NationalityStruct.maybeFromMap(data['nationality']),
        investibleFunds: data['investibleFunds'] is InvestibleFundsStruct
            ? data['investibleFunds']
            : InvestibleFundsStruct.maybeFromMap(data['investibleFunds']),
        investmentObjective:
            data['investmentObjective'] is InvestmentObjectiveStruct
                ? data['investmentObjective']
                : InvestmentObjectiveStruct.maybeFromMap(
                    data['investmentObjective']),
        investmentHorizon: data['investmentHorizon'] is InvestmentHorizonStruct
            ? data['investmentHorizon']
            : InvestmentHorizonStruct.maybeFromMap(data['investmentHorizon']),
        investmentAllocation:
            data['investmentAllocation'] is InvestmentAllocationStruct
                ? data['investmentAllocation']
                : InvestmentAllocationStruct.maybeFromMap(
                    data['investmentAllocation']),
        riskTolerance: data['riskTolerance'] is RiskToleranceStruct
            ? data['riskTolerance']
            : RiskToleranceStruct.maybeFromMap(data['riskTolerance']),
        netWorthLast2Years: data['netWorthLast2Years']
                is NetWorthLast2YearsStruct
            ? data['netWorthLast2Years']
            : NetWorthLast2YearsStruct.maybeFromMap(data['netWorthLast2Years']),
      );

  static ServiceRequestTrustProductResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ServiceRequestTrustProductResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'nationality': _nationality?.toMap(),
        'investibleFunds': _investibleFunds?.toMap(),
        'investmentObjective': _investmentObjective?.toMap(),
        'investmentHorizon': _investmentHorizon?.toMap(),
        'investmentAllocation': _investmentAllocation?.toMap(),
        'riskTolerance': _riskTolerance?.toMap(),
        'netWorthLast2Years': _netWorthLast2Years?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nationality': serializeParam(
          _nationality,
          ParamType.DataStruct,
        ),
        'investibleFunds': serializeParam(
          _investibleFunds,
          ParamType.DataStruct,
        ),
        'investmentObjective': serializeParam(
          _investmentObjective,
          ParamType.DataStruct,
        ),
        'investmentHorizon': serializeParam(
          _investmentHorizon,
          ParamType.DataStruct,
        ),
        'investmentAllocation': serializeParam(
          _investmentAllocation,
          ParamType.DataStruct,
        ),
        'riskTolerance': serializeParam(
          _riskTolerance,
          ParamType.DataStruct,
        ),
        'netWorthLast2Years': serializeParam(
          _netWorthLast2Years,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ServiceRequestTrustProductResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ServiceRequestTrustProductResponseStruct(
        nationality: deserializeStructParam(
          data['nationality'],
          ParamType.DataStruct,
          false,
          structBuilder: NationalityStruct.fromSerializableMap,
        ),
        investibleFunds: deserializeStructParam(
          data['investibleFunds'],
          ParamType.DataStruct,
          false,
          structBuilder: InvestibleFundsStruct.fromSerializableMap,
        ),
        investmentObjective: deserializeStructParam(
          data['investmentObjective'],
          ParamType.DataStruct,
          false,
          structBuilder: InvestmentObjectiveStruct.fromSerializableMap,
        ),
        investmentHorizon: deserializeStructParam(
          data['investmentHorizon'],
          ParamType.DataStruct,
          false,
          structBuilder: InvestmentHorizonStruct.fromSerializableMap,
        ),
        investmentAllocation: deserializeStructParam(
          data['investmentAllocation'],
          ParamType.DataStruct,
          false,
          structBuilder: InvestmentAllocationStruct.fromSerializableMap,
        ),
        riskTolerance: deserializeStructParam(
          data['riskTolerance'],
          ParamType.DataStruct,
          false,
          structBuilder: RiskToleranceStruct.fromSerializableMap,
        ),
        netWorthLast2Years: deserializeStructParam(
          data['netWorthLast2Years'],
          ParamType.DataStruct,
          false,
          structBuilder: NetWorthLast2YearsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ServiceRequestTrustProductResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServiceRequestTrustProductResponseStruct &&
        nationality == other.nationality &&
        investibleFunds == other.investibleFunds &&
        investmentObjective == other.investmentObjective &&
        investmentHorizon == other.investmentHorizon &&
        investmentAllocation == other.investmentAllocation &&
        riskTolerance == other.riskTolerance &&
        netWorthLast2Years == other.netWorthLast2Years;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nationality,
        investibleFunds,
        investmentObjective,
        investmentHorizon,
        investmentAllocation,
        riskTolerance,
        netWorthLast2Years
      ]);
}

ServiceRequestTrustProductResponseStruct
    createServiceRequestTrustProductResponseStruct({
  NationalityStruct? nationality,
  InvestibleFundsStruct? investibleFunds,
  InvestmentObjectiveStruct? investmentObjective,
  InvestmentHorizonStruct? investmentHorizon,
  InvestmentAllocationStruct? investmentAllocation,
  RiskToleranceStruct? riskTolerance,
  NetWorthLast2YearsStruct? netWorthLast2Years,
}) =>
        ServiceRequestTrustProductResponseStruct(
          nationality: nationality ?? NationalityStruct(),
          investibleFunds: investibleFunds ?? InvestibleFundsStruct(),
          investmentObjective:
              investmentObjective ?? InvestmentObjectiveStruct(),
          investmentHorizon: investmentHorizon ?? InvestmentHorizonStruct(),
          investmentAllocation:
              investmentAllocation ?? InvestmentAllocationStruct(),
          riskTolerance: riskTolerance ?? RiskToleranceStruct(),
          netWorthLast2Years: netWorthLast2Years ?? NetWorthLast2YearsStruct(),
        );
