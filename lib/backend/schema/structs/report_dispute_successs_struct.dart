// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDisputeSuccesssStruct extends BaseStruct {
  ReportDisputeSuccesssStruct({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? referenceNumber,
    String? customerId,
    String? transactionId,
    String? transactionType,
    String? transactionReference,
    String? transactionDate,
    String? transactionAmount,
    String? category,
    bool? isFraudReport,
    String? severity,
    String? status,
    String? description,
    String? resolution,
    String? resolutionType,
    String? assignedTo,
    String? slaDueAt,
    String? submittedAt,
    String? resolvedAt,
    bool? isSlaBreached,
    EvidenceStruct? evidence,
    NotesStruct? notes,
    StatusHistoryStruct? statusHistory,
    CustomerStruct? customer,
    AssigneeStruct? assignee,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _referenceNumber = referenceNumber,
        _customerId = customerId,
        _transactionId = transactionId,
        _transactionType = transactionType,
        _transactionReference = transactionReference,
        _transactionDate = transactionDate,
        _transactionAmount = transactionAmount,
        _category = category,
        _isFraudReport = isFraudReport,
        _severity = severity,
        _status = status,
        _description = description,
        _resolution = resolution,
        _resolutionType = resolutionType,
        _assignedTo = assignedTo,
        _slaDueAt = slaDueAt,
        _submittedAt = submittedAt,
        _resolvedAt = resolvedAt,
        _isSlaBreached = isSlaBreached,
        _evidence = evidence,
        _notes = notes,
        _statusHistory = statusHistory,
        _customer = customer,
        _assignee = assignee;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "referenceNumber" field.
  String? _referenceNumber;
  String get referenceNumber => _referenceNumber ?? '';
  set referenceNumber(String? val) => _referenceNumber = val;

  bool hasReferenceNumber() => _referenceNumber != null;

  // "customerId" field.
  String? _customerId;
  String get customerId => _customerId ?? '';
  set customerId(String? val) => _customerId = val;

  bool hasCustomerId() => _customerId != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  // "transactionType" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;

  bool hasTransactionType() => _transactionType != null;

  // "transactionReference" field.
  String? _transactionReference;
  String get transactionReference => _transactionReference ?? '';
  set transactionReference(String? val) => _transactionReference = val;

  bool hasTransactionReference() => _transactionReference != null;

  // "transactionDate" field.
  String? _transactionDate;
  String get transactionDate => _transactionDate ?? '';
  set transactionDate(String? val) => _transactionDate = val;

  bool hasTransactionDate() => _transactionDate != null;

  // "transactionAmount" field.
  String? _transactionAmount;
  String get transactionAmount => _transactionAmount ?? '';
  set transactionAmount(String? val) => _transactionAmount = val;

  bool hasTransactionAmount() => _transactionAmount != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "isFraudReport" field.
  bool? _isFraudReport;
  bool get isFraudReport => _isFraudReport ?? false;
  set isFraudReport(bool? val) => _isFraudReport = val;

  bool hasIsFraudReport() => _isFraudReport != null;

  // "severity" field.
  String? _severity;
  String get severity => _severity ?? '';
  set severity(String? val) => _severity = val;

  bool hasSeverity() => _severity != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "resolution" field.
  String? _resolution;
  String get resolution => _resolution ?? '';
  set resolution(String? val) => _resolution = val;

  bool hasResolution() => _resolution != null;

  // "resolutionType" field.
  String? _resolutionType;
  String get resolutionType => _resolutionType ?? '';
  set resolutionType(String? val) => _resolutionType = val;

  bool hasResolutionType() => _resolutionType != null;

  // "assignedTo" field.
  String? _assignedTo;
  String get assignedTo => _assignedTo ?? '';
  set assignedTo(String? val) => _assignedTo = val;

  bool hasAssignedTo() => _assignedTo != null;

  // "slaDueAt" field.
  String? _slaDueAt;
  String get slaDueAt => _slaDueAt ?? '';
  set slaDueAt(String? val) => _slaDueAt = val;

  bool hasSlaDueAt() => _slaDueAt != null;

  // "submittedAt" field.
  String? _submittedAt;
  String get submittedAt => _submittedAt ?? '';
  set submittedAt(String? val) => _submittedAt = val;

  bool hasSubmittedAt() => _submittedAt != null;

  // "resolvedAt" field.
  String? _resolvedAt;
  String get resolvedAt => _resolvedAt ?? '';
  set resolvedAt(String? val) => _resolvedAt = val;

  bool hasResolvedAt() => _resolvedAt != null;

  // "isSlaBreached" field.
  bool? _isSlaBreached;
  bool get isSlaBreached => _isSlaBreached ?? false;
  set isSlaBreached(bool? val) => _isSlaBreached = val;

  bool hasIsSlaBreached() => _isSlaBreached != null;

  // "evidence" field.
  EvidenceStruct? _evidence;
  EvidenceStruct get evidence => _evidence ?? EvidenceStruct();
  set evidence(EvidenceStruct? val) => _evidence = val;

  void updateEvidence(Function(EvidenceStruct) updateFn) {
    updateFn(_evidence ??= EvidenceStruct());
  }

  bool hasEvidence() => _evidence != null;

  // "notes" field.
  NotesStruct? _notes;
  NotesStruct get notes => _notes ?? NotesStruct();
  set notes(NotesStruct? val) => _notes = val;

  void updateNotes(Function(NotesStruct) updateFn) {
    updateFn(_notes ??= NotesStruct());
  }

  bool hasNotes() => _notes != null;

  // "statusHistory" field.
  StatusHistoryStruct? _statusHistory;
  StatusHistoryStruct get statusHistory =>
      _statusHistory ?? StatusHistoryStruct();
  set statusHistory(StatusHistoryStruct? val) => _statusHistory = val;

  void updateStatusHistory(Function(StatusHistoryStruct) updateFn) {
    updateFn(_statusHistory ??= StatusHistoryStruct());
  }

  bool hasStatusHistory() => _statusHistory != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  // "assignee" field.
  AssigneeStruct? _assignee;
  AssigneeStruct get assignee => _assignee ?? AssigneeStruct();
  set assignee(AssigneeStruct? val) => _assignee = val;

  void updateAssignee(Function(AssigneeStruct) updateFn) {
    updateFn(_assignee ??= AssigneeStruct());
  }

  bool hasAssignee() => _assignee != null;

  static ReportDisputeSuccesssStruct fromMap(Map<String, dynamic> data) =>
      ReportDisputeSuccesssStruct(
        id: data['id'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        customerId: data['customerId'] as String?,
        transactionId: data['transactionId'] as String?,
        transactionType: data['transactionType'] as String?,
        transactionReference: data['transactionReference'] as String?,
        transactionDate: data['transactionDate'] as String?,
        transactionAmount: data['transactionAmount'] as String?,
        category: data['category'] as String?,
        isFraudReport: data['isFraudReport'] as bool?,
        severity: data['severity'] as String?,
        status: data['status'] as String?,
        description: data['description'] as String?,
        resolution: data['resolution'] as String?,
        resolutionType: data['resolutionType'] as String?,
        assignedTo: data['assignedTo'] as String?,
        slaDueAt: data['slaDueAt'] as String?,
        submittedAt: data['submittedAt'] as String?,
        resolvedAt: data['resolvedAt'] as String?,
        isSlaBreached: data['isSlaBreached'] as bool?,
        evidence: data['evidence'] is EvidenceStruct
            ? data['evidence']
            : EvidenceStruct.maybeFromMap(data['evidence']),
        notes: data['notes'] is NotesStruct
            ? data['notes']
            : NotesStruct.maybeFromMap(data['notes']),
        statusHistory: data['statusHistory'] is StatusHistoryStruct
            ? data['statusHistory']
            : StatusHistoryStruct.maybeFromMap(data['statusHistory']),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
        assignee: data['assignee'] is AssigneeStruct
            ? data['assignee']
            : AssigneeStruct.maybeFromMap(data['assignee']),
      );

  static ReportDisputeSuccesssStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportDisputeSuccesssStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'referenceNumber': _referenceNumber,
        'customerId': _customerId,
        'transactionId': _transactionId,
        'transactionType': _transactionType,
        'transactionReference': _transactionReference,
        'transactionDate': _transactionDate,
        'transactionAmount': _transactionAmount,
        'category': _category,
        'isFraudReport': _isFraudReport,
        'severity': _severity,
        'status': _status,
        'description': _description,
        'resolution': _resolution,
        'resolutionType': _resolutionType,
        'assignedTo': _assignedTo,
        'slaDueAt': _slaDueAt,
        'submittedAt': _submittedAt,
        'resolvedAt': _resolvedAt,
        'isSlaBreached': _isSlaBreached,
        'evidence': _evidence?.toMap(),
        'notes': _notes?.toMap(),
        'statusHistory': _statusHistory?.toMap(),
        'customer': _customer?.toMap(),
        'assignee': _assignee?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'referenceNumber': serializeParam(
          _referenceNumber,
          ParamType.String,
        ),
        'customerId': serializeParam(
          _customerId,
          ParamType.String,
        ),
        'transactionId': serializeParam(
          _transactionId,
          ParamType.String,
        ),
        'transactionType': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'transactionReference': serializeParam(
          _transactionReference,
          ParamType.String,
        ),
        'transactionDate': serializeParam(
          _transactionDate,
          ParamType.String,
        ),
        'transactionAmount': serializeParam(
          _transactionAmount,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'isFraudReport': serializeParam(
          _isFraudReport,
          ParamType.bool,
        ),
        'severity': serializeParam(
          _severity,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'resolution': serializeParam(
          _resolution,
          ParamType.String,
        ),
        'resolutionType': serializeParam(
          _resolutionType,
          ParamType.String,
        ),
        'assignedTo': serializeParam(
          _assignedTo,
          ParamType.String,
        ),
        'slaDueAt': serializeParam(
          _slaDueAt,
          ParamType.String,
        ),
        'submittedAt': serializeParam(
          _submittedAt,
          ParamType.String,
        ),
        'resolvedAt': serializeParam(
          _resolvedAt,
          ParamType.String,
        ),
        'isSlaBreached': serializeParam(
          _isSlaBreached,
          ParamType.bool,
        ),
        'evidence': serializeParam(
          _evidence,
          ParamType.DataStruct,
        ),
        'notes': serializeParam(
          _notes,
          ParamType.DataStruct,
        ),
        'statusHistory': serializeParam(
          _statusHistory,
          ParamType.DataStruct,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
        'assignee': serializeParam(
          _assignee,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ReportDisputeSuccesssStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportDisputeSuccesssStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        referenceNumber: deserializeParam(
          data['referenceNumber'],
          ParamType.String,
          false,
        ),
        customerId: deserializeParam(
          data['customerId'],
          ParamType.String,
          false,
        ),
        transactionId: deserializeParam(
          data['transactionId'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['transactionType'],
          ParamType.String,
          false,
        ),
        transactionReference: deserializeParam(
          data['transactionReference'],
          ParamType.String,
          false,
        ),
        transactionDate: deserializeParam(
          data['transactionDate'],
          ParamType.String,
          false,
        ),
        transactionAmount: deserializeParam(
          data['transactionAmount'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        isFraudReport: deserializeParam(
          data['isFraudReport'],
          ParamType.bool,
          false,
        ),
        severity: deserializeParam(
          data['severity'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        resolution: deserializeParam(
          data['resolution'],
          ParamType.String,
          false,
        ),
        resolutionType: deserializeParam(
          data['resolutionType'],
          ParamType.String,
          false,
        ),
        assignedTo: deserializeParam(
          data['assignedTo'],
          ParamType.String,
          false,
        ),
        slaDueAt: deserializeParam(
          data['slaDueAt'],
          ParamType.String,
          false,
        ),
        submittedAt: deserializeParam(
          data['submittedAt'],
          ParamType.String,
          false,
        ),
        resolvedAt: deserializeParam(
          data['resolvedAt'],
          ParamType.String,
          false,
        ),
        isSlaBreached: deserializeParam(
          data['isSlaBreached'],
          ParamType.bool,
          false,
        ),
        evidence: deserializeStructParam(
          data['evidence'],
          ParamType.DataStruct,
          false,
          structBuilder: EvidenceStruct.fromSerializableMap,
        ),
        notes: deserializeStructParam(
          data['notes'],
          ParamType.DataStruct,
          false,
          structBuilder: NotesStruct.fromSerializableMap,
        ),
        statusHistory: deserializeStructParam(
          data['statusHistory'],
          ParamType.DataStruct,
          false,
          structBuilder: StatusHistoryStruct.fromSerializableMap,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
        assignee: deserializeStructParam(
          data['assignee'],
          ParamType.DataStruct,
          false,
          structBuilder: AssigneeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ReportDisputeSuccesssStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportDisputeSuccesssStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        referenceNumber == other.referenceNumber &&
        customerId == other.customerId &&
        transactionId == other.transactionId &&
        transactionType == other.transactionType &&
        transactionReference == other.transactionReference &&
        transactionDate == other.transactionDate &&
        transactionAmount == other.transactionAmount &&
        category == other.category &&
        isFraudReport == other.isFraudReport &&
        severity == other.severity &&
        status == other.status &&
        description == other.description &&
        resolution == other.resolution &&
        resolutionType == other.resolutionType &&
        assignedTo == other.assignedTo &&
        slaDueAt == other.slaDueAt &&
        submittedAt == other.submittedAt &&
        resolvedAt == other.resolvedAt &&
        isSlaBreached == other.isSlaBreached &&
        evidence == other.evidence &&
        notes == other.notes &&
        statusHistory == other.statusHistory &&
        customer == other.customer &&
        assignee == other.assignee;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        updatedAt,
        referenceNumber,
        customerId,
        transactionId,
        transactionType,
        transactionReference,
        transactionDate,
        transactionAmount,
        category,
        isFraudReport,
        severity,
        status,
        description,
        resolution,
        resolutionType,
        assignedTo,
        slaDueAt,
        submittedAt,
        resolvedAt,
        isSlaBreached,
        evidence,
        notes,
        statusHistory,
        customer,
        assignee
      ]);
}

ReportDisputeSuccesssStruct createReportDisputeSuccesssStruct({
  String? id,
  String? createdAt,
  String? updatedAt,
  String? referenceNumber,
  String? customerId,
  String? transactionId,
  String? transactionType,
  String? transactionReference,
  String? transactionDate,
  String? transactionAmount,
  String? category,
  bool? isFraudReport,
  String? severity,
  String? status,
  String? description,
  String? resolution,
  String? resolutionType,
  String? assignedTo,
  String? slaDueAt,
  String? submittedAt,
  String? resolvedAt,
  bool? isSlaBreached,
  EvidenceStruct? evidence,
  NotesStruct? notes,
  StatusHistoryStruct? statusHistory,
  CustomerStruct? customer,
  AssigneeStruct? assignee,
}) =>
    ReportDisputeSuccesssStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      referenceNumber: referenceNumber,
      customerId: customerId,
      transactionId: transactionId,
      transactionType: transactionType,
      transactionReference: transactionReference,
      transactionDate: transactionDate,
      transactionAmount: transactionAmount,
      category: category,
      isFraudReport: isFraudReport,
      severity: severity,
      status: status,
      description: description,
      resolution: resolution,
      resolutionType: resolutionType,
      assignedTo: assignedTo,
      slaDueAt: slaDueAt,
      submittedAt: submittedAt,
      resolvedAt: resolvedAt,
      isSlaBreached: isSlaBreached,
      evidence: evidence ?? EvidenceStruct(),
      notes: notes ?? NotesStruct(),
      statusHistory: statusHistory ?? StatusHistoryStruct(),
      customer: customer ?? CustomerStruct(),
      assignee: assignee ?? AssigneeStruct(),
    );
