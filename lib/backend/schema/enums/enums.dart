import 'package:collection/collection.dart';

enum AccountType {
  casa,
  payroll,
  loan,
  others,
}

enum SidebarControlStyleEnum {
  expanded,
  collapsed,
  expandOnHover,
}

enum Otp {
  NOTIFICATION,
  OTP,
  VERIFYOTP,
}

enum AccountsCardStylePreference {
  card,
  cardSmall,
  stacked,
  list,
  details,
}

enum FundTransfer {
  fundTransferToOtherBank,
  fundTransferWithinPBB,
  fundTransferToOwn,
  favorites,
}

enum BankAccountType {
  SAVINGS,
  current,
  payroll,
  TIME_DEPOSIT,
  salaryLoan,
  foreignCurrency,
  collection,
  escrow,
  casa,
  loan,
  CHECKING,
}

enum TransactionDirectionType {
  DEBIT,
  CREDIT,
}

enum TransactionCategoryType {
  TRANSFER,
  BILLS,
  SALARY,
  ATM,
  PURCHASE,
}

enum QuickActionKey {
  fund_transfer,
  bill_payment,
  qr_payment,
}

/// RSA, EC
enum KeyTypeEnum {
  RSA,
  EC,
}

/// ALERT, ANNOUNCEMENT, TRANSACTIONAL, SYSTEM
enum InboxKind {
  ALERT,
  ANNOUNCEMENT,
  TRANSACTIONAL,
  SYSTEM,
}

/// ASC, DESC
enum OrderType {
  ASC,
  DESC,
}

/// CSV, PDF
enum FileType {
  PDF,
  CSV,
}

enum TransactionTypeKey {
  OWN_ACCOUNT,
  INTRABANK,
  INSTAPAY,
  PESONET,
  BILLS_PAYMENT,
  OTHER_BANK,
}

enum BbPageViewSelection {
  BILLERS,
  FAVORITES,
}

enum BPStatus {
  INITIATED,
  PENDING_CONFIRMATION,
  PROCESSING,
  COMPLETED,
  FAILED,
  CANCELLED,
}

enum BillerActionType {
  edit,
  delete,
}

enum TransactionScheduleType {
  ONCE,
  DAILY,
  WEEKLY,
  MONTHLY,
}

/// NEVER, END_DATE, OCCURRENCE_COUNT
enum ScheduleEndCondition {
  NEVER,
  END_DATE,
  OCCURRENCE_COUNT,
}

/// P2P, P2M
enum QrType {
  P2P,
  P2M,
}

/// INITIATED, ACCOUNT_VALIDATED, etc...
enum ResponseStatus {
  INITIATED,
  ACCOUNT_VALIDATED,
  OTP_VERIFIED,
  ACCOUNT_RECOVERY_BLOCKED,
  ACCOUNT_LOCKED,
  USERNAME_TAKEN,
  MAX_TRUSTED_DEVICES_REACHED,
  INVALID_MPIN,
  INVALID_OTP,
}

/// For Verification: Create credentials, For mpin, etc...
enum VerificationType {
  createCredentials,
  createNewMpin,

  /// old
  createNewPassword,
  recoverUsername,
  recoverPassword,
  trustDevice,
  recoverMpin,

  /// change password with signing challenge
  changePassword,
}

enum ActionBlockReturnType {
  error,
  success,
  invalidMPin,
}

enum SigningAvailableMethods {
  biometric,
  mpin,
  passkey,
}

enum ContentHubEvents {
  IMPRESSION,
  READ,
  DWELL,
  PIN_IMPRESSION,
  PIN_TAP,
}

/// login, fundTransfer Confirmation, billsPaymentConfirmation etc...
enum MpinUsage {
  LOGIN,
  FUND_TRANSFER,
  BILLS_PAYMENT,
  SETTING_LIMITS,
  REMOVE_DEVICE,
  CHANGE_MPIN,
  QR_PAYMENT,
  SCHEDULED_BILLS_PAYMENT,
  SCHEDULED_FUND_TRANSFER,
  CHANGE_PASSWORD,
  TIME_DEPOSIT,
  LOAN_PAYMENT,
  KILL_SWITCH,
  DEVICE_TRUST_APPROVAL,
  REPORT_DISPUTE,
  STOP_CHEQUE,
}

