// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsPaymentRequestBodyStruct extends BaseStruct {
  BillsPaymentRequestBodyStruct({
    BillsHeaderStruct? billsHeader,
    BillsBodyStruct? billsBody,
  })  : _billsHeader = billsHeader,
        _billsBody = billsBody;

  // "BillsHeader" field.
  BillsHeaderStruct? _billsHeader;
  BillsHeaderStruct get billsHeader => _billsHeader ?? BillsHeaderStruct();
  set billsHeader(BillsHeaderStruct? val) => _billsHeader = val;

  void updateBillsHeader(Function(BillsHeaderStruct) updateFn) {
    updateFn(_billsHeader ??= BillsHeaderStruct());
  }

  bool hasBillsHeader() => _billsHeader != null;

  // "BillsBody" field.
  BillsBodyStruct? _billsBody;
  BillsBodyStruct get billsBody => _billsBody ?? BillsBodyStruct();
  set billsBody(BillsBodyStruct? val) => _billsBody = val;

  void updateBillsBody(Function(BillsBodyStruct) updateFn) {
    updateFn(_billsBody ??= BillsBodyStruct());
  }

  bool hasBillsBody() => _billsBody != null;

  static BillsPaymentRequestBodyStruct fromMap(Map<String, dynamic> data) =>
      BillsPaymentRequestBodyStruct(
        billsHeader: data['BillsHeader'] is BillsHeaderStruct
            ? data['BillsHeader']
            : BillsHeaderStruct.maybeFromMap(data['BillsHeader']),
        billsBody: data['BillsBody'] is BillsBodyStruct
            ? data['BillsBody']
            : BillsBodyStruct.maybeFromMap(data['BillsBody']),
      );

  static BillsPaymentRequestBodyStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? BillsPaymentRequestBodyStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'BillsHeader': _billsHeader?.toMap(),
        'BillsBody': _billsBody?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'BillsHeader': serializeParam(
          _billsHeader,
          ParamType.DataStruct,
        ),
        'BillsBody': serializeParam(
          _billsBody,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BillsPaymentRequestBodyStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BillsPaymentRequestBodyStruct(
        billsHeader: deserializeStructParam(
          data['BillsHeader'],
          ParamType.DataStruct,
          false,
          structBuilder: BillsHeaderStruct.fromSerializableMap,
        ),
        billsBody: deserializeStructParam(
          data['BillsBody'],
          ParamType.DataStruct,
          false,
          structBuilder: BillsBodyStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BillsPaymentRequestBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillsPaymentRequestBodyStruct &&
        billsHeader == other.billsHeader &&
        billsBody == other.billsBody;
  }

  @override
  int get hashCode => const ListEquality().hash([billsHeader, billsBody]);
}

BillsPaymentRequestBodyStruct createBillsPaymentRequestBodyStruct({
  BillsHeaderStruct? billsHeader,
  BillsBodyStruct? billsBody,
}) =>
    BillsPaymentRequestBodyStruct(
      billsHeader: billsHeader ?? BillsHeaderStruct(),
      billsBody: billsBody ?? BillsBodyStruct(),
    );
