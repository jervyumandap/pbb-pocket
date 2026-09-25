import '../database.dart';

class TransactionLimitsTable extends SupabaseTable<TransactionLimitsRow> {
  @override
  String get tableName => 'transaction_limits';

  @override
  TransactionLimitsRow createRow(Map<String, dynamic> data) =>
      TransactionLimitsRow(data);
}

class TransactionLimitsRow extends SupabaseDataRow {
  TransactionLimitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionLimitsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  double? get dailyLimit => getField<double>('daily_limit');
  set dailyLimit(double? value) => setField<double>('daily_limit', value);

  double? get perTransactionLimit => getField<double>('per_transaction_limit');
  set perTransactionLimit(double? value) =>
      setField<double>('per_transaction_limit', value);

  String? get channel => getField<String>('channel');
  set channel(String? value) => setField<String>('channel', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
