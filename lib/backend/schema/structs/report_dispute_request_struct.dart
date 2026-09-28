// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDisputeRequestStruct extends BaseStruct {
  ReportDisputeRequestStruct({
    String? deviceId,
    String? transactionType,
    String? transactionReference,
    String? category,
    String? description,
    List<EvidenceUrlsStruct>? evidenceUrls,
    String? idempotencyKey,
    String? challenge,
    String? transactionId,
  })  : _deviceId = deviceId,
        _transactionType = transactionType,
        _transactionReference = transactionReference,
        _category = category,
        _description = description,
        _evidenceUrls = evidenceUrls,
        _idempotencyKey = idempotencyKey,
        _challenge = challenge,
        _transactionId = transactionId;

  // "deviceId" field.
  String? _deviceId;
  String get deviceId => _deviceId ?? '';
  set deviceId(String? val) => _deviceId = val;

  bool hasDeviceId() => _deviceId != null;

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

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "evidenceUrls" field.
  List<EvidenceUrlsStruct>? _evidenceUrls;
  List<EvidenceUrlsStruct> get evidenceUrls => _evidenceUrls ?? const [];
  set evidenceUrls(List<EvidenceUrlsStruct>? val) => _evidenceUrls = val;

  void updateEvidenceUrls(Function(List<EvidenceUrlsStruct>) updateFn) {
    updateFn(_evidenceUrls ??= []);
  }

  bool hasEvidenceUrls() => _evidenceUrls != null;

  // "idempotencyKey" field.
  String? _idempotencyKey;
  String get idempotencyKey => _idempotencyKey ?? '';
  set idempotencyKey(String? val) => _idempotencyKey = val;

  bool hasIdempotencyKey() => _idempotencyKey != null;

  // "challenge" field.
  String? _challenge;
  String get challenge => _challenge ?? '';
  set challenge(String? val) => _challenge = val;

  bool hasChallenge() => _challenge != null;

  // "transactionId" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  set transactionId(String? val) => _transactionId = val;

  bool hasTransactionId() => _transactionId != null;

  static ReportDisputeRequestStruct fromMap(Map<String, dynamic> data) =>
      ReportDisputeRequestStruct(
        deviceId: data['deviceId'] as String?,
        transactionType: data['transactionType'] as String?,
        transactionReference: data['transactionReference'] as String?,
        category: data['category'] as String?,
        description: data['description'] as String?,
        evidenceUrls: getStructList(
          data['evidenceUrls'],
          EvidenceUrlsStruct.fromMap,
        ),
        idempotencyKey: data['idempotencyKey'] as String?,
        challenge: data['challenge'] as String?,
        transactionId: data['transactionId'] as String?,
      );

  static ReportDisputeRequestStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportDisputeRequestStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'deviceId': _deviceId,
        'transactionType': _transactionType,
        'transactionReference': _transactionReference,
        'category': _category,
        'description': _description,
        'evidenceUrls': _evidenceUrls?.map((e) => e.toMap()).toList(),
        'idempotencyKey': _idempotencyKey,
        'challenge': _challenge,
        'transactionId': _transactionId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'deviceId': serializeParam(
          _deviceId,
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
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'evidenceUrls': serializeParam(
          _evidenceUrls,
          ParamType.DataStruct,
          isList: true,
        ),
        'idempotencyKey': serializeParam(
          _idempotencyKey,
          ParamType.String,
        ),
        'challenge': serializeParam(
          _challenge,
          ParamType.String,
        ),
        'transactionId': serializeParam(
          _transactionId,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportDisputeRequestStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportDisputeRequestStruct(
        deviceId: deserializeParam(
          data['deviceId'],
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
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        evidenceUrls: deserializeStructParam<EvidenceUrlsStruct>(
          data['evidenceUrls'],
          ParamType.DataStruct,
          true,
          structBuilder: EvidenceUrlsStruct.fromSerializableMap,
        ),
        idempotencyKey: deserializeParam(
          data['idempotencyKey'],
          ParamType.String,
          false,
        ),
        challenge: deserializeParam(
          data['challenge'],
          ParamType.String,
          false,
        ),
        transactionId: deserializeParam(
          data['transactionId'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportDisputeRequestStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReportDisputeRequestStruct &&
        deviceId == other.deviceId &&
        transactionType == other.transactionType &&
        transactionReference == other.transactionReference &&
        category == other.category &&
        description == other.description &&
        listEquality.equals(evidenceUrls, other.evidenceUrls) &&
        idempotencyKey == other.idempotencyKey &&
        challenge == other.challenge &&
        transactionId == other.transactionId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        deviceId,
        transactionType,
        transactionReference,
        category,
        description,
        evidenceUrls,
        idempotencyKey,
        challenge,
        transactionId
      ]);
}

ReportDisputeRequestStruct createReportDisputeRequestStruct({
  String? deviceId,
  String? transactionType,
  String? transactionReference,
  String? category,
  String? description,
  String? idempotencyKey,
  String? challenge,
  String? transactionId,
}) =>
    ReportDisputeRequestStruct(
      deviceId: deviceId,
      transactionType: transactionType,
      transactionReference: transactionReference,
      category: category,
      description: description,
      idempotencyKey: idempotencyKey,
      challenge: challenge,
      transactionId: transactionId,
    );
