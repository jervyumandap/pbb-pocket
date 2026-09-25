import '../database.dart';

class TransactionStatusesTable extends SupabaseTable<TransactionStatusesRow> {
  @override
  String get tableName => 'transaction_statuses';

  @override
  TransactionStatusesRow createRow(Map<String, dynamic> data) =>
      TransactionStatusesRow(data);
}

class TransactionStatusesRow extends SupabaseDataRow {
  TransactionStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionStatusesTable();

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
