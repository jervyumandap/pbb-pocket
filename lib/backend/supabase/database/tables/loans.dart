import '../database.dart';

class LoansTable extends SupabaseTable<LoansRow> {
  @override
  String get tableName => 'loans';

  @override
  LoansRow createRow(Map<String, dynamic> data) => LoansRow(data);
}

class LoansRow extends SupabaseDataRow {
  LoansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LoansTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  double? get principal => getField<double>('principal');
  set principal(double? value) => setField<double>('principal', value);

  double? get interestRate => getField<double>('interest_rate');
  set interestRate(double? value) => setField<double>('interest_rate', value);

  int? get tenureMonths => getField<int>('tenure_months');
  set tenureMonths(int? value) => setField<int>('tenure_months', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
