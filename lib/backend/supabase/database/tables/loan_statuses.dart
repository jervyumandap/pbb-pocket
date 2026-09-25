import '../database.dart';

class LoanStatusesTable extends SupabaseTable<LoanStatusesRow> {
  @override
  String get tableName => 'loan_statuses';

  @override
  LoanStatusesRow createRow(Map<String, dynamic> data) => LoanStatusesRow(data);
}

class LoanStatusesRow extends SupabaseDataRow {
  LoanStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LoanStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
