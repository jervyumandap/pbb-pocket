// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SMSResponseStruct extends BaseStruct {
  SMSResponseStruct({
    String? statusCode,
    String? description,
    String? checkpoint,
    MessageDetailsStruct? messageDetails,
    String? dateReceived,
  })  : _statusCode = statusCode,
        _description = description,
        _checkpoint = checkpoint,
        _messageDetails = messageDetails,
        _dateReceived = dateReceived;

  // "StatusCode" field.
  String? _statusCode;
  String get statusCode => _statusCode ?? '';
  set statusCode(String? val) => _statusCode = val;

  bool hasStatusCode() => _statusCode != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "Checkpoint" field.
  String? _checkpoint;
  String get checkpoint => _checkpoint ?? '';
  set checkpoint(String? val) => _checkpoint = val;

  bool hasCheckpoint() => _checkpoint != null;

  // "MessageDetails" field.
  MessageDetailsStruct? _messageDetails;
  MessageDetailsStruct get messageDetails =>
      _messageDetails ?? MessageDetailsStruct();
  set messageDetails(MessageDetailsStruct? val) => _messageDetails = val;

  void updateMessageDetails(Function(MessageDetailsStruct) updateFn) {
    updateFn(_messageDetails ??= MessageDetailsStruct());
  }

  bool hasMessageDetails() => _messageDetails != null;

  // "DateReceived" field.
  String? _dateReceived;
  String get dateReceived => _dateReceived ?? '';
  set dateReceived(String? val) => _dateReceived = val;

  bool hasDateReceived() => _dateReceived != null;

  static SMSResponseStruct fromMap(Map<String, dynamic> data) =>
      SMSResponseStruct(
        statusCode: data['StatusCode'] as String?,
        description: data['Description'] as String?,
        checkpoint: data['Checkpoint'] as String?,
        messageDetails: data['MessageDetails'] is MessageDetailsStruct
            ? data['MessageDetails']
            : MessageDetailsStruct.maybeFromMap(data['MessageDetails']),
        dateReceived: data['DateReceived'] as String?,
      );

  static SMSResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? SMSResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'StatusCode': _statusCode,
        'Description': _description,
        'Checkpoint': _checkpoint,
        'MessageDetails': _messageDetails?.toMap(),
        'DateReceived': _dateReceived,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'StatusCode': serializeParam(
          _statusCode,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'Checkpoint': serializeParam(
          _checkpoint,
          ParamType.String,
        ),
        'MessageDetails': serializeParam(
          _messageDetails,
          ParamType.DataStruct,
        ),
        'DateReceived': serializeParam(
          _dateReceived,
          ParamType.String,
        ),
      }.withoutNulls;

  static SMSResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      SMSResponseStruct(
        statusCode: deserializeParam(
          data['StatusCode'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        checkpoint: deserializeParam(
          data['Checkpoint'],
          ParamType.String,
          false,
        ),
        messageDetails: deserializeStructParam(
          data['MessageDetails'],
          ParamType.DataStruct,
          false,
          structBuilder: MessageDetailsStruct.fromSerializableMap,
        ),
        dateReceived: deserializeParam(
          data['DateReceived'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SMSResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SMSResponseStruct &&
        statusCode == other.statusCode &&
        description == other.description &&
        checkpoint == other.checkpoint &&
        messageDetails == other.messageDetails &&
        dateReceived == other.dateReceived;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [statusCode, description, checkpoint, messageDetails, dateReceived]);
}

SMSResponseStruct createSMSResponseStruct({
  String? statusCode,
  String? description,
  String? checkpoint,
  MessageDetailsStruct? messageDetails,
  String? dateReceived,
}) =>
    SMSResponseStruct(
      statusCode: statusCode,
      description: description,
      checkpoint: checkpoint,
      messageDetails: messageDetails ?? MessageDetailsStruct(),
      dateReceived: dateReceived,
    );
