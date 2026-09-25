import '../database.dart';

class LoanRepaymentScheduleTable
    extends SupabaseTable<LoanRepaymentScheduleRow> {
  @override
  String get tableName => 'loan_repayment_schedule';

  @override
  LoanRepaymentScheduleRow createRow(Map<String, dynamic> data) =>
      LoanRepaymentScheduleRow(data);
}

class LoanRepaymentScheduleRow extends SupabaseDataRow {
  LoanRepaymentScheduleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LoanRepaymentScheduleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get loanId => getField<int>('loan_id');
  set loanId(int? value) => setField<int>('loan_id', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  double? get principalDue => getField<double>('principal_due');
  set principalDue(double? value) => setField<double>('principal_due', value);

  double? get interestDue => getField<double>('interest_due');
  set interestDue(double? value) => setField<double>('interest_due', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
