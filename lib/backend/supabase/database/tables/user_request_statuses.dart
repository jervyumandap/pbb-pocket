import '../database.dart';

class UserRequestStatusesTable extends SupabaseTable<UserRequestStatusesRow> {
  @override
  String get tableName => 'user_request_statuses';

  @override
  UserRequestStatusesRow createRow(Map<String, dynamic> data) =>
      UserRequestStatusesRow(data);
}

class UserRequestStatusesRow extends SupabaseDataRow {
  UserRequestStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserRequestStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
