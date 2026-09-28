import '../database.dart';

class AccountStatusesTable extends SupabaseTable<AccountStatusesRow> {
  @override
  String get tableName => 'account_statuses';

  @override
  AccountStatusesRow createRow(Map<String, dynamic> data) =>
      AccountStatusesRow(data);
}

class AccountStatusesRow extends SupabaseDataRow {
  AccountStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
