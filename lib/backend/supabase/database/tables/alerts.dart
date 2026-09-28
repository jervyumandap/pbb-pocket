import '../database.dart';

class AlertsTable extends SupabaseTable<AlertsRow> {
  @override
  String get tableName => 'alerts';

  @override
  AlertsRow createRow(Map<String, dynamic> data) => AlertsRow(data);
}

class AlertsRow extends SupabaseDataRow {
  AlertsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlertsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get alertType => getField<String>('alert_type');
  set alertType(String? value) => setField<String>('alert_type', value);

  bool? get enabled => getField<bool>('enabled');
  set enabled(bool? value) => setField<bool>('enabled', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
