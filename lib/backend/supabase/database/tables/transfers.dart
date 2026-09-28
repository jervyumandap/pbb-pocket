import '../database.dart';

class TransfersTable extends SupabaseTable<TransfersRow> {
  @override
  String get tableName => 'transfers';

  @override
  TransfersRow createRow(Map<String, dynamic> data) => TransfersRow(data);
}

class TransfersRow extends SupabaseDataRow {
  TransfersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransfersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get beneficiaryId => getField<int>('beneficiary_id');
  set beneficiaryId(int? value) => setField<int>('beneficiary_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
