import '../database.dart';

class UserSecurityTable extends SupabaseTable<UserSecurityRow> {
  @override
  String get tableName => 'user_security';

  @override
  UserSecurityRow createRow(Map<String, dynamic> data) => UserSecurityRow(data);
}

class UserSecurityRow extends SupabaseDataRow {
  UserSecurityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserSecurityTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get mpinHash => getField<String>('mpin_hash');
  set mpinHash(String? value) => setField<String>('mpin_hash', value);

  bool? get biometricEnabled => getField<bool>('biometric_enabled');
  set biometricEnabled(bool? value) =>
      setField<bool>('biometric_enabled', value);

  DateTime? get mpinLastChanged => getField<DateTime>('mpin_last_changed');
  set mpinLastChanged(DateTime? value) =>
      setField<DateTime>('mpin_last_changed', value);

  int? get failedAttempts => getField<int>('failed_attempts');
  set failedAttempts(int? value) => setField<int>('failed_attempts', value);

  DateTime? get lockedUntil => getField<DateTime>('locked_until');
  set lockedUntil(DateTime? value) => setField<DateTime>('locked_until', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);

  DateTime? get biometricsRegisteredAt =>
      getField<DateTime>('biometrics_registered_at');
  set biometricsRegisteredAt(DateTime? value) =>
      setField<DateTime>('biometrics_registered_at', value);
}
