import '../database.dart';

class AccountTypesTable extends SupabaseTable<AccountTypesRow> {
  @override
  String get tableName => 'account_types';

  @override
  AccountTypesRow createRow(Map<String, dynamic> data) => AccountTypesRow(data);
}

class AccountTypesRow extends SupabaseDataRow {
  AccountTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
