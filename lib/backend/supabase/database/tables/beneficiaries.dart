import '../database.dart';

class BeneficiariesTable extends SupabaseTable<BeneficiariesRow> {
  @override
  String get tableName => 'beneficiaries';

  @override
  BeneficiariesRow createRow(Map<String, dynamic> data) =>
      BeneficiariesRow(data);
}

class BeneficiariesRow extends SupabaseDataRow {
  BeneficiariesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BeneficiariesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get accountNumber => getField<String>('account_number');
  set accountNumber(String? value) => setField<String>('account_number', value);

  String? get bankCode => getField<String>('bank_code');
  set bankCode(String? value) => setField<String>('bank_code', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
