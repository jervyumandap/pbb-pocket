// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QRPaymentHistoryModelStruct extends BaseStruct {
  QRPaymentHistoryModelStruct({
    List<QRPaymentPaymentsStruct>? payments,
    PaginationStruct? pagination,
  })  : _payments = payments,
        _pagination = pagination;

  // "payments" field.
  List<QRPaymentPaymentsStruct>? _payments;
  List<QRPaymentPaymentsStruct> get payments => _payments ?? const [];
  set payments(List<QRPaymentPaymentsStruct>? val) => _payments = val;

  void updatePayments(Function(List<QRPaymentPaymentsStruct>) updateFn) {
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

  static QRPaymentHistoryModelStruct fromMap(Map<String, dynamic> data) =>
      QRPaymentHistoryModelStruct(
        payments: getStructList(
          data['payments'],
          QRPaymentPaymentsStruct.fromMap,
        ),
        pagination: data['pagination'] is PaginationStruct
            ? data['pagination']
            : PaginationStruct.maybeFromMap(data['pagination']),
      );

  static QRPaymentHistoryModelStruct? maybeFromMap(dynamic data) => data is Map
      ? QRPaymentHistoryModelStruct.fromMap(data.cast<String, dynamic>())
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

  static QRPaymentHistoryModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      QRPaymentHistoryModelStruct(
        payments: deserializeStructParam<QRPaymentPaymentsStruct>(
          data['payments'],
          ParamType.DataStruct,
          true,
          structBuilder: QRPaymentPaymentsStruct.fromSerializableMap,
        ),
        pagination: deserializeStructParam(
          data['pagination'],
          ParamType.DataStruct,
          false,
          structBuilder: PaginationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'QRPaymentHistoryModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QRPaymentHistoryModelStruct &&
        listEquality.equals(payments, other.payments) &&
        pagination == other.pagination;
  }

  @override
  int get hashCode => const ListEquality().hash([payments, pagination]);
}

QRPaymentHistoryModelStruct createQRPaymentHistoryModelStruct({
  PaginationStruct? pagination,
}) =>
    QRPaymentHistoryModelStruct(
      pagination: pagination ?? PaginationStruct(),
    );
