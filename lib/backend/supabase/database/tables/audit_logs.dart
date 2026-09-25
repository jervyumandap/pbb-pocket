import '../database.dart';

class AuditLogsTable extends SupabaseTable<AuditLogsRow> {
  @override
  String get tableName => 'audit_logs';

  @override
  AuditLogsRow createRow(Map<String, dynamic> data) => AuditLogsRow(data);
}

class AuditLogsRow extends SupabaseDataRow {
  AuditLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuditLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  String? get entity => getField<String>('entity');
  set entity(String? value) => setField<String>('entity', value);

  int? get entityId => getField<int>('entity_id');
  set entityId(int? value) => setField<int>('entity_id', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  String? get ipAddress => getField<String>('ip_address');
  set ipAddress(String? value) => setField<String>('ip_address', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
