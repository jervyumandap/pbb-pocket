import '../database.dart';

class UserStatusesTable extends SupabaseTable<UserStatusesRow> {
  @override
  String get tableName => 'user_statuses';

  @override
  UserStatusesRow createRow(Map<String, dynamic> data) => UserStatusesRow(data);
}

class UserStatusesRow extends SupabaseDataRow {
  UserStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