enum PasskeyTransactionType {
  fund_transfer,
  bills_payment,
  qr_payment,
  loan_payment,
  scheduled_transfer,
  scheduled_bills_payment,
  time_deposit,
  password_change,
  kill_switch,
  limit_change,
}

enum ReportType {
  DISPUTE,
  SCAM_PHISHING,
  BANKING_PROBLEM,
  ATM_PROBLEM,
  FUND_TRANSFER,
  BILLS_PAYMENT,
  DEPOSIT_PROBLEM,
  LOAN,
  OTHER,
}

enum ReportTransactionType {
  TRANSFER,
  BILLS_PAYMENT,
  QR_PAYMENT,
  UNSELECTED,
  OTHER,
}

enum ReportQuestions {
  ISSUES,
  CONTACTED,
  HAPPENED,
  SHARE_INFORMATION,
  TRANSACTION_TYPE,
  CONCERN,
  DEVICE,
  ATM_LOCATION,
}

enum ManagePasskeyActionType {
  rename,
  revoke,
}

enum BeneficiaryActionType {
  edit,
  delete,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (AccountType):
      return AccountType.values.deserialize(value) as T?;
    case (SidebarControlStyleEnum):
      return SidebarControlStyleEnum.values.deserialize(value) as T?;
    case (Otp):
      return Otp.values.deserialize(value) as T?;
    case (AccountsCardStylePreference):
      return AccountsCardStylePreference.values.deserialize(value) as T?;
    case (FundTransfer):
      return FundTransfer.values.deserialize(value) as T?;
    case (BankAccountType):
      return BankAccountType.values.deserialize(value) as T?;
    case (TransactionDirectionType):
      return TransactionDirectionType.values.deserialize(value) as T?;
    case (TransactionCategoryType):
      return TransactionCategoryType.values.deserialize(value) as T?;
    case (QuickActionKey):
      return QuickActionKey.values.deserialize(value) as T?;
    case (KeyTypeEnum):
      return KeyTypeEnum.values.deserialize(value) as T?;
    case (InboxKind):
      return InboxKind.values.deserialize(value) as T?;
    case (OrderType):
      return OrderType.values.deserialize(value) as T?;
    case (FileType):
      return FileType.values.deserialize(value) as T?;
    case (TransactionTypeKey):
      return TransactionTypeKey.values.deserialize(value) as T?;
    case (BbPageViewSelection):
      return BbPageViewSelection.values.deserialize(value) as T?;
    case (BPStatus):
      return BPStatus.values.deserialize(value) as T?;
    case (BillerActionType):
      return BillerActionType.values.deserialize(value) as T?;
    case (TransactionScheduleType):
      return TransactionScheduleType.values.deserialize(value) as T?;
    case (ScheduleEndCondition):
      return ScheduleEndCondition.values.deserialize(value) as T?;
    case (QrType):
      return QrType.values.deserialize(value) as T?;
    case (ResponseStatus):
      return ResponseStatus.values.deserialize(value) as T?;
    case (VerificationType):
      return VerificationType.values.deserialize(value) as T?;
    case (ActionBlockReturnType):
      return ActionBlockReturnType.values.deserialize(value) as T?;
    case (SigningAvailableMethods):
      return SigningAvailableMethods.values.deserialize(value) as T?;
    case (ContentHubEvents):
      return ContentHubEvents.values.deserialize(value) as T?;
    case (MpinUsage):
      return MpinUsage.values.deserialize(value) as T?;
    case (PasskeyTransactionType):
      return PasskeyTransactionType.values.deserialize(value) as T?;
    case (ReportType):
      return ReportType.values.deserialize(value) as T?;
    case (ReportTransactionType):
      return ReportTransactionType.values.deserialize(value) as T?;
    case (ReportQuestions):
      return ReportQuestions.values.deserialize(value) as T?;
    case (ManagePasskeyActionType):
      return ManagePasskeyActionType.values.deserialize(value) as T?;
    case (BeneficiaryActionType):
      return BeneficiaryActionType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
