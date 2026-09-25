import '../database.dart';

class FavoriteTransfersTable extends SupabaseTable<FavoriteTransfersRow> {
  @override
  String get tableName => 'favorite_transfers';

  @override
  FavoriteTransfersRow createRow(Map<String, dynamic> data) =>
      FavoriteTransfersRow(data);
}

class FavoriteTransfersRow extends SupabaseDataRow {
  FavoriteTransfersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoriteTransfersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  int? get beneficiaryId => getField<int>('beneficiary_id');
  set beneficiaryId(int? value) => setField<int>('beneficiary_id', value);

  String? get alias => getField<String>('alias');
  set alias(String? value) => setField<String>('alias', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
