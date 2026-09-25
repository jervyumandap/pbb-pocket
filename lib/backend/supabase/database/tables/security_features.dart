import '../database.dart';

class SecurityFeaturesTable extends SupabaseTable<SecurityFeaturesRow> {
  @override
  String get tableName => 'security_features';

  @override
  SecurityFeaturesRow createRow(Map<String, dynamic> data) =>
      SecurityFeaturesRow(data);
}

class SecurityFeaturesRow extends SupabaseDataRow {
  SecurityFeaturesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SecurityFeaturesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get featureCode => getField<String>('feature_code');
  set featureCode(String? value) => setField<String>('feature_code', value);

  String? get featureName => getField<String>('feature_name');
  set featureName(String? value) => setField<String>('feature_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isSystem => getField<bool>('is_system');
  set isSystem(bool? value) => setField<bool>('is_system', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
