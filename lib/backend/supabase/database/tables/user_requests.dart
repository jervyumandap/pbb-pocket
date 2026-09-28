import '../database.dart';

class UserRequestsTable extends SupabaseTable<UserRequestsRow> {
  @override
  String get tableName => 'user_requests';

  @override
  UserRequestsRow createRow(Map<String, dynamic> data) => UserRequestsRow(data);
}

class UserRequestsRow extends SupabaseDataRow {
  UserRequestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserRequestsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get requestType => getField<String>('request_type');
  set requestType(String? value) => setField<String>('request_type', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
