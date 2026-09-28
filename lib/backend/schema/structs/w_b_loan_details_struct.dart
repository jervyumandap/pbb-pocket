// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBLoanDetailsStruct extends BaseStruct {
  WBLoanDetailsStruct({
    String? loanAccountNumber,
    String? maskedAccountNumber,
    String? loanType,
    String? productName,
    String? currency,
    String? status,
    double? principalAmount,
    double? outstandingBalance,
    double? pastDueAmount,
    String? disbursementDate,
    String? maturityDate,
    double? interestRate,
    double? monthlyPayment,
    String? nextDueDate,
    double? nextPaymentAmount,
    String? latestPaymentDate,
    double? totalInterestPaid,
    int? remainingTerm,
    int? originalTerm,
  })  : _loanAccountNumber = loanAccountNumber,
        _maskedAccountNumber = maskedAccountNumber,
        _loanType = loanType,
        _productName = productName,
        _currency = currency,
        _status = status,
        _principalAmount = principalAmount,
        _outstandingBalance = outstandingBalance,
        _pastDueAmount = pastDueAmount,
        _disbursementDate = disbursementDate,
        _maturityDate = maturityDate,
        _interestRate = interestRate,
        _monthlyPayment = monthlyPayment,
        _nextDueDate = nextDueDate,
        _nextPaymentAmount = nextPaymentAmount,
        _latestPaymentDate = latestPaymentDate,
        _totalInterestPaid = totalInterestPaid,
        _remainingTerm = remainingTerm,
        _originalTerm = originalTerm;

  // "loanAccountNumber" field.
  String? _loanAccountNumber;
  String get loanAccountNumber => _loanAccountNumber ?? '';
  set loanAccountNumber(String? val) => _loanAccountNumber = val;

  bool hasLoanAccountNumber() => _loanAccountNumber != null;

  // "maskedAccountNumber" field.
  String? _maskedAccountNumber;
  String get maskedAccountNumber => _maskedAccountNumber ?? '';
  set maskedAccountNumber(String? val) => _maskedAccountNumber = val;

  bool hasMaskedAccountNumber() => _maskedAccountNumber != null;

  // "loanType" field.
  String? _loanType;
  String get loanType => _loanType ?? '';
  set loanType(String? val) => _loanType = val;

  bool hasLoanType() => _loanType != null;

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "principalAmount" field.
  double? _principalAmount;
  double get principalAmount => _principalAmount ?? 0.0;
  set principalAmount(double? val) => _principalAmount = val;

  void incrementPrincipalAmount(double amount) =>
      principalAmount = principalAmount + amount;

  bool hasPrincipalAmount() => _principalAmount != null;

  // "outstandingBalance" field.
  double? _outstandingBalance;
  double get outstandingBalance => _outstandingBalance ?? 0.0;
  set outstandingBalance(double? val) => _outstandingBalance = val;

  void incrementOutstandingBalance(double amount) =>
      outstandingBalance = outstandingBalance + amount;

  bool hasOutstandingBalance() => _outstandingBalance != null;

  // "pastDueAmount" field.
  double? _pastDueAmount;
  double get pastDueAmount => _pastDueAmount ?? 0.0;
  set pastDueAmount(double? val) => _pastDueAmount = val;

  void incrementPastDueAmount(double amount) =>
      pastDueAmount = pastDueAmount + amount;

  bool hasPastDueAmount() => _pastDueAmount != null;

  // "disbursementDate" field.
  String? _disbursementDate;
  String get disbursementDate => _disbursementDate ?? '';
  set disbursementDate(String? val) => _disbursementDate = val;

  bool hasDisbursementDate() => _disbursementDate != null;

  // "maturityDate" field.
  String? _maturityDate;
  String get maturityDate => _maturityDate ?? '';
  set maturityDate(String? val) => _maturityDate = val;

  bool hasMaturityDate() => _maturityDate != null;

  // "interestRate" field.
  double? _interestRate;
  double get interestRate => _interestRate ?? 0.0;
  set interestRate(double? val) => _interestRate = val;

  void incrementInterestRate(double amount) =>
      interestRate = interestRate + amount;

  bool hasInterestRate() => _interestRate != null;

  // "monthlyPayment" field.
  double? _monthlyPayment;
  double get monthlyPayment => _monthlyPayment ?? 0.0;
  set monthlyPayment(double? val) => _monthlyPayment = val;

  void incrementMonthlyPayment(double amount) =>
      monthlyPayment = monthlyPayment + amount;

  bool hasMonthlyPayment() => _monthlyPayment != null;

  // "nextDueDate" field.
  String? _nextDueDate;
  String get nextDueDate => _nextDueDate ?? '';
  set nextDueDate(String? val) => _nextDueDate = val;

  bool hasNextDueDate() => _nextDueDate != null;

  // "nextPaymentAmount" field.
  double? _nextPaymentAmount;
  double get nextPaymentAmount => _nextPaymentAmount ?? 0.0;
  set nextPaymentAmount(double? val) => _nextPaymentAmount = val;

  void incrementNextPaymentAmount(double amount) =>
      nextPaymentAmount = nextPaymentAmount + amount;

  bool hasNextPaymentAmount() => _nextPaymentAmount != null;

  // "latestPaymentDate" field.
  String? _latestPaymentDate;
  String get latestPaymentDate => _latestPaymentDate ?? '';
  set latestPaymentDate(String? val) => _latestPaymentDate = val;

  bool hasLatestPaymentDate() => _latestPaymentDate != null;

  // "totalInterestPaid" field.
  double? _totalInterestPaid;
  double get totalInterestPaid => _totalInterestPaid ?? 0.0;
  set totalInterestPaid(double? val) => _totalInterestPaid = val;

  void incrementTotalInterestPaid(double amount) =>
      totalInterestPaid = totalInterestPaid + amount;

  bool hasTotalInterestPaid() => _totalInterestPaid != null;

  // "remainingTerm" field.
  int? _remainingTerm;
  int get remainingTerm => _remainingTerm ?? 0;
  set remainingTerm(int? val) => _remainingTerm = val;

  void incrementRemainingTerm(int amount) =>
      remainingTerm = remainingTerm + amount;

  bool hasRemainingTerm() => _remainingTerm != null;

  // "originalTerm" field.
  int? _originalTerm;
  int get originalTerm => _originalTerm ?? 0;
  set originalTerm(int? val) => _originalTerm = val;

  void incrementOriginalTerm(int amount) =>
      originalTerm = originalTerm + amount;

  bool hasOriginalTerm() => _originalTerm != null;

  static WBLoanDetailsStruct fromMap(Map<String, dynamic> data) =>
      WBLoanDetailsStruct(
        loanAccountNumber: data['loanAccountNumber'] as String?,
        maskedAccountNumber: data['maskedAccountNumber'] as String?,
        loanType: data['loanType'] as String?,
        productName: data['productName'] as String?,
        currency: data['currency'] as String?,
        status: data['status'] as String?,
        principalAmount: castToType<double>(data['principalAmount']),
        outstandingBalance: castToType<double>(data['outstandingBalance']),
        pastDueAmount: castToType<double>(data['pastDueAmount']),
        disbursementDate: data['disbursementDate'] as String?,
        maturityDate: data['maturityDate'] as String?,
        interestRate: castToType<double>(data['interestRate']),
        monthlyPayment: castToType<double>(data['monthlyPayment']),
        nextDueDate: data['nextDueDate'] as String?,
        nextPaymentAmount: castToType<double>(data['nextPaymentAmount']),
        latestPaymentDate: data['latestPaymentDate'] as String?,
        totalInterestPaid: castToType<double>(data['totalInterestPaid']),
        remainingTerm: castToType<int>(data['remainingTerm']),
        originalTerm: castToType<int>(data['originalTerm']),
      );

  static WBLoanDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? WBLoanDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'loanAccountNumber': _loanAccountNumber,
        'maskedAccountNumber': _maskedAccountNumber,
        'loanType': _loanType,
        'productName': _productName,
        'currency': _currency,
        'status': _status,
        'principalAmount': _principalAmount,
        'outstandingBalance': _outstandingBalance,
        'pastDueAmount': _pastDueAmount,
        'disbursementDate': _disbursementDate,
        'maturityDate': _maturityDate,
        'interestRate': _interestRate,
        'monthlyPayment': _monthlyPayment,
        'nextDueDate': _nextDueDate,
        'nextPaymentAmount': _nextPaymentAmount,
        'latestPaymentDate': _latestPaymentDate,
        'totalInterestPaid': _totalInterestPaid,
        'remainingTerm': _remainingTerm,
        'originalTerm': _originalTerm,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'loanAccountNumber': serializeParam(
          _loanAccountNumber,
          ParamType.String,
        ),
        'maskedAccountNumber': serializeParam(
          _maskedAccountNumber,
          ParamType.String,
        ),
        'loanType': serializeParam(
          _loanType,
          ParamType.String,
        ),
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'principalAmount': serializeParam(
          _principalAmount,
          ParamType.double,
        ),
        'outstandingBalance': serializeParam(
          _outstandingBalance,
          ParamType.double,
        ),
        'pastDueAmount': serializeParam(
          _pastDueAmount,
          ParamType.double,
        ),
        'disbursementDate': serializeParam(
          _disbursementDate,
          ParamType.String,
        ),
        'maturityDate': serializeParam(
          _maturityDate,
          ParamType.String,
        ),
        'interestRate': serializeParam(
          _interestRate,
          ParamType.double,
        ),
        'monthlyPayment': serializeParam(
          _monthlyPayment,
          ParamType.double,
        ),
        'nextDueDate': serializeParam(
          _nextDueDate,
          ParamType.String,
        ),
        'nextPaymentAmount': serializeParam(
          _nextPaymentAmount,
          ParamType.double,
        ),
        'latestPaymentDate': serializeParam(
          _latestPaymentDate,
          ParamType.String,
        ),
        'totalInterestPaid': serializeParam(
          _totalInterestPaid,
          ParamType.double,
        ),
        'remainingTerm': serializeParam(
          _remainingTerm,
          ParamType.int,
        ),
        'originalTerm': serializeParam(
          _originalTerm,
          ParamType.int,
        ),
      }.withoutNulls;

  static WBLoanDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBLoanDetailsStruct(
        loanAccountNumber: deserializeParam(
          data['loanAccountNumber'],
          ParamType.String,
          false,
        ),
        maskedAccountNumber: deserializeParam(
          data['maskedAccountNumber'],
          ParamType.String,
          false,
        ),
        loanType: deserializeParam(
          data['loanType'],
          ParamType.String,
          false,
        ),
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        principalAmount: deserializeParam(
          data['principalAmount'],
          ParamType.double,
          false,
        ),
        outstandingBalance: deserializeParam(
          data['outstandingBalance'],
          ParamType.double,
          false,
        ),
        pastDueAmount: deserializeParam(
          data['pastDueAmount'],
          ParamType.double,
          false,
        ),
        disbursementDate: deserializeParam(
          data['disbursementDate'],
          ParamType.String,
          false,
        ),
        maturityDate: deserializeParam(
          data['maturityDate'],
          ParamType.String,
          false,
        ),
        interestRate: deserializeParam(
          data['interestRate'],
          ParamType.double,
          false,
        ),
        monthlyPayment: deserializeParam(
          data['monthlyPayment'],
          ParamType.double,
          false,
        ),
        nextDueDate: deserializeParam(
          data['nextDueDate'],
          ParamType.String,
          false,
        ),
        nextPaymentAmount: deserializeParam(
          data['nextPaymentAmount'],
          ParamType.double,
          false,
        ),
        latestPaymentDate: deserializeParam(
          data['latestPaymentDate'],
          ParamType.String,
          false,
        ),
        totalInterestPaid: deserializeParam(
          data['totalInterestPaid'],
          ParamType.double,
          false,
        ),
        remainingTerm: deserializeParam(
          data['remainingTerm'],
          ParamType.int,
          false,
        ),
        originalTerm: deserializeParam(
          data['originalTerm'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'WBLoanDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBLoanDetailsStruct &&
        loanAccountNumber == other.loanAccountNumber &&
        maskedAccountNumber == other.maskedAccountNumber &&
        loanType == other.loanType &&
        productName == other.productName &&
        currency == other.currency &&
        status == other.status &&
        principalAmount == other.principalAmount &&
        outstandingBalance == other.outstandingBalance &&
        pastDueAmount == other.pastDueAmount &&
        disbursementDate == other.disbursementDate &&
        maturityDate == other.maturityDate &&
        interestRate == other.interestRate &&
        monthlyPayment == other.monthlyPayment &&
        nextDueDate == other.nextDueDate &&
        nextPaymentAmount == other.nextPaymentAmount &&
        latestPaymentDate == other.latestPaymentDate &&
        totalInterestPaid == other.totalInterestPaid &&
        remainingTerm == other.remainingTerm &&
        originalTerm == other.originalTerm;
  }

  @override
  int get hashCode => const ListEquality().hash([
        loanAccountNumber,
        maskedAccountNumber,
        loanType,
        productName,
        currency,
        status,
        principalAmount,
        outstandingBalance,
        pastDueAmount,
        disbursementDate,
        maturityDate,
        interestRate,
        monthlyPayment,
        nextDueDate,
        nextPaymentAmount,
        latestPaymentDate,
        totalInterestPaid,
        remainingTerm,
        originalTerm
      ]);
}

WBLoanDetailsStruct createWBLoanDetailsStruct({
  String? loanAccountNumber,
  String? maskedAccountNumber,
  String? loanType,
  String? productName,
  String? currency,
  String? status,
  double? principalAmount,
  double? outstandingBalance,
  double? pastDueAmount,
  String? disbursementDate,
  String? maturityDate,
  double? interestRate,
  double? monthlyPayment,
  String? nextDueDate,
  double? nextPaymentAmount,
  String? latestPaymentDate,
  double? totalInterestPaid,
  int? remainingTerm,
  int? originalTerm,
}) =>
    WBLoanDetailsStruct(
      loanAccountNumber: loanAccountNumber,
      maskedAccountNumber: maskedAccountNumber,
      loanType: loanType,
      productName: productName,
      currency: currency,
      status: status,
      principalAmount: principalAmount,
      outstandingBalance: outstandingBalance,
      pastDueAmount: pastDueAmount,
      disbursementDate: disbursementDate,
      maturityDate: maturityDate,
      interestRate: interestRate,
      monthlyPayment: monthlyPayment,
      nextDueDate: nextDueDate,
      nextPaymentAmount: nextPaymentAmount,
      latestPaymentDate: latestPaymentDate,
      totalInterestPaid: totalInterestPaid,
      remainingTerm: remainingTerm,
      originalTerm: originalTerm,
    );
