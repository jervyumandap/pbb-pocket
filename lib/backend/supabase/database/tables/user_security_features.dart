import '../database.dart';

class UserSecurityFeaturesTable extends SupabaseTable<UserSecurityFeaturesRow> {
  @override
  String get tableName => 'user_security_features';

  @override
  UserSecurityFeaturesRow createRow(Map<String, dynamic> data) =>
      UserSecurityFeaturesRow(data);
}

class UserSecurityFeaturesRow extends SupabaseDataRow {
  UserSecurityFeaturesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserSecurityFeaturesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get featureId => getField<int>('feature_id');
  set featureId(int? value) => setField<int>('feature_id', value);

  bool? get enabled => getField<bool>('enabled');
  set enabled(bool? value) => setField<bool>('enabled', value);

  DateTime? get enabledAt => getField<DateTime>('enabled_at');
  set enabledAt(DateTime? value) => setField<DateTime>('enabled_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
