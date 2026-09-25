// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SavedBillerDataModelStruct extends BaseStruct {
  SavedBillerDataModelStruct({
    int? billerId,
    String? billerName,
    String? code,
    String? serviceId,
    String? shortName,
    String? image,
  })  : _billerId = billerId,
        _billerName = billerName,
        _code = code,
        _serviceId = serviceId,
        _shortName = shortName,
        _image = image;

  // "biller_id" field.
  int? _billerId;
  int get billerId => _billerId ?? 0;
  set billerId(int? val) => _billerId = val;

  void incrementBillerId(int amount) => billerId = billerId + amount;

  bool hasBillerId() => _billerId != null;

  // "biller_name" field.
  String? _billerName;
  String get billerName => _billerName ?? '';
  set billerName(String? val) => _billerName = val;

  bool hasBillerName() => _billerName != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "service_id" field.
  String? _serviceId;
  String get serviceId => _serviceId ?? '';
  set serviceId(String? val) => _serviceId = val;

  bool hasServiceId() => _serviceId != null;

  // "short_name" field.
  String? _shortName;
  String get shortName => _shortName ?? '';
  set shortName(String? val) => _shortName = val;

  bool hasShortName() => _shortName != null;

  // "image" field.
  String? _image;
  String get image =>
      _image ??
      'https://yt3.googleusercontent.com/ifGefyNhaGJ2TXrybafKcNDolsx1Wxpsk4mroLuVsbCZLQhtPYuLBrjUv5JG0ZnRLDi78I-KDRQ=s900-c-k-c0x00ffffff-no-rj';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static SavedBillerDataModelStruct fromMap(Map<String, dynamic> data) =>
      SavedBillerDataModelStruct(
        billerId: castToType<int>(data['biller_id']),
        billerName: data['biller_name'] as String?,
        code: data['code'] as String?,
        serviceId: data['service_id'] as String?,
        shortName: data['short_name'] as String?,
        image: data['image'] as String?,
      );

  static SavedBillerDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? SavedBillerDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'biller_id': _billerId,
        'biller_name': _billerName,
        'code': _code,
        'service_id': _serviceId,
        'short_name': _shortName,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'biller_id': serializeParam(
          _billerId,
          ParamType.int,
        ),
        'biller_name': serializeParam(
          _billerName,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'service_id': serializeParam(
          _serviceId,
          ParamType.String,
        ),
        'short_name': serializeParam(
          _shortName,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static SavedBillerDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SavedBillerDataModelStruct(
        billerId: deserializeParam(
          data['biller_id'],
          ParamType.int,
          false,
        ),
        billerName: deserializeParam(
          data['biller_name'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        serviceId: deserializeParam(
          data['service_id'],
          ParamType.String,
          false,
        ),
        shortName: deserializeParam(
          data['short_name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SavedBillerDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SavedBillerDataModelStruct &&
        billerId == other.billerId &&
        billerName == other.billerName &&
        code == other.code &&
        serviceId == other.serviceId &&
        shortName == other.shortName &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([billerId, billerName, code, serviceId, shortName, image]);
}

SavedBillerDataModelStruct createSavedBillerDataModelStruct({
  int? billerId,
  String? billerName,
  String? code,
  String? serviceId,
  String? shortName,
  String? image,
}) =>
    SavedBillerDataModelStruct(
      billerId: billerId,
      billerName: billerName,
      code: code,
      serviceId: serviceId,
      shortName: shortName,
      image: image,
    );
