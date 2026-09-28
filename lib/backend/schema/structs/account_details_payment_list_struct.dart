// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountDetailsPaymentListStruct extends BaseStruct {
  AccountDetailsPaymentListStruct({
    String? accountName,
    String? accountRef,
    String? imageURL,
  })  : _accountName = accountName,
        _accountRef = accountRef,
        _imageURL = imageURL;

  // "accountName" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "accountRef" field.
  String? _accountRef;
  String get accountRef => _accountRef ?? '';
  set accountRef(String? val) => _accountRef = val;

  bool hasAccountRef() => _accountRef != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  set imageURL(String? val) => _imageURL = val;

  bool hasImageURL() => _imageURL != null;

  static AccountDetailsPaymentListStruct fromMap(Map<String, dynamic> data) =>
      AccountDetailsPaymentListStruct(
        accountName: data['accountName'] as String?,
        accountRef: data['accountRef'] as String?,
        imageURL: data['imageURL'] as String?,
      );

  static AccountDetailsPaymentListStruct? maybeFromMap(dynamic data) => data
          is Map
      ? AccountDetailsPaymentListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'accountName': _accountName,
        'accountRef': _accountRef,
        'imageURL': _imageURL,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'accountName': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'accountRef': serializeParam(
          _accountRef,
          ParamType.String,
        ),
        'imageURL': serializeParam(
          _imageURL,
          ParamType.String,
        ),
      }.withoutNulls;

  static AccountDetailsPaymentListStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      AccountDetailsPaymentListStruct(
        accountName: deserializeParam(
          data['accountName'],
          ParamType.String,
          false,
        ),
        accountRef: deserializeParam(
          data['accountRef'],
          ParamType.String,
          false,
        ),
        imageURL: deserializeParam(
          data['imageURL'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AccountDetailsPaymentListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountDetailsPaymentListStruct &&
        accountName == other.accountName &&
        accountRef == other.accountRef &&
        imageURL == other.imageURL;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([accountName, accountRef, imageURL]);
}

AccountDetailsPaymentListStruct createAccountDetailsPaymentListStruct({
  String? accountName,
  String? accountRef,
  String? imageURL,
}) =>
    AccountDetailsPaymentListStruct(
      accountName: accountName,
      accountRef: accountRef,
      imageURL: imageURL,
    );
