import '../database.dart';

class LoanRepaymentStatusesTable
    extends SupabaseTable<LoanRepaymentStatusesRow> {
  @override
  String get tableName => 'loan_repayment_statuses';

  @override
  LoanRepaymentStatusesRow createRow(Map<String, dynamic> data) =>
      LoanRepaymentStatusesRow(data);
}

class LoanRepaymentStatusesRow extends SupabaseDataRow {
  LoanRepaymentStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LoanRepaymentStatusesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);
}
