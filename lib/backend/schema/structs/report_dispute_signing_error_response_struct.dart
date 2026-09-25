// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportDisputeSigningErrorResponseStruct extends BaseStruct {
  ReportDisputeSigningErrorResponseStruct({
    int? status,
    String? title,
    String? detail,
    String? error,
    String? message,
    int? remainingAttempts,
    String? type,
    String? instance,
  })  : _status = status,
        _title = title,
        _detail = detail,
        _error = error,
        _message = message,
        _remainingAttempts = remainingAttempts,
        _type = type,
        _instance = instance;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  set status(int? val) => _status = val;

  void incrementStatus(int amount) => status = status + amount;

  bool hasStatus() => _status != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "detail" field.
  String? _detail;
  String get detail => _detail ?? '';
  set detail(String? val) => _detail = val;

  bool hasDetail() => _detail != null;

  // "error" field.
  String? _error;
  String get error => _error ?? '';
  set error(String? val) => _error = val;

  bool hasError() => _error != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "remainingAttempts" field.
  int? _remainingAttempts;
  int get remainingAttempts => _remainingAttempts ?? 0;
  set remainingAttempts(int? val) => _remainingAttempts = val;

  void incrementRemainingAttempts(int amount) =>
      remainingAttempts = remainingAttempts + amount;

  bool hasRemainingAttempts() => _remainingAttempts != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "instance" field.
  String? _instance;
  String get instance => _instance ?? '';
  set instance(String? val) => _instance = val;

  bool hasInstance() => _instance != null;

  static ReportDisputeSigningErrorResponseStruct fromMap(
          Map<String, dynamic> data) =>
      ReportDisputeSigningErrorResponseStruct(
        status: castToType<int>(data['status']),
        title: data['title'] as String?,
        detail: data['detail'] as String?,
        error: data['error'] as String?,
        message: data['message'] as String?,
        remainingAttempts: castToType<int>(data['remainingAttempts']),
        type: data['type'] as String?,
        instance: data['instance'] as String?,
      );

  static ReportDisputeSigningErrorResponseStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ReportDisputeSigningErrorResponseStruct.fromMap(
              data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'title': _title,
        'detail': _detail,
        'error': _error,
        'message': _message,
        'remainingAttempts': _remainingAttempts,
        'type': _type,
        'instance': _instance,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'detail': serializeParam(
          _detail,
          ParamType.String,
        ),
        'error': serializeParam(
          _error,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'remainingAttempts': serializeParam(
          _remainingAttempts,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'instance': serializeParam(
          _instance,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReportDisputeSigningErrorResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportDisputeSigningErrorResponseStruct(
        status: deserializeParam(
          data['status'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        detail: deserializeParam(
          data['detail'],
          ParamType.String,
          false,
        ),
        error: deserializeParam(
          data['error'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        remainingAttempts: deserializeParam(
          data['remainingAttempts'],
          ParamType.int,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        instance: deserializeParam(
          data['instance'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReportDisputeSigningErrorResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportDisputeSigningErrorResponseStruct &&
        status == other.status &&
        title == other.title &&
        detail == other.detail &&
        error == other.error &&
        message == other.message &&
        remainingAttempts == other.remainingAttempts &&
        type == other.type &&
        instance == other.instance;
  }

  @override
  int get hashCode => const ListEquality().hash([
        status,
        title,
        detail,
        error,
        message,
        remainingAttempts,
        type,
        instance
      ]);
}

ReportDisputeSigningErrorResponseStruct
    createReportDisputeSigningErrorResponseStruct({
  int? status,
  String? title,
  String? detail,
  String? error,
  String? message,
  int? remainingAttempts,
  String? type,
  String? instance,
}) =>
        ReportDisputeSigningErrorResponseStruct(
          status: status,
          title: title,
          detail: detail,
          error: error,
          message: message,
          remainingAttempts: remainingAttempts,
          type: type,
          instance: instance,
        );
