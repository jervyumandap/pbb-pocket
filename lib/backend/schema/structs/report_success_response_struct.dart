// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportSuccessResponseStruct extends BaseStruct {
  ReportSuccessResponseStruct({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? referenceNumber,
    String? customerId,
    String? reportType,
    String? severity,
    String? status,
    String? description,
    String? submissionSource,
    String? submissionChannel,
    String? assignedTo,
    String? slaDueAt,
    String? submittedAt,
    String? resolutionSummary,
    String? resolutionType,
    String? reviewedAt,
    String? reviewedBy,
    bool? isSlaBreached,
    MetadataStruct? metadata,
    AttachmentsStruct? attachments,
    NotesStruct? notes,
    StatusHistoryStruct? statusHistory,
    CustomerStruct? customer,
    AssigneeStruct? assignee,
  })  : _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _referenceNumber = referenceNumber,
        _customerId = customerId,
        _reportType = reportType,
        _severity = severity,
        _status = status,
        _description = description,
        _submissionSource = submissionSource,
        _submissionChannel = submissionChannel,
        _assignedTo = assignedTo,
        _slaDueAt = slaDueAt,
        _submittedAt = submittedAt,
        _resolutionSummary = resolutionSummary,
        _resolutionType = resolutionType,
        _reviewedAt = reviewedAt,
        _reviewedBy = reviewedBy,
        _isSlaBreached = isSlaBreached,
        _metadata = metadata,
        _attachments = attachments,
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

  // "reportType" field.
  String? _reportType;
  String get reportType => _reportType ?? '';
  set reportType(String? val) => _reportType = val;

  bool hasReportType() => _reportType != null;

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

  // "submissionSource" field.
  String? _submissionSource;
  String get submissionSource => _submissionSource ?? '';
  set submissionSource(String? val) => _submissionSource = val;

  bool hasSubmissionSource() => _submissionSource != null;

  // "submissionChannel" field.
  String? _submissionChannel;
  String get submissionChannel => _submissionChannel ?? '';
  set submissionChannel(String? val) => _submissionChannel = val;

  bool hasSubmissionChannel() => _submissionChannel != null;

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

  // "resolutionSummary" field.
  String? _resolutionSummary;
  String get resolutionSummary => _resolutionSummary ?? '';
  set resolutionSummary(String? val) => _resolutionSummary = val;

  bool hasResolutionSummary() => _resolutionSummary != null;

  // "resolutionType" field.
  String? _resolutionType;
  String get resolutionType => _resolutionType ?? '';
  set resolutionType(String? val) => _resolutionType = val;

  bool hasResolutionType() => _resolutionType != null;

  // "reviewedAt" field.
  String? _reviewedAt;
  String get reviewedAt => _reviewedAt ?? '';
  set reviewedAt(String? val) => _reviewedAt = val;

  bool hasReviewedAt() => _reviewedAt != null;

  // "reviewedBy" field.
  String? _reviewedBy;
  String get reviewedBy => _reviewedBy ?? '';
  set reviewedBy(String? val) => _reviewedBy = val;

  bool hasReviewedBy() => _reviewedBy != null;

  // "isSlaBreached" field.
  bool? _isSlaBreached;
  bool get isSlaBreached => _isSlaBreached ?? false;
  set isSlaBreached(bool? val) => _isSlaBreached = val;

  bool hasIsSlaBreached() => _isSlaBreached != null;

  // "metadata" field.
  MetadataStruct? _metadata;
  MetadataStruct get metadata => _metadata ?? MetadataStruct();
  set metadata(MetadataStruct? val) => _metadata = val;

  void updateMetadata(Function(MetadataStruct) updateFn) {
    updateFn(_metadata ??= MetadataStruct());
  }

  bool hasMetadata() => _metadata != null;

  // "attachments" field.
  AttachmentsStruct? _attachments;
  AttachmentsStruct get attachments => _attachments ?? AttachmentsStruct();
  set attachments(AttachmentsStruct? val) => _attachments = val;

  void updateAttachments(Function(AttachmentsStruct) updateFn) {
    updateFn(_attachments ??= AttachmentsStruct());
  }

  bool hasAttachments() => _attachments != null;

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

  static ReportSuccessResponseStruct fromMap(Map<String, dynamic> data) =>
      ReportSuccessResponseStruct(
        id: data['id'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        referenceNumber: data['referenceNumber'] as String?,
        customerId: data['customerId'] as String?,
        reportType: data['reportType'] as String?,
        severity: data['severity'] as String?,
        status: data['status'] as String?,
        description: data['description'] as String?,
        submissionSource: data['submissionSource'] as String?,
        submissionChannel: data['submissionChannel'] as String?,
        assignedTo: data['assignedTo'] as String?,
        slaDueAt: data['slaDueAt'] as String?,
        submittedAt: data['submittedAt'] as String?,
        resolutionSummary: data['resolutionSummary'] as String?,
        resolutionType: data['resolutionType'] as String?,
        reviewedAt: data['reviewedAt'] as String?,
        reviewedBy: data['reviewedBy'] as String?,
        isSlaBreached: data['isSlaBreached'] as bool?,
        metadata: data['metadata'] is MetadataStruct
            ? data['metadata']
            : MetadataStruct.maybeFromMap(data['metadata']),
        attachments: data['attachments'] is AttachmentsStruct
            ? data['attachments']
            : AttachmentsStruct.maybeFromMap(data['attachments']),
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

  static ReportSuccessResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportSuccessResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'referenceNumber': _referenceNumber,
        'customerId': _customerId,
        'reportType': _reportType,
        'severity': _severity,
        'status': _status,
        'description': _description,
        'submissionSource': _submissionSource,
        'submissionChannel': _submissionChannel,
        'assignedTo': _assignedTo,
        'slaDueAt': _slaDueAt,
        'submittedAt': _submittedAt,
        'resolutionSummary': _resolutionSummary,
        'resolutionType': _resolutionType,
        'reviewedAt': _reviewedAt,
        'reviewedBy': _reviewedBy,
        'isSlaBreached': _isSlaBreached,
        'metadata': _metadata?.toMap(),
        'attachments': _attachments?.toMap(),
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
        'reportType': serializeParam(
          _reportType,
          ParamType.String,
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
        'submissionSource': serializeParam(
          _submissionSource,
          ParamType.String,
        ),
        'submissionChannel': serializeParam(
          _submissionChannel,
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
        'resolutionSummary': serializeParam(
          _resolutionSummary,
          ParamType.String,
        ),
        'resolutionType': serializeParam(
          _resolutionType,
          ParamType.String,
        ),
        'reviewedAt': serializeParam(
          _reviewedAt,
          ParamType.String,
        ),
        'reviewedBy': serializeParam(
          _reviewedBy,
          ParamType.String,
        ),
        'isSlaBreached': serializeParam(
          _isSlaBreached,
          ParamType.bool,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
        'attachments': serializeParam(
          _attachments,
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

  static ReportSuccessResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportSuccessResponseStruct(
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
        reportType: deserializeParam(
          data['reportType'],
          ParamType.String,
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
        submissionSource: deserializeParam(
          data['submissionSource'],
          ParamType.String,
          false,
        ),
        submissionChannel: deserializeParam(
          data['submissionChannel'],
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
        resolutionSummary: deserializeParam(
          data['resolutionSummary'],
          ParamType.String,
          false,
        ),
        resolutionType: deserializeParam(
          data['resolutionType'],
          ParamType.String,
          false,
        ),
        reviewedAt: deserializeParam(
          data['reviewedAt'],
          ParamType.String,
          false,
        ),
        reviewedBy: deserializeParam(
          data['reviewedBy'],
          ParamType.String,
          false,
        ),
        isSlaBreached: deserializeParam(
          data['isSlaBreached'],
          ParamType.bool,
          false,
        ),
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: MetadataStruct.fromSerializableMap,
        ),
        attachments: deserializeStructParam(
          data['attachments'],
          ParamType.DataStruct,
          false,
          structBuilder: AttachmentsStruct.fromSerializableMap,
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
  String toString() => 'ReportSuccessResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportSuccessResponseStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        referenceNumber == other.referenceNumber &&
        customerId == other.customerId &&
        reportType == other.reportType &&
        severity == other.severity &&
        status == other.status &&
        description == other.description &&
        submissionSource == other.submissionSource &&
        submissionChannel == other.submissionChannel &&
        assignedTo == other.assignedTo &&
        slaDueAt == other.slaDueAt &&
        submittedAt == other.submittedAt &&
        resolutionSummary == other.resolutionSummary &&
        resolutionType == other.resolutionType &&
        reviewedAt == other.reviewedAt &&
        reviewedBy == other.reviewedBy &&
        isSlaBreached == other.isSlaBreached &&
        metadata == other.metadata &&
        attachments == other.attachments &&
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
        reportType,
        severity,
        status,
        description,
        submissionSource,
        submissionChannel,
        assignedTo,
        slaDueAt,
        submittedAt,
        resolutionSummary,
        resolutionType,
        reviewedAt,
        reviewedBy,
        isSlaBreached,
        metadata,
        attachments,
        notes,
        statusHistory,
        customer,
        assignee
      ]);
}

ReportSuccessResponseStruct createReportSuccessResponseStruct({
  String? id,
  String? createdAt,
  String? updatedAt,
  String? referenceNumber,
  String? customerId,
  String? reportType,
  String? severity,
  String? status,
  String? description,
  String? submissionSource,
  String? submissionChannel,
  String? assignedTo,
  String? slaDueAt,
  String? submittedAt,
  String? resolutionSummary,
  String? resolutionType,
  String? reviewedAt,
  String? reviewedBy,
  bool? isSlaBreached,
  MetadataStruct? metadata,
  AttachmentsStruct? attachments,
  NotesStruct? notes,
  StatusHistoryStruct? statusHistory,
  CustomerStruct? customer,
  AssigneeStruct? assignee,
}) =>
    ReportSuccessResponseStruct(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      referenceNumber: referenceNumber,
      customerId: customerId,
      reportType: reportType,
      severity: severity,
      status: status,
      description: description,
      submissionSource: submissionSource,
      submissionChannel: submissionChannel,
      assignedTo: assignedTo,
      slaDueAt: slaDueAt,
      submittedAt: submittedAt,
      resolutionSummary: resolutionSummary,
      resolutionType: resolutionType,
      reviewedAt: reviewedAt,
      reviewedBy: reviewedBy,
      isSlaBreached: isSlaBreached,
      metadata: metadata ?? MetadataStruct(),
      attachments: attachments ?? AttachmentsStruct(),
      notes: notes ?? NotesStruct(),
      statusHistory: statusHistory ?? StatusHistoryStruct(),
      customer: customer ?? CustomerStruct(),
      assignee: assignee ?? AssigneeStruct(),
    );
