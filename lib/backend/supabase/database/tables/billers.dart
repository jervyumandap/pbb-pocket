import '../database.dart';

class BillersTable extends SupabaseTable<BillersRow> {
  @override
  String get tableName => 'billers';

  @override
  BillersRow createRow(Map<String, dynamic> data) => BillersRow(data);
}

class BillersRow extends SupabaseDataRow {
  BillersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BillersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get referenceFormat => getField<String>('reference_format');
  set referenceFormat(String? value) =>
      setField<String>('reference_format', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
