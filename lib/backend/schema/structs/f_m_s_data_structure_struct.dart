// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FMSDataStructureStruct extends BaseStruct {
  FMSDataStructureStruct({
    FMSessionStruct? fMSession,
    DeviceInfoStruct? deviceInfo,
    ReservedValuesStruct? reservedValues,
    FMHeaderStruct? fMHeader,
    TransactionStruct? transactionCheckpoint,
  })  : _fMSession = fMSession,
        _deviceInfo = deviceInfo,
        _reservedValues = reservedValues,
        _fMHeader = fMHeader,
        _transactionCheckpoint = transactionCheckpoint;

  // "FMSession" field.
  FMSessionStruct? _fMSession;
  FMSessionStruct get fMSession => _fMSession ?? FMSessionStruct();
  set fMSession(FMSessionStruct? val) => _fMSession = val;

  void updateFMSession(Function(FMSessionStruct) updateFn) {
    updateFn(_fMSession ??= FMSessionStruct());
  }

  bool hasFMSession() => _fMSession != null;

  // "DeviceInfo" field.
  DeviceInfoStruct? _deviceInfo;
  DeviceInfoStruct get deviceInfo => _deviceInfo ?? DeviceInfoStruct();
  set deviceInfo(DeviceInfoStruct? val) => _deviceInfo = val;

  void updateDeviceInfo(Function(DeviceInfoStruct) updateFn) {
    updateFn(_deviceInfo ??= DeviceInfoStruct());
  }

  bool hasDeviceInfo() => _deviceInfo != null;

  // "ReservedValues" field.
  ReservedValuesStruct? _reservedValues;
  ReservedValuesStruct get reservedValues =>
      _reservedValues ?? ReservedValuesStruct();
  set reservedValues(ReservedValuesStruct? val) => _reservedValues = val;

  void updateReservedValues(Function(ReservedValuesStruct) updateFn) {
    updateFn(_reservedValues ??= ReservedValuesStruct());
  }

  bool hasReservedValues() => _reservedValues != null;

  // "FMHeader" field.
  FMHeaderStruct? _fMHeader;
  FMHeaderStruct get fMHeader => _fMHeader ?? FMHeaderStruct();
  set fMHeader(FMHeaderStruct? val) => _fMHeader = val;

  void updateFMHeader(Function(FMHeaderStruct) updateFn) {
    updateFn(_fMHeader ??= FMHeaderStruct());
  }

  bool hasFMHeader() => _fMHeader != null;

  // "transactionCheckpoint" field.
  TransactionStruct? _transactionCheckpoint;
  TransactionStruct get transactionCheckpoint =>
      _transactionCheckpoint ?? TransactionStruct();
  set transactionCheckpoint(TransactionStruct? val) =>
      _transactionCheckpoint = val;

  void updateTransactionCheckpoint(Function(TransactionStruct) updateFn) {
    updateFn(_transactionCheckpoint ??= TransactionStruct());
  }

  bool hasTransactionCheckpoint() => _transactionCheckpoint != null;

  static FMSDataStructureStruct fromMap(Map<String, dynamic> data) =>
      FMSDataStructureStruct(
        fMSession: data['FMSession'] is FMSessionStruct
            ? data['FMSession']
            : FMSessionStruct.maybeFromMap(data['FMSession']),
        deviceInfo: data['DeviceInfo'] is DeviceInfoStruct
            ? data['DeviceInfo']
            : DeviceInfoStruct.maybeFromMap(data['DeviceInfo']),
        reservedValues: data['ReservedValues'] is ReservedValuesStruct
            ? data['ReservedValues']
            : ReservedValuesStruct.maybeFromMap(data['ReservedValues']),
        fMHeader: data['FMHeader'] is FMHeaderStruct
            ? data['FMHeader']
            : FMHeaderStruct.maybeFromMap(data['FMHeader']),
        transactionCheckpoint:
            data['transactionCheckpoint'] is TransactionStruct
                ? data['transactionCheckpoint']
                : TransactionStruct.maybeFromMap(data['transactionCheckpoint']),
      );

  static FMSDataStructureStruct? maybeFromMap(dynamic data) => data is Map
      ? FMSDataStructureStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'FMSession': _fMSession?.toMap(),
        'DeviceInfo': _deviceInfo?.toMap(),
        'ReservedValues': _reservedValues?.toMap(),
        'FMHeader': _fMHeader?.toMap(),
        'transactionCheckpoint': _transactionCheckpoint?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'FMSession': serializeParam(
          _fMSession,
          ParamType.DataStruct,
        ),
        'DeviceInfo': serializeParam(
          _deviceInfo,
          ParamType.DataStruct,
        ),
        'ReservedValues': serializeParam(
          _reservedValues,
          ParamType.DataStruct,
        ),
        'FMHeader': serializeParam(
          _fMHeader,
          ParamType.DataStruct,
        ),
        'transactionCheckpoint': serializeParam(
          _transactionCheckpoint,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FMSDataStructureStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FMSDataStructureStruct(
        fMSession: deserializeStructParam(
          data['FMSession'],
          ParamType.DataStruct,
          false,
          structBuilder: FMSessionStruct.fromSerializableMap,
        ),
        deviceInfo: deserializeStructParam(
          data['DeviceInfo'],
          ParamType.DataStruct,
          false,
          structBuilder: DeviceInfoStruct.fromSerializableMap,
        ),
        reservedValues: deserializeStructParam(
          data['ReservedValues'],
          ParamType.DataStruct,
          false,
          structBuilder: ReservedValuesStruct.fromSerializableMap,
        ),
        fMHeader: deserializeStructParam(
          data['FMHeader'],
          ParamType.DataStruct,
          false,
          structBuilder: FMHeaderStruct.fromSerializableMap,
        ),
        transactionCheckpoint: deserializeStructParam(
          data['transactionCheckpoint'],
          ParamType.DataStruct,
          false,
          structBuilder: TransactionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FMSDataStructureStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FMSDataStructureStruct &&
        fMSession == other.fMSession &&
        deviceInfo == other.deviceInfo &&
        reservedValues == other.reservedValues &&
        fMHeader == other.fMHeader &&
        transactionCheckpoint == other.transactionCheckpoint;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [fMSession, deviceInfo, reservedValues, fMHeader, transactionCheckpoint]);
}

FMSDataStructureStruct createFMSDataStructureStruct({
  FMSessionStruct? fMSession,
  DeviceInfoStruct? deviceInfo,
  ReservedValuesStruct? reservedValues,
  FMHeaderStruct? fMHeader,
  TransactionStruct? transactionCheckpoint,
}) =>
    FMSDataStructureStruct(
      fMSession: fMSession ?? FMSessionStruct(),
      deviceInfo: deviceInfo ?? DeviceInfoStruct(),
      reservedValues: reservedValues ?? ReservedValuesStruct(),
      fMHeader: fMHeader ?? FMHeaderStruct(),
      transactionCheckpoint: transactionCheckpoint ?? TransactionStruct(),
    );
