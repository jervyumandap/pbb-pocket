// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoanRepaymentScheduleStruct extends BaseStruct {
  LoanRepaymentScheduleStruct({
    int? installmentNumber,
    String? dueDate,
    double? principalAmount,
    double? interestAmount,
    double? totalAmount,
    String? status,
  })  : _installmentNumber = installmentNumber,
        _dueDate = dueDate,
        _principalAmount = principalAmount,
        _interestAmount = interestAmount,
        _totalAmount = totalAmount,
        _status = status;

  // "installmentNumber" field.
  int? _installmentNumber;
  int get installmentNumber => _installmentNumber ?? 0;
  set installmentNumber(int? val) => _installmentNumber = val;

  void incrementInstallmentNumber(int amount) =>
      installmentNumber = installmentNumber + amount;

  bool hasInstallmentNumber() => _installmentNumber != null;

  // "dueDate" field.
  String? _dueDate;
  String get dueDate => _dueDate ?? '';
  set dueDate(String? val) => _dueDate = val;

  bool hasDueDate() => _dueDate != null;

  // "principalAmount" field.
  double? _principalAmount;
  double get principalAmount => _principalAmount ?? 0.0;
  set principalAmount(double? val) => _principalAmount = val;

  void incrementPrincipalAmount(double amount) =>
      principalAmount = principalAmount + amount;

  bool hasPrincipalAmount() => _principalAmount != null;

  // "interestAmount" field.
  double? _interestAmount;
  double get interestAmount => _interestAmount ?? 0.0;
  set interestAmount(double? val) => _interestAmount = val;

  void incrementInterestAmount(double amount) =>
      interestAmount = interestAmount + amount;

  bool hasInterestAmount() => _interestAmount != null;

  // "totalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static LoanRepaymentScheduleStruct fromMap(Map<String, dynamic> data) =>
      LoanRepaymentScheduleStruct(
        installmentNumber: castToType<int>(data['installmentNumber']),
        dueDate: data['dueDate'] as String?,
        principalAmount: castToType<double>(data['principalAmount']),
        interestAmount: castToType<double>(data['interestAmount']),
        totalAmount: castToType<double>(data['totalAmount']),
        status: data['status'] as String?,
      );

  static LoanRepaymentScheduleStruct? maybeFromMap(dynamic data) => data is Map
      ? LoanRepaymentScheduleStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'installmentNumber': _installmentNumber,
        'dueDate': _dueDate,
        'principalAmount': _principalAmount,
        'interestAmount': _interestAmount,
        'totalAmount': _totalAmount,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'installmentNumber': serializeParam(
          _installmentNumber,
          ParamType.int,
        ),
        'dueDate': serializeParam(
          _dueDate,
          ParamType.String,
        ),
        'principalAmount': serializeParam(
          _principalAmount,
          ParamType.double,
        ),
        'interestAmount': serializeParam(
          _interestAmount,
          ParamType.double,
        ),
        'totalAmount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static LoanRepaymentScheduleStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      LoanRepaymentScheduleStruct(
        installmentNumber: deserializeParam(
          data['installmentNumber'],
          ParamType.int,
          false,
        ),
        dueDate: deserializeParam(
          data['dueDate'],
          ParamType.String,
          false,
        ),
        principalAmount: deserializeParam(
          data['principalAmount'],
          ParamType.double,
          false,
        ),
        interestAmount: deserializeParam(
          data['interestAmount'],
          ParamType.double,
          false,
        ),
        totalAmount: deserializeParam(
          data['totalAmount'],
          ParamType.double,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LoanRepaymentScheduleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoanRepaymentScheduleStruct &&
        installmentNumber == other.installmentNumber &&
        dueDate == other.dueDate &&
        principalAmount == other.principalAmount &&
        interestAmount == other.interestAmount &&
        totalAmount == other.totalAmount &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        installmentNumber,
        dueDate,
        principalAmount,
        interestAmount,
        totalAmount,
        status
      ]);
}

LoanRepaymentScheduleStruct createLoanRepaymentScheduleStruct({
  int? installmentNumber,
  String? dueDate,
  double? principalAmount,
  double? interestAmount,
  double? totalAmount,
  String? status,
}) =>
    LoanRepaymentScheduleStruct(
      installmentNumber: installmentNumber,
      dueDate: dueDate,
      principalAmount: principalAmount,
      interestAmount: interestAmount,
      totalAmount: totalAmount,
      status: status,
    );
