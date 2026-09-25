// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillsPaymentHistoryModelStruct extends BaseStruct {
  BillsPaymentHistoryModelStruct({
    List<BillsPaymentPaymentsStruct>? payments,
    PaginationStruct? pagination,
  })  : _payments = payments,
        _pagination = pagination;

  // "payments" field.
  List<BillsPaymentPaymentsStruct>? _payments;
  List<BillsPaymentPaymentsStruct> get payments => _payments ?? const [];
  set payments(List<BillsPaymentPaymentsStruct>? val) => _payments = val;

  void updatePayments(Function(List<BillsPaymentPaymentsStruct>) updateFn) {
    updateFn(_payments ??= []);
  }

  bool hasPayments() => _payments != null;

  // "pagination" field.
  PaginationStruct? _pagination;
  PaginationStruct get pagination => _pagination ?? PaginationStruct();
  set pagination(PaginationStruct? val) => _pagination = val;

  void updatePagination(Function(PaginationStruct) updateFn) {
    updateFn(_pagination ??= PaginationStruct());
  }

  bool hasPagination() => _pagination != null;

  static BillsPaymentHistoryModelStruct fromMap(Map<String, dynamic> data) =>
      BillsPaymentHistoryModelStruct(
        payments: getStructList(
          data['payments'],
          BillsPaymentPaymentsStruct.fromMap,
        ),
        pagination: data['pagination'] is PaginationStruct
            ? data['pagination']
            : PaginationStruct.maybeFromMap(data['pagination']),
      );

  static BillsPaymentHistoryModelStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? BillsPaymentHistoryModelStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'payments': _payments?.map((e) => e.toMap()).toList(),
        'pagination': _pagination?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'payments': serializeParam(
          _payments,
          ParamType.DataStruct,
          isList: true,
        ),
        'pagination': serializeParam(
          _pagination,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BillsPaymentHistoryModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BillsPaymentHistoryModelStruct(
        payments: deserializeStructParam<BillsPaymentPaymentsStruct>(
          data['payments'],
          ParamType.DataStruct,
          true,
          structBuilder: BillsPaymentPaymentsStruct.fromSerializableMap,
        ),
        pagination: deserializeStructParam(
          data['pagination'],
          ParamType.DataStruct,
          false,
          structBuilder: PaginationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BillsPaymentHistoryModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is BillsPaymentHistoryModelStruct &&
        listEquality.equals(payments, other.payments) &&
        pagination == other.pagination;
  }

  @override
  int get hashCode => const ListEquality().hash([payments, pagination]);
}

BillsPaymentHistoryModelStruct createBillsPaymentHistoryModelStruct({
  PaginationStruct? pagination,
}) =>
    BillsPaymentHistoryModelStruct(
      pagination: pagination ?? PaginationStruct(),
    );
