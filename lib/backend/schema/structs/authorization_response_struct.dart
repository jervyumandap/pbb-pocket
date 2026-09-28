// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthorizationResponseStruct extends BaseStruct {
  AuthorizationResponseStruct({
    String? verificationSts,
    String? aVSResultCode,
    String? declineResultCode,
    String? declineResultMessage,
    String? acquirerResponseCode,
    String? acquirerResponseMessage,
    String? threeDSResponseStatus,
    String? threeDSResponseEnrolled,
    String? threeDSResponseECI,
  })  : _verificationSts = verificationSts,
        _aVSResultCode = aVSResultCode,
        _declineResultCode = declineResultCode,
        _declineResultMessage = declineResultMessage,
        _acquirerResponseCode = acquirerResponseCode,
        _acquirerResponseMessage = acquirerResponseMessage,
        _threeDSResponseStatus = threeDSResponseStatus,
        _threeDSResponseEnrolled = threeDSResponseEnrolled,
        _threeDSResponseECI = threeDSResponseECI;

  // "VerificationSts" field.
  String? _verificationSts;
  String get verificationSts => _verificationSts ?? '';
  set verificationSts(String? val) => _verificationSts = val;

  bool hasVerificationSts() => _verificationSts != null;

  // "AVSResultCode" field.
  String? _aVSResultCode;
  String get aVSResultCode => _aVSResultCode ?? '';
  set aVSResultCode(String? val) => _aVSResultCode = val;

  bool hasAVSResultCode() => _aVSResultCode != null;

  // "DeclineResultCode" field.
  String? _declineResultCode;
  String get declineResultCode => _declineResultCode ?? '';
  set declineResultCode(String? val) => _declineResultCode = val;

  bool hasDeclineResultCode() => _declineResultCode != null;

  // "DeclineResultMessage" field.
  String? _declineResultMessage;
  String get declineResultMessage => _declineResultMessage ?? '';
  set declineResultMessage(String? val) => _declineResultMessage = val;

  bool hasDeclineResultMessage() => _declineResultMessage != null;

  // "AcquirerResponseCode" field.
  String? _acquirerResponseCode;
  String get acquirerResponseCode => _acquirerResponseCode ?? '';
  set acquirerResponseCode(String? val) => _acquirerResponseCode = val;

  bool hasAcquirerResponseCode() => _acquirerResponseCode != null;

  // "AcquirerResponseMessage" field.
  String? _acquirerResponseMessage;
  String get acquirerResponseMessage => _acquirerResponseMessage ?? '';
  set acquirerResponseMessage(String? val) => _acquirerResponseMessage = val;

  bool hasAcquirerResponseMessage() => _acquirerResponseMessage != null;

  // "ThreeDSResponseStatus" field.
  String? _threeDSResponseStatus;
  String get threeDSResponseStatus => _threeDSResponseStatus ?? '';
  set threeDSResponseStatus(String? val) => _threeDSResponseStatus = val;

  bool hasThreeDSResponseStatus() => _threeDSResponseStatus != null;

  // "ThreeDSResponseEnrolled" field.
  String? _threeDSResponseEnrolled;
  String get threeDSResponseEnrolled => _threeDSResponseEnrolled ?? '';
  set threeDSResponseEnrolled(String? val) => _threeDSResponseEnrolled = val;

  bool hasThreeDSResponseEnrolled() => _threeDSResponseEnrolled != null;

  // "ThreeDSResponseECI" field.
  String? _threeDSResponseECI;
  String get threeDSResponseECI => _threeDSResponseECI ?? '';
  set threeDSResponseECI(String? val) => _threeDSResponseECI = val;

  bool hasThreeDSResponseECI() => _threeDSResponseECI != null;

  static AuthorizationResponseStruct fromMap(Map<String, dynamic> data) =>
      AuthorizationResponseStruct(
        verificationSts: data['VerificationSts'] as String?,
        aVSResultCode: data['AVSResultCode'] as String?,
        declineResultCode: data['DeclineResultCode'] as String?,
        declineResultMessage: data['DeclineResultMessage'] as String?,
        acquirerResponseCode: data['AcquirerResponseCode'] as String?,
        acquirerResponseMessage: data['AcquirerResponseMessage'] as String?,
        threeDSResponseStatus: data['ThreeDSResponseStatus'] as String?,
        threeDSResponseEnrolled: data['ThreeDSResponseEnrolled'] as String?,
        threeDSResponseECI: data['ThreeDSResponseECI'] as String?,
      );

  static AuthorizationResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AuthorizationResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'VerificationSts': _verificationSts,
        'AVSResultCode': _aVSResultCode,
        'DeclineResultCode': _declineResultCode,
        'DeclineResultMessage': _declineResultMessage,
        'AcquirerResponseCode': _acquirerResponseCode,
        'AcquirerResponseMessage': _acquirerResponseMessage,
        'ThreeDSResponseStatus': _threeDSResponseStatus,
        'ThreeDSResponseEnrolled': _threeDSResponseEnrolled,
        'ThreeDSResponseECI': _threeDSResponseECI,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'VerificationSts': serializeParam(
          _verificationSts,
          ParamType.String,
        ),
        'AVSResultCode': serializeParam(
          _aVSResultCode,
          ParamType.String,
        ),
        'DeclineResultCode': serializeParam(
          _declineResultCode,
          ParamType.String,
        ),
        'DeclineResultMessage': serializeParam(
          _declineResultMessage,
          ParamType.String,
        ),
        'AcquirerResponseCode': serializeParam(
          _acquirerResponseCode,
          ParamType.String,
        ),
        'AcquirerResponseMessage': serializeParam(
          _acquirerResponseMessage,
          ParamType.String,
        ),
        'ThreeDSResponseStatus': serializeParam(
          _threeDSResponseStatus,
          ParamType.String,
        ),
        'ThreeDSResponseEnrolled': serializeParam(
          _threeDSResponseEnrolled,
          ParamType.String,
        ),
        'ThreeDSResponseECI': serializeParam(
          _threeDSResponseECI,
          ParamType.String,
        ),
      }.withoutNulls;

  static AuthorizationResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AuthorizationResponseStruct(
        verificationSts: deserializeParam(
          data['VerificationSts'],
          ParamType.String,
          false,
        ),
        aVSResultCode: deserializeParam(
          data['AVSResultCode'],
          ParamType.String,
          false,
        ),
        declineResultCode: deserializeParam(
          data['DeclineResultCode'],
          ParamType.String,
          false,
        ),
        declineResultMessage: deserializeParam(
          data['DeclineResultMessage'],
          ParamType.String,
          false,
        ),
        acquirerResponseCode: deserializeParam(
          data['AcquirerResponseCode'],
          ParamType.String,
          false,
        ),
        acquirerResponseMessage: deserializeParam(
          data['AcquirerResponseMessage'],
          ParamType.String,
          false,
        ),
        threeDSResponseStatus: deserializeParam(
          data['ThreeDSResponseStatus'],
          ParamType.String,
          false,
        ),
        threeDSResponseEnrolled: deserializeParam(
          data['ThreeDSResponseEnrolled'],
          ParamType.String,
          false,
        ),
        threeDSResponseECI: deserializeParam(
          data['ThreeDSResponseECI'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AuthorizationResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthorizationResponseStruct &&
        verificationSts == other.verificationSts &&
        aVSResultCode == other.aVSResultCode &&
        declineResultCode == other.declineResultCode &&
        declineResultMessage == other.declineResultMessage &&
        acquirerResponseCode == other.acquirerResponseCode &&
        acquirerResponseMessage == other.acquirerResponseMessage &&
        threeDSResponseStatus == other.threeDSResponseStatus &&
        threeDSResponseEnrolled == other.threeDSResponseEnrolled &&
        threeDSResponseECI == other.threeDSResponseECI;
  }

  @override
  int get hashCode => const ListEquality().hash([
        verificationSts,
        aVSResultCode,
        declineResultCode,
        declineResultMessage,
        acquirerResponseCode,
        acquirerResponseMessage,
        threeDSResponseStatus,
        threeDSResponseEnrolled,
        threeDSResponseECI
      ]);
}

AuthorizationResponseStruct createAuthorizationResponseStruct({
  String? verificationSts,
  String? aVSResultCode,
  String? declineResultCode,
  String? declineResultMessage,
  String? acquirerResponseCode,
  String? acquirerResponseMessage,
  String? threeDSResponseStatus,
  String? threeDSResponseEnrolled,
  String? threeDSResponseECI,
}) =>
    AuthorizationResponseStruct(
      verificationSts: verificationSts,
      aVSResultCode: aVSResultCode,
      declineResultCode: declineResultCode,
      declineResultMessage: declineResultMessage,
      acquirerResponseCode: acquirerResponseCode,
      acquirerResponseMessage: acquirerResponseMessage,
      threeDSResponseStatus: threeDSResponseStatus,
      threeDSResponseEnrolled: threeDSResponseEnrolled,
      threeDSResponseECI: threeDSResponseECI,
    );
