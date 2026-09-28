// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanRepaymentListStruct extends BaseStruct {
  LoanRepaymentListStruct({
    String? loanAccountNumber,
    List<LoanRepaymentScheduleStruct>? schedule,
    double? totalPrincipal,
    double? totalInterest,
    double? totalAmount,
    double? remainingAmount,
    int? paymentsCounter,
    String? retrievedAt,
  })  : _loanAccountNumber = loanAccountNumber,
        _schedule = schedule,
        _totalPrincipal = totalPrincipal,
        _totalInterest = totalInterest,
        _totalAmount = totalAmount,
        _remainingAmount = remainingAmount,
        _paymentsCounter = paymentsCounter,
        _retrievedAt = retrievedAt;

  // "loanAccountNumber" field.
  String? _loanAccountNumber;
  String get loanAccountNumber => _loanAccountNumber ?? '';
  set loanAccountNumber(String? val) => _loanAccountNumber = val;

  bool hasLoanAccountNumber() => _loanAccountNumber != null;

  // "schedule" field.
  List<LoanRepaymentScheduleStruct>? _schedule;
  List<LoanRepaymentScheduleStruct> get schedule => _schedule ?? const [];
  set schedule(List<LoanRepaymentScheduleStruct>? val) => _schedule = val;

  void updateSchedule(Function(List<LoanRepaymentScheduleStruct>) updateFn) {
    updateFn(_schedule ??= []);
  }

  bool hasSchedule() => _schedule != null;

  // "totalPrincipal" field.
  double? _totalPrincipal;
  double get totalPrincipal => _totalPrincipal ?? 0.0;
  set totalPrincipal(double? val) => _totalPrincipal = val;

  void incrementTotalPrincipal(double amount) =>
      totalPrincipal = totalPrincipal + amount;

  bool hasTotalPrincipal() => _totalPrincipal != null;

  // "totalInterest" field.
  double? _totalInterest;
  double get totalInterest => _totalInterest ?? 0.0;
  set totalInterest(double? val) => _totalInterest = val;

  void incrementTotalInterest(double amount) =>
      totalInterest = totalInterest + amount;

  bool hasTotalInterest() => _totalInterest != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "remainingAmount" field.
  double? _remainingAmount;
  double get remainingAmount => _remainingAmount ?? 0.0;
  set remainingAmount(double? val) => _remainingAmount = val;

  void incrementRemainingAmount(double amount) =>
      remainingAmount = remainingAmount + amount;

  bool hasRemainingAmount() => _remainingAmount != null;

  // "paymentsCounter" field.
  int? _paymentsCounter;
  int get paymentsCounter => _paymentsCounter ?? 0;
  set paymentsCounter(int? val) => _paymentsCounter = val;

  void incrementPaymentsCounter(int amount) =>
      paymentsCounter = paymentsCounter + amount;

  bool hasPaymentsCounter() => _paymentsCounter != null;

  // "retrievedAt" field.
  String? _retrievedAt;
  String get retrievedAt => _retrievedAt ?? '';
  set retrievedAt(String? val) => _retrievedAt = val;

  bool hasRetrievedAt() => _retrievedAt != null;

  static LoanRepaymentListStruct fromMap(Map<String, dynamic> data) =>
      LoanRepaymentListStruct(
        loanAccountNumber: data['loanAccountNumber'] as String?,
        schedule: getStructList(
          data['schedule'],
          LoanRepaymentScheduleStruct.fromMap,
        ),
        totalPrincipal: castToType<double>(data['totalPrincipal']),
        totalInterest: castToType<double>(data['totalInterest']),
        totalAmount: castToType<double>(data['totalAmount']),
        remainingAmount: castToType<double>(data['remainingAmount']),
        paymentsCounter: castToType<int>(data['paymentsCounter']),
        retrievedAt: data['retrievedAt'] as String?,
      );

  static LoanRepaymentListStruct? maybeFromMap(dynamic data) => data is Map
      ? LoanRepaymentListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'loanAccountNumber': _loanAccountNumber,
        'schedule': _schedule?.map((e) => e.toMap()).toList(),
        'totalPrincipal': _totalPrincipal,
        'totalInterest': _totalInterest,
        'totalAmount': _totalAmount,
        'remainingAmount': _remainingAmount,
        'paymentsCounter': _paymentsCounter,
        'retrievedAt': _retrievedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'loanAccountNumber': serializeParam(
          _loanAccountNumber,
          ParamType.String,
        ),
        'schedule': serializeParam(
          _schedule,
          ParamType.DataStruct,
          isList: true,
        ),
        'totalPrincipal': serializeParam(
          _totalPrincipal,
          ParamType.double,
        ),
        'totalInterest': serializeParam(
          _totalInterest,
          ParamType.double,
        ),
        'totalAmount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
        'remainingAmount': serializeParam(
          _remainingAmount,
          ParamType.double,
        ),
        'paymentsCounter': serializeParam(
          _paymentsCounter,
          ParamType.int,
        ),
        'retrievedAt': serializeParam(
          _retrievedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanRepaymentListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanRepaymentListStruct(
        loanAccountNumber: deserializeParam(
          data['loanAccountNumber'],
          ParamType.String,
          false,
        ),
        schedule: deserializeStructParam<LoanRepaymentScheduleStruct>(
          data['schedule'],
          ParamType.DataStruct,
          true,
          structBuilder: LoanRepaymentScheduleStruct.fromSerializableMap,
        ),
        totalPrincipal: deserializeParam(
          data['totalPrincipal'],
          ParamType.double,
          false,
        ),
        totalInterest: deserializeParam(
          data['totalInterest'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['totalAmount'],
          ParamType.double,
          false,
        ),
        remainingAmount: deserializeParam(
          data['remainingAmount'],
          ParamType.double,
          false,
        ),
        paymentsCounter: deserializeParam(
          data['paymentsCounter'],
          ParamType.int,
          false,
        ),
        retrievedAt: deserializeParam(
          data['retrievedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanRepaymentListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LoanRepaymentListStruct &&
        loanAccountNumber == other.loanAccountNumber &&
        listEquality.equals(schedule, other.schedule) &&
        totalPrincipal == other.totalPrincipal &&
        totalInterest == other.totalInterest &&
        totalAmount == other.totalAmount &&
        remainingAmount == other.remainingAmount &&
        paymentsCounter == other.paymentsCounter &&
        retrievedAt == other.retrievedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        loanAccountNumber,
        schedule,
        totalPrincipal,
        totalInterest,
        totalAmount,
        remainingAmount,
        paymentsCounter,
        retrievedAt
      ]);
}

LoanRepaymentListStruct createLoanRepaymentListStruct({
  String? loanAccountNumber,
  double? totalPrincipal,
  double? totalInterest,
  double? totalAmount,
  double? remainingAmount,
  int? paymentsCounter,
  String? retrievedAt,
}) =>
    LoanRepaymentListStruct(
      loanAccountNumber: loanAccountNumber,
      totalPrincipal: totalPrincipal,
      totalInterest: totalInterest,
      totalAmount: totalAmount,
      remainingAmount: remainingAmount,
      paymentsCounter: paymentsCounter,
      retrievedAt: retrievedAt,
    );
