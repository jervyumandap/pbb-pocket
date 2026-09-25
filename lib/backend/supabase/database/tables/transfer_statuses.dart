import '../database.dart';

class TransferStatusesTable extends SupabaseTable<TransferStatusesRow> {
  @override
  String get tableName => 'transfer_statuses';

  @override
  TransferStatusesRow createRow(Map<String, dynamic> data) =>
      TransferStatusesRow(data);
}

class TransferStatusesRow extends SupabaseDataRow {
  TransferStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransferStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
