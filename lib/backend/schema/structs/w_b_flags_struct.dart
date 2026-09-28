// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WBFlagsStruct extends BaseStruct {
  WBFlagsStruct({
    bool? instantTransfers,
    bool? mobileBanking,
    bool? retailAccountPreferences,
    bool? retailBillPayments,
    bool? retailBillsPayment,
    bool? retailBillsPaymentSaveBiller,
    bool? retailBillsPaymentSigning,
    bool? retailBiometricLogin,
    bool? retailCustomerInbox,
    bool? retailDashboard,
    bool? retailDeviceRegistration,
    bool? retailLogin,
    bool? retailMpinEnabled,
    bool? retailMpinLogin,
    bool? retailNotificationPreferences,
    bool? retailOnboarding,
    bool? retailPasswordReset,
    bool? retailPushNotifications,
    bool? retailQrPayments,
    bool? retailQuickTransfers,
    bool? retailSelfRegistration,
    bool? retailTransferInstapay,
    bool? retailTransferOtherPbb,
    bool? retailTransferOwnAccount,
    bool? retailTransferPesonet,
    bool? retailTransfers,
    bool? retailTransferSigning,
    bool? retailUsernameRecovery,
    bool? retailUserSettings,
    bool? unifiedTransactionLimits,
    bool? retailInvestments,
    bool? retailChequeServices,
    bool? retailCardReplacement,
    bool? retailTimeDeposits,
    bool? retailServiceRequestTracker,
    bool? retailSafetyDepositBox,
    bool? retailTrustProductRequests,
    bool? retailAdvisories,
    bool? retailAdvisoryNotifications,
    bool? retailBroadcastNotifications,
    bool? retailChequeInquiry,
    bool? retailCoolingOffPeriod,
    bool? retailCyberHygieneHub,
    bool? retailDeviceTrustApproval,
    bool? retailDisputes,
    bool? retailFmsFraudCheck,
    bool? retailKillSwitch,
    bool? retailLoanApplication,
    bool? retailLoanPayments,
    bool? retailLoans,
    bool? retailMpinRecovery,
    bool? retailPasskeyLogin,
    bool? retailPasskeyRegistration,
    bool? retailPasskeyStepup,
    bool? retailRiskEngine,
    bool? retailScheduledBillsPayment,
    bool? retailScheduledBillsPaymentSigning,
    bool? retailScheduledTransfers,
    bool? retailScheduledTransferSigning,
    bool? retailServiceRequestStatusCallback,
    bool? retailStopCheque,
    bool? retailSuspiciousActivityReports,
    bool? retailTppEnabled,
  })  : _instantTransfers = instantTransfers,
        _mobileBanking = mobileBanking,
        _retailAccountPreferences = retailAccountPreferences,
        _retailBillPayments = retailBillPayments,
        _retailBillsPayment = retailBillsPayment,
        _retailBillsPaymentSaveBiller = retailBillsPaymentSaveBiller,
        _retailBillsPaymentSigning = retailBillsPaymentSigning,
        _retailBiometricLogin = retailBiometricLogin,
        _retailCustomerInbox = retailCustomerInbox,
        _retailDashboard = retailDashboard,
        _retailDeviceRegistration = retailDeviceRegistration,
        _retailLogin = retailLogin,
        _retailMpinEnabled = retailMpinEnabled,
        _retailMpinLogin = retailMpinLogin,
        _retailNotificationPreferences = retailNotificationPreferences,
        _retailOnboarding = retailOnboarding,
        _retailPasswordReset = retailPasswordReset,
        _retailPushNotifications = retailPushNotifications,
        _retailQrPayments = retailQrPayments,
        _retailQuickTransfers = retailQuickTransfers,
        _retailSelfRegistration = retailSelfRegistration,
        _retailTransferInstapay = retailTransferInstapay,
        _retailTransferOtherPbb = retailTransferOtherPbb,
        _retailTransferOwnAccount = retailTransferOwnAccount,
        _retailTransferPesonet = retailTransferPesonet,
        _retailTransfers = retailTransfers,
        _retailTransferSigning = retailTransferSigning,
        _retailUsernameRecovery = retailUsernameRecovery,
        _retailUserSettings = retailUserSettings,
        _unifiedTransactionLimits = unifiedTransactionLimits,
        _retailInvestments = retailInvestments,
        _retailChequeServices = retailChequeServices,
        _retailCardReplacement = retailCardReplacement,
        _retailTimeDeposits = retailTimeDeposits,
        _retailServiceRequestTracker = retailServiceRequestTracker,
        _retailSafetyDepositBox = retailSafetyDepositBox,
        _retailTrustProductRequests = retailTrustProductRequests,
        _retailAdvisories = retailAdvisories,
        _retailAdvisoryNotifications = retailAdvisoryNotifications,
        _retailBroadcastNotifications = retailBroadcastNotifications,
        _retailChequeInquiry = retailChequeInquiry,
        _retailCoolingOffPeriod = retailCoolingOffPeriod,
        _retailCyberHygieneHub = retailCyberHygieneHub,
        _retailDeviceTrustApproval = retailDeviceTrustApproval,
        _retailDisputes = retailDisputes,
        _retailFmsFraudCheck = retailFmsFraudCheck,
        _retailKillSwitch = retailKillSwitch,
        _retailLoanApplication = retailLoanApplication,
        _retailLoanPayments = retailLoanPayments,
        _retailLoans = retailLoans,
        _retailMpinRecovery = retailMpinRecovery,
        _retailPasskeyLogin = retailPasskeyLogin,
        _retailPasskeyRegistration = retailPasskeyRegistration,
        _retailPasskeyStepup = retailPasskeyStepup,
        _retailRiskEngine = retailRiskEngine,
        _retailScheduledBillsPayment = retailScheduledBillsPayment,
        _retailScheduledBillsPaymentSigning =
            retailScheduledBillsPaymentSigning,
        _retailScheduledTransfers = retailScheduledTransfers,
        _retailScheduledTransferSigning = retailScheduledTransferSigning,
        _retailServiceRequestStatusCallback =
            retailServiceRequestStatusCallback,
        _retailStopCheque = retailStopCheque,
        _retailSuspiciousActivityReports = retailSuspiciousActivityReports,
        _retailTppEnabled = retailTppEnabled;

  // "instant_transfers" field.
  bool? _instantTransfers;
  bool get instantTransfers => _instantTransfers ?? true;
  set instantTransfers(bool? val) => _instantTransfers = val;

  bool hasInstantTransfers() => _instantTransfers != null;

  // "mobile_banking" field.
  bool? _mobileBanking;
  bool get mobileBanking => _mobileBanking ?? true;
  set mobileBanking(bool? val) => _mobileBanking = val;

  bool hasMobileBanking() => _mobileBanking != null;

  // "retail_account_preferences" field.
  bool? _retailAccountPreferences;
  bool get retailAccountPreferences => _retailAccountPreferences ?? true;
  set retailAccountPreferences(bool? val) => _retailAccountPreferences = val;

  bool hasRetailAccountPreferences() => _retailAccountPreferences != null;

  // "retail_bill_payments" field.
  bool? _retailBillPayments;
  bool get retailBillPayments => _retailBillPayments ?? true;
  set retailBillPayments(bool? val) => _retailBillPayments = val;

  bool hasRetailBillPayments() => _retailBillPayments != null;

  // "retail_bills_payment" field.
  bool? _retailBillsPayment;
  bool get retailBillsPayment => _retailBillsPayment ?? true;
  set retailBillsPayment(bool? val) => _retailBillsPayment = val;

  bool hasRetailBillsPayment() => _retailBillsPayment != null;

  // "retail_bills_payment_save_biller" field.
  bool? _retailBillsPaymentSaveBiller;
  bool get retailBillsPaymentSaveBiller =>
      _retailBillsPaymentSaveBiller ?? true;
  set retailBillsPaymentSaveBiller(bool? val) =>
      _retailBillsPaymentSaveBiller = val;

  bool hasRetailBillsPaymentSaveBiller() =>
      _retailBillsPaymentSaveBiller != null;

  // "retail_bills_payment_signing" field.
  bool? _retailBillsPaymentSigning;
  bool get retailBillsPaymentSigning => _retailBillsPaymentSigning ?? true;
  set retailBillsPaymentSigning(bool? val) => _retailBillsPaymentSigning = val;

  bool hasRetailBillsPaymentSigning() => _retailBillsPaymentSigning != null;

  // "retail_biometric_login" field.
  bool? _retailBiometricLogin;
  bool get retailBiometricLogin => _retailBiometricLogin ?? true;
  set retailBiometricLogin(bool? val) => _retailBiometricLogin = val;

  bool hasRetailBiometricLogin() => _retailBiometricLogin != null;

  // "retail_customer_inbox" field.
  bool? _retailCustomerInbox;
  bool get retailCustomerInbox => _retailCustomerInbox ?? true;
  set retailCustomerInbox(bool? val) => _retailCustomerInbox = val;

  bool hasRetailCustomerInbox() => _retailCustomerInbox != null;

  // "retail_dashboard" field.
  bool? _retailDashboard;
  bool get retailDashboard => _retailDashboard ?? true;
  set retailDashboard(bool? val) => _retailDashboard = val;

  bool hasRetailDashboard() => _retailDashboard != null;

  // "retail_device_registration" field.
  bool? _retailDeviceRegistration;
  bool get retailDeviceRegistration => _retailDeviceRegistration ?? true;
  set retailDeviceRegistration(bool? val) => _retailDeviceRegistration = val;

  bool hasRetailDeviceRegistration() => _retailDeviceRegistration != null;

  // "retail_login" field.
  bool? _retailLogin;
  bool get retailLogin => _retailLogin ?? true;
  set retailLogin(bool? val) => _retailLogin = val;

  bool hasRetailLogin() => _retailLogin != null;

  // "retail_mpin_enabled" field.
  bool? _retailMpinEnabled;
  bool get retailMpinEnabled => _retailMpinEnabled ?? true;
  set retailMpinEnabled(bool? val) => _retailMpinEnabled = val;

  bool hasRetailMpinEnabled() => _retailMpinEnabled != null;

  // "retail_mpin_login" field.
  bool? _retailMpinLogin;
  bool get retailMpinLogin => _retailMpinLogin ?? true;
  set retailMpinLogin(bool? val) => _retailMpinLogin = val;

  bool hasRetailMpinLogin() => _retailMpinLogin != null;

  // "retail_notification_preferences" field.
  bool? _retailNotificationPreferences;
  bool get retailNotificationPreferences =>
      _retailNotificationPreferences ?? true;
  set retailNotificationPreferences(bool? val) =>
      _retailNotificationPreferences = val;

  bool hasRetailNotificationPreferences() =>
      _retailNotificationPreferences != null;

  // "retail_onboarding" field.
  bool? _retailOnboarding;
  bool get retailOnboarding => _retailOnboarding ?? true;
  set retailOnboarding(bool? val) => _retailOnboarding = val;

  bool hasRetailOnboarding() => _retailOnboarding != null;

  // "retail_password_reset" field.
  bool? _retailPasswordReset;
  bool get retailPasswordReset => _retailPasswordReset ?? true;
  set retailPasswordReset(bool? val) => _retailPasswordReset = val;

  bool hasRetailPasswordReset() => _retailPasswordReset != null;

  // "retail_push_notifications" field.
  bool? _retailPushNotifications;
  bool get retailPushNotifications => _retailPushNotifications ?? true;
  set retailPushNotifications(bool? val) => _retailPushNotifications = val;

  bool hasRetailPushNotifications() => _retailPushNotifications != null;

  // "retail_qr_payments" field.
  bool? _retailQrPayments;
  bool get retailQrPayments => _retailQrPayments ?? true;
  set retailQrPayments(bool? val) => _retailQrPayments = val;

  bool hasRetailQrPayments() => _retailQrPayments != null;

  // "retail_quick_transfers" field.
  bool? _retailQuickTransfers;
  bool get retailQuickTransfers => _retailQuickTransfers ?? true;
  set retailQuickTransfers(bool? val) => _retailQuickTransfers = val;

  bool hasRetailQuickTransfers() => _retailQuickTransfers != null;

  // "retail_self_registration" field.
  bool? _retailSelfRegistration;
  bool get retailSelfRegistration => _retailSelfRegistration ?? true;
  set retailSelfRegistration(bool? val) => _retailSelfRegistration = val;

  bool hasRetailSelfRegistration() => _retailSelfRegistration != null;

  // "retail_transfer_instapay" field.
  bool? _retailTransferInstapay;
  bool get retailTransferInstapay => _retailTransferInstapay ?? true;
  set retailTransferInstapay(bool? val) => _retailTransferInstapay = val;

  bool hasRetailTransferInstapay() => _retailTransferInstapay != null;

  // "retail_transfer_other_pbb" field.
  bool? _retailTransferOtherPbb;
  bool get retailTransferOtherPbb => _retailTransferOtherPbb ?? true;
  set retailTransferOtherPbb(bool? val) => _retailTransferOtherPbb = val;

  bool hasRetailTransferOtherPbb() => _retailTransferOtherPbb != null;

  // "retail_transfer_own_account" field.
  bool? _retailTransferOwnAccount;
  bool get retailTransferOwnAccount => _retailTransferOwnAccount ?? true;
  set retailTransferOwnAccount(bool? val) => _retailTransferOwnAccount = val;

  bool hasRetailTransferOwnAccount() => _retailTransferOwnAccount != null;

  // "retail_transfer_pesonet" field.
  bool? _retailTransferPesonet;
  bool get retailTransferPesonet => _retailTransferPesonet ?? true;
  set retailTransferPesonet(bool? val) => _retailTransferPesonet = val;

  bool hasRetailTransferPesonet() => _retailTransferPesonet != null;

  // "retail_transfers" field.
  bool? _retailTransfers;
  bool get retailTransfers => _retailTransfers ?? true;
  set retailTransfers(bool? val) => _retailTransfers = val;

  bool hasRetailTransfers() => _retailTransfers != null;

  // "retail_transfer_signing" field.
  bool? _retailTransferSigning;
  bool get retailTransferSigning => _retailTransferSigning ?? true;
  set retailTransferSigning(bool? val) => _retailTransferSigning = val;

  bool hasRetailTransferSigning() => _retailTransferSigning != null;

  // "retail_username_recovery" field.
  bool? _retailUsernameRecovery;
  bool get retailUsernameRecovery => _retailUsernameRecovery ?? true;
  set retailUsernameRecovery(bool? val) => _retailUsernameRecovery = val;

  bool hasRetailUsernameRecovery() => _retailUsernameRecovery != null;

  // "retail_user_settings" field.
  bool? _retailUserSettings;
  bool get retailUserSettings => _retailUserSettings ?? true;
  set retailUserSettings(bool? val) => _retailUserSettings = val;

  bool hasRetailUserSettings() => _retailUserSettings != null;

  // "unified_transaction_limits" field.
  bool? _unifiedTransactionLimits;
  bool get unifiedTransactionLimits => _unifiedTransactionLimits ?? true;
  set unifiedTransactionLimits(bool? val) => _unifiedTransactionLimits = val;

  bool hasUnifiedTransactionLimits() => _unifiedTransactionLimits != null;

  // "retail_investments" field.
  bool? _retailInvestments;
  bool get retailInvestments => _retailInvestments ?? true;
  set retailInvestments(bool? val) => _retailInvestments = val;

  bool hasRetailInvestments() => _retailInvestments != null;

  // "retail_cheque_services" field.
  bool? _retailChequeServices;
  bool get retailChequeServices => _retailChequeServices ?? true;
  set retailChequeServices(bool? val) => _retailChequeServices = val;

  bool hasRetailChequeServices() => _retailChequeServices != null;

  // "retail_card_replacement" field.
  bool? _retailCardReplacement;
  bool get retailCardReplacement => _retailCardReplacement ?? true;
  set retailCardReplacement(bool? val) => _retailCardReplacement = val;

  bool hasRetailCardReplacement() => _retailCardReplacement != null;

  // "retail_time_deposits" field.
  bool? _retailTimeDeposits;
  bool get retailTimeDeposits => _retailTimeDeposits ?? true;
  set retailTimeDeposits(bool? val) => _retailTimeDeposits = val;

  bool hasRetailTimeDeposits() => _retailTimeDeposits != null;

  // "retail_service_request_tracker" field.
  bool? _retailServiceRequestTracker;
  bool get retailServiceRequestTracker => _retailServiceRequestTracker ?? true;
  set retailServiceRequestTracker(bool? val) =>
      _retailServiceRequestTracker = val;

  bool hasRetailServiceRequestTracker() => _retailServiceRequestTracker != null;

  // "retail_safety_deposit_box" field.
  bool? _retailSafetyDepositBox;
  bool get retailSafetyDepositBox => _retailSafetyDepositBox ?? true;
  set retailSafetyDepositBox(bool? val) => _retailSafetyDepositBox = val;

  bool hasRetailSafetyDepositBox() => _retailSafetyDepositBox != null;

  // "retail_trust_product_requests" field.
  bool? _retailTrustProductRequests;
  bool get retailTrustProductRequests => _retailTrustProductRequests ?? true;
  set retailTrustProductRequests(bool? val) =>
      _retailTrustProductRequests = val;

  bool hasRetailTrustProductRequests() => _retailTrustProductRequests != null;

  // "retail_advisories" field.
  bool? _retailAdvisories;
  bool get retailAdvisories => _retailAdvisories ?? false;
  set retailAdvisories(bool? val) => _retailAdvisories = val;

  bool hasRetailAdvisories() => _retailAdvisories != null;

  // "retail_advisory_notifications" field.
  bool? _retailAdvisoryNotifications;
  bool get retailAdvisoryNotifications => _retailAdvisoryNotifications ?? false;
  set retailAdvisoryNotifications(bool? val) =>
      _retailAdvisoryNotifications = val;

  bool hasRetailAdvisoryNotifications() => _retailAdvisoryNotifications != null;

  // "retail_broadcast_notifications" field.
  bool? _retailBroadcastNotifications;
  bool get retailBroadcastNotifications =>
      _retailBroadcastNotifications ?? false;
  set retailBroadcastNotifications(bool? val) =>
      _retailBroadcastNotifications = val;

  bool hasRetailBroadcastNotifications() =>
      _retailBroadcastNotifications != null;

  // "retail_cheque_inquiry" field.
  bool? _retailChequeInquiry;
  bool get retailChequeInquiry => _retailChequeInquiry ?? false;
  set retailChequeInquiry(bool? val) => _retailChequeInquiry = val;

  bool hasRetailChequeInquiry() => _retailChequeInquiry != null;

  // "retail_cooling_off_period" field.
  bool? _retailCoolingOffPeriod;
  bool get retailCoolingOffPeriod => _retailCoolingOffPeriod ?? false;
  set retailCoolingOffPeriod(bool? val) => _retailCoolingOffPeriod = val;

  bool hasRetailCoolingOffPeriod() => _retailCoolingOffPeriod != null;

  // "retail_cyber_hygiene_hub" field.
  bool? _retailCyberHygieneHub;
  bool get retailCyberHygieneHub => _retailCyberHygieneHub ?? false;
  set retailCyberHygieneHub(bool? val) => _retailCyberHygieneHub = val;

  bool hasRetailCyberHygieneHub() => _retailCyberHygieneHub != null;

  // "retail_device_trust_approval" field.
  bool? _retailDeviceTrustApproval;
  bool get retailDeviceTrustApproval => _retailDeviceTrustApproval ?? false;
  set retailDeviceTrustApproval(bool? val) => _retailDeviceTrustApproval = val;

  bool hasRetailDeviceTrustApproval() => _retailDeviceTrustApproval != null;

  // "retail_disputes" field.
  bool? _retailDisputes;
  bool get retailDisputes => _retailDisputes ?? false;
  set retailDisputes(bool? val) => _retailDisputes = val;

  bool hasRetailDisputes() => _retailDisputes != null;

  // "retail_fms_fraud_check" field.
  bool? _retailFmsFraudCheck;
  bool get retailFmsFraudCheck => _retailFmsFraudCheck ?? false;
  set retailFmsFraudCheck(bool? val) => _retailFmsFraudCheck = val;

  bool hasRetailFmsFraudCheck() => _retailFmsFraudCheck != null;

  // "retail_kill_switch" field.
  bool? _retailKillSwitch;
  bool get retailKillSwitch => _retailKillSwitch ?? false;
  set retailKillSwitch(bool? val) => _retailKillSwitch = val;

  bool hasRetailKillSwitch() => _retailKillSwitch != null;

  // "retail_loan_application" field.
  bool? _retailLoanApplication;
  bool get retailLoanApplication => _retailLoanApplication ?? false;
  set retailLoanApplication(bool? val) => _retailLoanApplication = val;

  bool hasRetailLoanApplication() => _retailLoanApplication != null;

  // "retail_loan_payments" field.
  bool? _retailLoanPayments;
  bool get retailLoanPayments => _retailLoanPayments ?? false;
  set retailLoanPayments(bool? val) => _retailLoanPayments = val;

  bool hasRetailLoanPayments() => _retailLoanPayments != null;

  // "retail_loans" field.
  bool? _retailLoans;
  bool get retailLoans => _retailLoans ?? false;
  set retailLoans(bool? val) => _retailLoans = val;

  bool hasRetailLoans() => _retailLoans != null;

  // "retail_mpin_recovery" field.
  bool? _retailMpinRecovery;
  bool get retailMpinRecovery => _retailMpinRecovery ?? false;
  set retailMpinRecovery(bool? val) => _retailMpinRecovery = val;

  bool hasRetailMpinRecovery() => _retailMpinRecovery != null;

  // "retail_passkey_login" field.
  bool? _retailPasskeyLogin;
  bool get retailPasskeyLogin => _retailPasskeyLogin ?? false;
  set retailPasskeyLogin(bool? val) => _retailPasskeyLogin = val;

  bool hasRetailPasskeyLogin() => _retailPasskeyLogin != null;

  // "retail_passkey_registration" field.
  bool? _retailPasskeyRegistration;
  bool get retailPasskeyRegistration => _retailPasskeyRegistration ?? false;
  set retailPasskeyRegistration(bool? val) => _retailPasskeyRegistration = val;

  bool hasRetailPasskeyRegistration() => _retailPasskeyRegistration != null;

  // "retail_passkey_stepup" field.
  bool? _retailPasskeyStepup;
  bool get retailPasskeyStepup => _retailPasskeyStepup ?? false;
  set retailPasskeyStepup(bool? val) => _retailPasskeyStepup = val;

  bool hasRetailPasskeyStepup() => _retailPasskeyStepup != null;

  // "retail_risk_engine" field.
  bool? _retailRiskEngine;
  bool get retailRiskEngine => _retailRiskEngine ?? false;
  set retailRiskEngine(bool? val) => _retailRiskEngine = val;

  bool hasRetailRiskEngine() => _retailRiskEngine != null;

  // "retail_scheduled_bills_payment" field.
  bool? _retailScheduledBillsPayment;
  bool get retailScheduledBillsPayment => _retailScheduledBillsPayment ?? false;
  set retailScheduledBillsPayment(bool? val) =>
      _retailScheduledBillsPayment = val;

  bool hasRetailScheduledBillsPayment() => _retailScheduledBillsPayment != null;

  // "retail_scheduled_bills_payment_signing" field.
  bool? _retailScheduledBillsPaymentSigning;
  bool get retailScheduledBillsPaymentSigning =>
      _retailScheduledBillsPaymentSigning ?? false;
  set retailScheduledBillsPaymentSigning(bool? val) =>
      _retailScheduledBillsPaymentSigning = val;

  bool hasRetailScheduledBillsPaymentSigning() =>
      _retailScheduledBillsPaymentSigning != null;

  // "retail_scheduled_transfers" field.
  bool? _retailScheduledTransfers;
  bool get retailScheduledTransfers => _retailScheduledTransfers ?? false;
  set retailScheduledTransfers(bool? val) => _retailScheduledTransfers = val;

  bool hasRetailScheduledTransfers() => _retailScheduledTransfers != null;

  // "retail_scheduled_transfer_signing" field.
  bool? _retailScheduledTransferSigning;
  bool get retailScheduledTransferSigning =>
      _retailScheduledTransferSigning ?? false;
  set retailScheduledTransferSigning(bool? val) =>
      _retailScheduledTransferSigning = val;

  bool hasRetailScheduledTransferSigning() =>
      _retailScheduledTransferSigning != null;

  // "retail_service_request_status_callback" field.
  bool? _retailServiceRequestStatusCallback;
  bool get retailServiceRequestStatusCallback =>
      _retailServiceRequestStatusCallback ?? false;
  set retailServiceRequestStatusCallback(bool? val) =>
      _retailServiceRequestStatusCallback = val;

  bool hasRetailServiceRequestStatusCallback() =>
      _retailServiceRequestStatusCallback != null;

  // "retail_stop_cheque" field.
  bool? _retailStopCheque;
  bool get retailStopCheque => _retailStopCheque ?? false;
  set retailStopCheque(bool? val) => _retailStopCheque = val;

  bool hasRetailStopCheque() => _retailStopCheque != null;

  // "retail_suspicious_activity_reports" field.
  bool? _retailSuspiciousActivityReports;
  bool get retailSuspiciousActivityReports =>
      _retailSuspiciousActivityReports ?? false;
  set retailSuspiciousActivityReports(bool? val) =>
      _retailSuspiciousActivityReports = val;

  bool hasRetailSuspiciousActivityReports() =>
      _retailSuspiciousActivityReports != null;

  // "retail_tpp_enabled" field.
  bool? _retailTppEnabled;
  bool get retailTppEnabled => _retailTppEnabled ?? false;
  set retailTppEnabled(bool? val) => _retailTppEnabled = val;

  bool hasRetailTppEnabled() => _retailTppEnabled != null;

  static WBFlagsStruct fromMap(Map<String, dynamic> data) => WBFlagsStruct(
        instantTransfers: data['instant_transfers'] as bool?,
        mobileBanking: data['mobile_banking'] as bool?,
        retailAccountPreferences: data['retail_account_preferences'] as bool?,
        retailBillPayments: data['retail_bill_payments'] as bool?,
        retailBillsPayment: data['retail_bills_payment'] as bool?,
        retailBillsPaymentSaveBiller:
            data['retail_bills_payment_save_biller'] as bool?,
        retailBillsPaymentSigning:
            data['retail_bills_payment_signing'] as bool?,
        retailBiometricLogin: data['retail_biometric_login'] as bool?,
        retailCustomerInbox: data['retail_customer_inbox'] as bool?,
        retailDashboard: data['retail_dashboard'] as bool?,
        retailDeviceRegistration: data['retail_device_registration'] as bool?,
        retailLogin: data['retail_login'] as bool?,
        retailMpinEnabled: data['retail_mpin_enabled'] as bool?,
        retailMpinLogin: data['retail_mpin_login'] as bool?,
        retailNotificationPreferences:
            data['retail_notification_preferences'] as bool?,
        retailOnboarding: data['retail_onboarding'] as bool?,
        retailPasswordReset: data['retail_password_reset'] as bool?,
        retailPushNotifications: data['retail_push_notifications'] as bool?,
        retailQrPayments: data['retail_qr_payments'] as bool?,
        retailQuickTransfers: data['retail_quick_transfers'] as bool?,
        retailSelfRegistration: data['retail_self_registration'] as bool?,
        retailTransferInstapay: data['retail_transfer_instapay'] as bool?,
        retailTransferOtherPbb: data['retail_transfer_other_pbb'] as bool?,
        retailTransferOwnAccount: data['retail_transfer_own_account'] as bool?,
        retailTransferPesonet: data['retail_transfer_pesonet'] as bool?,
        retailTransfers: data['retail_transfers'] as bool?,
        retailTransferSigning: data['retail_transfer_signing'] as bool?,
        retailUsernameRecovery: data['retail_username_recovery'] as bool?,
        retailUserSettings: data['retail_user_settings'] as bool?,
        unifiedTransactionLimits: data['unified_transaction_limits'] as bool?,
        retailInvestments: data['retail_investments'] as bool?,
        retailChequeServices: data['retail_cheque_services'] as bool?,
        retailCardReplacement: data['retail_card_replacement'] as bool?,
        retailTimeDeposits: data['retail_time_deposits'] as bool?,
        retailServiceRequestTracker:
            data['retail_service_request_tracker'] as bool?,
        retailSafetyDepositBox: data['retail_safety_deposit_box'] as bool?,
        retailTrustProductRequests:
            data['retail_trust_product_requests'] as bool?,
        retailAdvisories: data['retail_advisories'] as bool?,
        retailAdvisoryNotifications:
            data['retail_advisory_notifications'] as bool?,
        retailBroadcastNotifications:
            data['retail_broadcast_notifications'] as bool?,
        retailChequeInquiry: data['retail_cheque_inquiry'] as bool?,
        retailCoolingOffPeriod: data['retail_cooling_off_period'] as bool?,
        retailCyberHygieneHub: data['retail_cyber_hygiene_hub'] as bool?,
        retailDeviceTrustApproval:
            data['retail_device_trust_approval'] as bool?,
        retailDisputes: data['retail_disputes'] as bool?,
        retailFmsFraudCheck: data['retail_fms_fraud_check'] as bool?,
        retailKillSwitch: data['retail_kill_switch'] as bool?,
        retailLoanApplication: data['retail_loan_application'] as bool?,
        retailLoanPayments: data['retail_loan_payments'] as bool?,
        retailLoans: data['retail_loans'] as bool?,
        retailMpinRecovery: data['retail_mpin_recovery'] as bool?,
        retailPasskeyLogin: data['retail_passkey_login'] as bool?,
        retailPasskeyRegistration: data['retail_passkey_registration'] as bool?,
        retailPasskeyStepup: data['retail_passkey_stepup'] as bool?,
        retailRiskEngine: data['retail_risk_engine'] as bool?,
        retailScheduledBillsPayment:
            data['retail_scheduled_bills_payment'] as bool?,
        retailScheduledBillsPaymentSigning:
            data['retail_scheduled_bills_payment_signing'] as bool?,
        retailScheduledTransfers: data['retail_scheduled_transfers'] as bool?,
        retailScheduledTransferSigning:
            data['retail_scheduled_transfer_signing'] as bool?,
        retailServiceRequestStatusCallback:
            data['retail_service_request_status_callback'] as bool?,
        retailStopCheque: data['retail_stop_cheque'] as bool?,
        retailSuspiciousActivityReports:
            data['retail_suspicious_activity_reports'] as bool?,
        retailTppEnabled: data['retail_tpp_enabled'] as bool?,
      );

  static WBFlagsStruct? maybeFromMap(dynamic data) =>
      data is Map ? WBFlagsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'instant_transfers': _instantTransfers,
        'mobile_banking': _mobileBanking,
        'retail_account_preferences': _retailAccountPreferences,
        'retail_bill_payments': _retailBillPayments,
        'retail_bills_payment': _retailBillsPayment,
        'retail_bills_payment_save_biller': _retailBillsPaymentSaveBiller,
        'retail_bills_payment_signing': _retailBillsPaymentSigning,
        'retail_biometric_login': _retailBiometricLogin,
        'retail_customer_inbox': _retailCustomerInbox,
        'retail_dashboard': _retailDashboard,
        'retail_device_registration': _retailDeviceRegistration,
        'retail_login': _retailLogin,
        'retail_mpin_enabled': _retailMpinEnabled,
        'retail_mpin_login': _retailMpinLogin,
        'retail_notification_preferences': _retailNotificationPreferences,
        'retail_onboarding': _retailOnboarding,
        'retail_password_reset': _retailPasswordReset,
        'retail_push_notifications': _retailPushNotifications,
        'retail_qr_payments': _retailQrPayments,
        'retail_quick_transfers': _retailQuickTransfers,
        'retail_self_registration': _retailSelfRegistration,
        'retail_transfer_instapay': _retailTransferInstapay,
        'retail_transfer_other_pbb': _retailTransferOtherPbb,
        'retail_transfer_own_account': _retailTransferOwnAccount,
        'retail_transfer_pesonet': _retailTransferPesonet,
        'retail_transfers': _retailTransfers,
        'retail_transfer_signing': _retailTransferSigning,
        'retail_username_recovery': _retailUsernameRecovery,
        'retail_user_settings': _retailUserSettings,
        'unified_transaction_limits': _unifiedTransactionLimits,
        'retail_investments': _retailInvestments,
        'retail_cheque_services': _retailChequeServices,
        'retail_card_replacement': _retailCardReplacement,
        'retail_time_deposits': _retailTimeDeposits,
        'retail_service_request_tracker': _retailServiceRequestTracker,
        'retail_safety_deposit_box': _retailSafetyDepositBox,
        'retail_trust_product_requests': _retailTrustProductRequests,
        'retail_advisories': _retailAdvisories,
        'retail_advisory_notifications': _retailAdvisoryNotifications,
        'retail_broadcast_notifications': _retailBroadcastNotifications,
        'retail_cheque_inquiry': _retailChequeInquiry,
        'retail_cooling_off_period': _retailCoolingOffPeriod,
        'retail_cyber_hygiene_hub': _retailCyberHygieneHub,
        'retail_device_trust_approval': _retailDeviceTrustApproval,
        'retail_disputes': _retailDisputes,
        'retail_fms_fraud_check': _retailFmsFraudCheck,
        'retail_kill_switch': _retailKillSwitch,
        'retail_loan_application': _retailLoanApplication,
        'retail_loan_payments': _retailLoanPayments,
        'retail_loans': _retailLoans,
        'retail_mpin_recovery': _retailMpinRecovery,
        'retail_passkey_login': _retailPasskeyLogin,
        'retail_passkey_registration': _retailPasskeyRegistration,
        'retail_passkey_stepup': _retailPasskeyStepup,
        'retail_risk_engine': _retailRiskEngine,
        'retail_scheduled_bills_payment': _retailScheduledBillsPayment,
        'retail_scheduled_bills_payment_signing':
            _retailScheduledBillsPaymentSigning,
        'retail_scheduled_transfers': _retailScheduledTransfers,
        'retail_scheduled_transfer_signing': _retailScheduledTransferSigning,
        'retail_service_request_status_callback':
            _retailServiceRequestStatusCallback,
        'retail_stop_cheque': _retailStopCheque,
        'retail_suspicious_activity_reports': _retailSuspiciousActivityReports,
        'retail_tpp_enabled': _retailTppEnabled,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'instant_transfers': serializeParam(
          _instantTransfers,
          ParamType.bool,
        ),
        'mobile_banking': serializeParam(
          _mobileBanking,
          ParamType.bool,
        ),
        'retail_account_preferences': serializeParam(
          _retailAccountPreferences,
          ParamType.bool,
        ),
        'retail_bill_payments': serializeParam(
          _retailBillPayments,
          ParamType.bool,
        ),
        'retail_bills_payment': serializeParam(
          _retailBillsPayment,
          ParamType.bool,
        ),
        'retail_bills_payment_save_biller': serializeParam(
          _retailBillsPaymentSaveBiller,
          ParamType.bool,
        ),
        'retail_bills_payment_signing': serializeParam(
          _retailBillsPaymentSigning,
          ParamType.bool,
        ),
        'retail_biometric_login': serializeParam(
          _retailBiometricLogin,
          ParamType.bool,
        ),
        'retail_customer_inbox': serializeParam(
          _retailCustomerInbox,
          ParamType.bool,
        ),
        'retail_dashboard': serializeParam(
          _retailDashboard,
          ParamType.bool,
        ),
        'retail_device_registration': serializeParam(
          _retailDeviceRegistration,
          ParamType.bool,
        ),
        'retail_login': serializeParam(
          _retailLogin,
          ParamType.bool,
        ),
        'retail_mpin_enabled': serializeParam(
          _retailMpinEnabled,
          ParamType.bool,
        ),
        'retail_mpin_login': serializeParam(
          _retailMpinLogin,
          ParamType.bool,
        ),
        'retail_notification_preferences': serializeParam(
          _retailNotificationPreferences,
          ParamType.bool,
        ),
        'retail_onboarding': serializeParam(
          _retailOnboarding,
          ParamType.bool,
        ),
        'retail_password_reset': serializeParam(
          _retailPasswordReset,
          ParamType.bool,
        ),
        'retail_push_notifications': serializeParam(
          _retailPushNotifications,
          ParamType.bool,
        ),
        'retail_qr_payments': serializeParam(
          _retailQrPayments,
          ParamType.bool,
        ),
        'retail_quick_transfers': serializeParam(
          _retailQuickTransfers,
          ParamType.bool,
        ),
        'retail_self_registration': serializeParam(
          _retailSelfRegistration,
          ParamType.bool,
        ),
        'retail_transfer_instapay': serializeParam(
          _retailTransferInstapay,
          ParamType.bool,
        ),
        'retail_transfer_other_pbb': serializeParam(
          _retailTransferOtherPbb,
          ParamType.bool,
        ),
        'retail_transfer_own_account': serializeParam(
          _retailTransferOwnAccount,
          ParamType.bool,
        ),
        'retail_transfer_pesonet': serializeParam(
          _retailTransferPesonet,
          ParamType.bool,
        ),
        'retail_transfers': serializeParam(
          _retailTransfers,
          ParamType.bool,
        ),
        'retail_transfer_signing': serializeParam(
          _retailTransferSigning,
          ParamType.bool,
        ),
        'retail_username_recovery': serializeParam(
          _retailUsernameRecovery,
          ParamType.bool,
        ),
        'retail_user_settings': serializeParam(
          _retailUserSettings,
          ParamType.bool,
        ),
        'unified_transaction_limits': serializeParam(
          _unifiedTransactionLimits,
          ParamType.bool,
        ),
        'retail_investments': serializeParam(
          _retailInvestments,
          ParamType.bool,
        ),
        'retail_cheque_services': serializeParam(
          _retailChequeServices,
          ParamType.bool,
        ),
        'retail_card_replacement': serializeParam(
          _retailCardReplacement,
          ParamType.bool,
        ),
        'retail_time_deposits': serializeParam(
          _retailTimeDeposits,
          ParamType.bool,
        ),
        'retail_service_request_tracker': serializeParam(
          _retailServiceRequestTracker,
          ParamType.bool,
        ),
        'retail_safety_deposit_box': serializeParam(
          _retailSafetyDepositBox,
          ParamType.bool,
        ),
        'retail_trust_product_requests': serializeParam(
          _retailTrustProductRequests,
          ParamType.bool,
        ),
        'retail_advisories': serializeParam(
          _retailAdvisories,
          ParamType.bool,
        ),
        'retail_advisory_notifications': serializeParam(
          _retailAdvisoryNotifications,
          ParamType.bool,
        ),
        'retail_broadcast_notifications': serializeParam(
          _retailBroadcastNotifications,
          ParamType.bool,
        ),
        'retail_cheque_inquiry': serializeParam(
          _retailChequeInquiry,
          ParamType.bool,
        ),
        'retail_cooling_off_period': serializeParam(
          _retailCoolingOffPeriod,
          ParamType.bool,
        ),
        'retail_cyber_hygiene_hub': serializeParam(
          _retailCyberHygieneHub,
          ParamType.bool,
        ),
        'retail_device_trust_approval': serializeParam(
          _retailDeviceTrustApproval,
          ParamType.bool,
        ),
        'retail_disputes': serializeParam(
          _retailDisputes,
          ParamType.bool,
        ),
        'retail_fms_fraud_check': serializeParam(
          _retailFmsFraudCheck,
          ParamType.bool,
        ),
        'retail_kill_switch': serializeParam(
          _retailKillSwitch,
          ParamType.bool,
        ),
        'retail_loan_application': serializeParam(
          _retailLoanApplication,
          ParamType.bool,
        ),
        'retail_loan_payments': serializeParam(
          _retailLoanPayments,
          ParamType.bool,
        ),
        'retail_loans': serializeParam(
          _retailLoans,
          ParamType.bool,
        ),
        'retail_mpin_recovery': serializeParam(
          _retailMpinRecovery,
          ParamType.bool,
        ),
        'retail_passkey_login': serializeParam(
          _retailPasskeyLogin,
          ParamType.bool,
        ),
        'retail_passkey_registration': serializeParam(
          _retailPasskeyRegistration,
          ParamType.bool,
        ),
        'retail_passkey_stepup': serializeParam(
          _retailPasskeyStepup,
          ParamType.bool,
        ),
        'retail_risk_engine': serializeParam(
          _retailRiskEngine,
          ParamType.bool,
        ),
        'retail_scheduled_bills_payment': serializeParam(
          _retailScheduledBillsPayment,
          ParamType.bool,
        ),
        'retail_scheduled_bills_payment_signing': serializeParam(
          _retailScheduledBillsPaymentSigning,
          ParamType.bool,
        ),
        'retail_scheduled_transfers': serializeParam(
          _retailScheduledTransfers,
          ParamType.bool,
        ),
        'retail_scheduled_transfer_signing': serializeParam(
          _retailScheduledTransferSigning,
          ParamType.bool,
        ),
        'retail_service_request_status_callback': serializeParam(
          _retailServiceRequestStatusCallback,
          ParamType.bool,
        ),
        'retail_stop_cheque': serializeParam(
          _retailStopCheque,
          ParamType.bool,
        ),
        'retail_suspicious_activity_reports': serializeParam(
          _retailSuspiciousActivityReports,
          ParamType.bool,
        ),
        'retail_tpp_enabled': serializeParam(
          _retailTppEnabled,
          ParamType.bool,
        ),
      }.withoutNulls;

  static WBFlagsStruct fromSerializableMap(Map<String, dynamic> data) =>
      WBFlagsStruct(
        instantTransfers: deserializeParam(
          data['instant_transfers'],
          ParamType.bool,
          false,
        ),
        mobileBanking: deserializeParam(
          data['mobile_banking'],
          ParamType.bool,
          false,
        ),
        retailAccountPreferences: deserializeParam(
          data['retail_account_preferences'],
          ParamType.bool,
          false,
        ),
        retailBillPayments: deserializeParam(
          data['retail_bill_payments'],
          ParamType.bool,
          false,
        ),
        retailBillsPayment: deserializeParam(
          data['retail_bills_payment'],
          ParamType.bool,
          false,
        ),
        retailBillsPaymentSaveBiller: deserializeParam(
          data['retail_bills_payment_save_biller'],
          ParamType.bool,
          false,
        ),
        retailBillsPaymentSigning: deserializeParam(
          data['retail_bills_payment_signing'],
          ParamType.bool,
          false,
        ),
        retailBiometricLogin: deserializeParam(
          data['retail_biometric_login'],
          ParamType.bool,
          false,
        ),
        retailCustomerInbox: deserializeParam(
          data['retail_customer_inbox'],
          ParamType.bool,
          false,
        ),
        retailDashboard: deserializeParam(
          data['retail_dashboard'],
          ParamType.bool,
          false,
        ),
        retailDeviceRegistration: deserializeParam(
          data['retail_device_registration'],
          ParamType.bool,
          false,
        ),
        retailLogin: deserializeParam(
          data['retail_login'],
          ParamType.bool,
          false,
        ),
        retailMpinEnabled: deserializeParam(
          data['retail_mpin_enabled'],
          ParamType.bool,
          false,
        ),
        retailMpinLogin: deserializeParam(
          data['retail_mpin_login'],
          ParamType.bool,
          false,
        ),
        retailNotificationPreferences: deserializeParam(
          data['retail_notification_preferences'],
          ParamType.bool,
          false,
        ),
        retailOnboarding: deserializeParam(
          data['retail_onboarding'],
          ParamType.bool,
          false,
        ),
        retailPasswordReset: deserializeParam(
          data['retail_password_reset'],
          ParamType.bool,
          false,
        ),
        retailPushNotifications: deserializeParam(
          data['retail_push_notifications'],
          ParamType.bool,
          false,
        ),
        retailQrPayments: deserializeParam(
          data['retail_qr_payments'],
          ParamType.bool,
          false,
        ),
        retailQuickTransfers: deserializeParam(
          data['retail_quick_transfers'],
          ParamType.bool,
          false,
        ),
        retailSelfRegistration: deserializeParam(
          data['retail_self_registration'],
          ParamType.bool,
          false,
        ),
        retailTransferInstapay: deserializeParam(
          data['retail_transfer_instapay'],
          ParamType.bool,
          false,
        ),
        retailTransferOtherPbb: deserializeParam(
          data['retail_transfer_other_pbb'],
          ParamType.bool,
          false,
        ),
        retailTransferOwnAccount: deserializeParam(
          data['retail_transfer_own_account'],
          ParamType.bool,
          false,
        ),
        retailTransferPesonet: deserializeParam(
          data['retail_transfer_pesonet'],
          ParamType.bool,
          false,
        ),
        retailTransfers: deserializeParam(
          data['retail_transfers'],
          ParamType.bool,
          false,
        ),
        retailTransferSigning: deserializeParam(
          data['retail_transfer_signing'],
          ParamType.bool,
          false,
        ),
        retailUsernameRecovery: deserializeParam(
          data['retail_username_recovery'],
          ParamType.bool,
          false,
        ),
        retailUserSettings: deserializeParam(
          data['retail_user_settings'],
          ParamType.bool,
          false,
        ),
        unifiedTransactionLimits: deserializeParam(
          data['unified_transaction_limits'],
          ParamType.bool,
          false,
        ),
        retailInvestments: deserializeParam(
          data['retail_investments'],
          ParamType.bool,
          false,
        ),
        retailChequeServices: deserializeParam(
          data['retail_cheque_services'],
          ParamType.bool,
          false,
        ),
        retailCardReplacement: deserializeParam(
          data['retail_card_replacement'],
          ParamType.bool,
          false,
        ),
        retailTimeDeposits: deserializeParam(
          data['retail_time_deposits'],
          ParamType.bool,
          false,
        ),
        retailServiceRequestTracker: deserializeParam(
          data['retail_service_request_tracker'],
          ParamType.bool,
          false,
        ),
        retailSafetyDepositBox: deserializeParam(
          data['retail_safety_deposit_box'],
          ParamType.bool,
          false,
        ),
        retailTrustProductRequests: deserializeParam(
          data['retail_trust_product_requests'],
          ParamType.bool,
          false,
        ),
        retailAdvisories: deserializeParam(
          data['retail_advisories'],
          ParamType.bool,
          false,
        ),
        retailAdvisoryNotifications: deserializeParam(
          data['retail_advisory_notifications'],
          ParamType.bool,
          false,
        ),
        retailBroadcastNotifications: deserializeParam(
          data['retail_broadcast_notifications'],
          ParamType.bool,
          false,
        ),
        retailChequeInquiry: deserializeParam(
          data['retail_cheque_inquiry'],
          ParamType.bool,
          false,
        ),
        retailCoolingOffPeriod: deserializeParam(
          data['retail_cooling_off_period'],
          ParamType.bool,
          false,
        ),
        retailCyberHygieneHub: deserializeParam(
          data['retail_cyber_hygiene_hub'],
          ParamType.bool,
          false,
        ),
        retailDeviceTrustApproval: deserializeParam(
          data['retail_device_trust_approval'],
          ParamType.bool,
          false,
        ),
        retailDisputes: deserializeParam(
          data['retail_disputes'],
          ParamType.bool,
          false,
        ),
        retailFmsFraudCheck: deserializeParam(
          data['retail_fms_fraud_check'],
          ParamType.bool,
          false,
        ),
        retailKillSwitch: deserializeParam(
          data['retail_kill_switch'],
          ParamType.bool,
          false,
        ),
        retailLoanApplication: deserializeParam(
          data['retail_loan_application'],
          ParamType.bool,
          false,
        ),
        retailLoanPayments: deserializeParam(
          data['retail_loan_payments'],
          ParamType.bool,
          false,
        ),
        retailLoans: deserializeParam(
          data['retail_loans'],
          ParamType.bool,
          false,
        ),
        retailMpinRecovery: deserializeParam(
          data['retail_mpin_recovery'],
          ParamType.bool,
          false,
        ),
        retailPasskeyLogin: deserializeParam(
          data['retail_passkey_login'],
          ParamType.bool,
          false,
        ),
        retailPasskeyRegistration: deserializeParam(
          data['retail_passkey_registration'],
          ParamType.bool,
          false,
        ),
        retailPasskeyStepup: deserializeParam(
          data['retail_passkey_stepup'],
          ParamType.bool,
          false,
        ),
        retailRiskEngine: deserializeParam(
          data['retail_risk_engine'],
          ParamType.bool,
          false,
        ),
        retailScheduledBillsPayment: deserializeParam(
          data['retail_scheduled_bills_payment'],
          ParamType.bool,
          false,
        ),
        retailScheduledBillsPaymentSigning: deserializeParam(
          data['retail_scheduled_bills_payment_signing'],
          ParamType.bool,
          false,
        ),
        retailScheduledTransfers: deserializeParam(
          data['retail_scheduled_transfers'],
          ParamType.bool,
          false,
        ),
        retailScheduledTransferSigning: deserializeParam(
          data['retail_scheduled_transfer_signing'],
          ParamType.bool,
          false,
        ),
        retailServiceRequestStatusCallback: deserializeParam(
          data['retail_service_request_status_callback'],
          ParamType.bool,
          false,
        ),
        retailStopCheque: deserializeParam(
          data['retail_stop_cheque'],
          ParamType.bool,
          false,
        ),
        retailSuspiciousActivityReports: deserializeParam(
          data['retail_suspicious_activity_reports'],
          ParamType.bool,
          false,
        ),
        retailTppEnabled: deserializeParam(
          data['retail_tpp_enabled'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'WBFlagsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WBFlagsStruct &&
        instantTransfers == other.instantTransfers &&
        mobileBanking == other.mobileBanking &&
        retailAccountPreferences == other.retailAccountPreferences &&
        retailBillPayments == other.retailBillPayments &&
        retailBillsPayment == other.retailBillsPayment &&
        retailBillsPaymentSaveBiller == other.retailBillsPaymentSaveBiller &&
        retailBillsPaymentSigning == other.retailBillsPaymentSigning &&
        retailBiometricLogin == other.retailBiometricLogin &&
        retailCustomerInbox == other.retailCustomerInbox &&
        retailDashboard == other.retailDashboard &&
        retailDeviceRegistration == other.retailDeviceRegistration &&
        retailLogin == other.retailLogin &&
        retailMpinEnabled == other.retailMpinEnabled &&
        retailMpinLogin == other.retailMpinLogin &&
        retailNotificationPreferences == other.retailNotificationPreferences &&
        retailOnboarding == other.retailOnboarding &&
        retailPasswordReset == other.retailPasswordReset &&
        retailPushNotifications == other.retailPushNotifications &&
        retailQrPayments == other.retailQrPayments &&
        retailQuickTransfers == other.retailQuickTransfers &&
        retailSelfRegistration == other.retailSelfRegistration &&
        retailTransferInstapay == other.retailTransferInstapay &&
        retailTransferOtherPbb == other.retailTransferOtherPbb &&
        retailTransferOwnAccount == other.retailTransferOwnAccount &&
        retailTransferPesonet == other.retailTransferPesonet &&
        retailTransfers == other.retailTransfers &&
        retailTransferSigning == other.retailTransferSigning &&
        retailUsernameRecovery == other.retailUsernameRecovery &&
        retailUserSettings == other.retailUserSettings &&
        unifiedTransactionLimits == other.unifiedTransactionLimits &&
        retailInvestments == other.retailInvestments &&
        retailChequeServices == other.retailChequeServices &&
        retailCardReplacement == other.retailCardReplacement &&
        retailTimeDeposits == other.retailTimeDeposits &&
        retailServiceRequestTracker == other.retailServiceRequestTracker &&
        retailSafetyDepositBox == other.retailSafetyDepositBox &&
        retailTrustProductRequests == other.retailTrustProductRequests &&
        retailAdvisories == other.retailAdvisories &&
        retailAdvisoryNotifications == other.retailAdvisoryNotifications &&
        retailBroadcastNotifications == other.retailBroadcastNotifications &&
        retailChequeInquiry == other.retailChequeInquiry &&
        retailCoolingOffPeriod == other.retailCoolingOffPeriod &&
        retailCyberHygieneHub == other.retailCyberHygieneHub &&
        retailDeviceTrustApproval == other.retailDeviceTrustApproval &&
        retailDisputes == other.retailDisputes &&
        retailFmsFraudCheck == other.retailFmsFraudCheck &&
        retailKillSwitch == other.retailKillSwitch &&
        retailLoanApplication == other.retailLoanApplication &&
        retailLoanPayments == other.retailLoanPayments &&
        retailLoans == other.retailLoans &&
        retailMpinRecovery == other.retailMpinRecovery &&
        retailPasskeyLogin == other.retailPasskeyLogin &&
        retailPasskeyRegistration == other.retailPasskeyRegistration &&
        retailPasskeyStepup == other.retailPasskeyStepup &&
        retailRiskEngine == other.retailRiskEngine &&
        retailScheduledBillsPayment == other.retailScheduledBillsPayment &&
        retailScheduledBillsPaymentSigning ==
            other.retailScheduledBillsPaymentSigning &&
        retailScheduledTransfers == other.retailScheduledTransfers &&
        retailScheduledTransferSigning ==
            other.retailScheduledTransferSigning &&
        retailServiceRequestStatusCallback ==
            other.retailServiceRequestStatusCallback &&
        retailStopCheque == other.retailStopCheque &&
        retailSuspiciousActivityReports ==
            other.retailSuspiciousActivityReports &&
        retailTppEnabled == other.retailTppEnabled;
  }

  @override
  int get hashCode => const ListEquality().hash([
        instantTransfers,
        mobileBanking,
        retailAccountPreferences,
        retailBillPayments,
        retailBillsPayment,
        retailBillsPaymentSaveBiller,
        retailBillsPaymentSigning,
        retailBiometricLogin,
        retailCustomerInbox,
        retailDashboard,
        retailDeviceRegistration,
        retailLogin,
        retailMpinEnabled,
        retailMpinLogin,
        retailNotificationPreferences,
        retailOnboarding,
        retailPasswordReset,
        retailPushNotifications,
        retailQrPayments,
        retailQuickTransfers,
        retailSelfRegistration,
        retailTransferInstapay,
        retailTransferOtherPbb,
        retailTransferOwnAccount,
        retailTransferPesonet,
        retailTransfers,
        retailTransferSigning,
        retailUsernameRecovery,
        retailUserSettings,
        unifiedTransactionLimits,
        retailInvestments,
        retailChequeServices,
        retailCardReplacement,
        retailTimeDeposits,
        retailServiceRequestTracker,
        retailSafetyDepositBox,
        retailTrustProductRequests,
        retailAdvisories,
        retailAdvisoryNotifications,
        retailBroadcastNotifications,
        retailChequeInquiry,
        retailCoolingOffPeriod,
        retailCyberHygieneHub,
        retailDeviceTrustApproval,
        retailDisputes,
        retailFmsFraudCheck,
        retailKillSwitch,
        retailLoanApplication,
        retailLoanPayments,
        retailLoans,
        retailMpinRecovery,
        retailPasskeyLogin,
        retailPasskeyRegistration,
        retailPasskeyStepup,
        retailRiskEngine,
        retailScheduledBillsPayment,
        retailScheduledBillsPaymentSigning,
        retailScheduledTransfers,
        retailScheduledTransferSigning,
        retailServiceRequestStatusCallback,
        retailStopCheque,
        retailSuspiciousActivityReports,
        retailTppEnabled
      ]);
}

WBFlagsStruct createWBFlagsStruct({
  bool? instantTransfers,
  bool? mobileBanking,
  bool? retailAccountPreferences,
  bool? retailBillPayments,
  bool? retailBillsPayment,
  bool? retailBillsPaymentSaveBiller,
  bool? retailBillsPaymentSigning,
  bool? retailBiometricLogin,
  bool? retailCustomerInbox,
  bool? retailDashboard,
  bool? retailDeviceRegistration,
  bool? retailLogin,
  bool? retailMpinEnabled,
  bool? retailMpinLogin,
  bool? retailNotificationPreferences,
  bool? retailOnboarding,
  bool? retailPasswordReset,
  bool? retailPushNotifications,
  bool? retailQrPayments,
  bool? retailQuickTransfers,
  bool? retailSelfRegistration,
  bool? retailTransferInstapay,
  bool? retailTransferOtherPbb,
  bool? retailTransferOwnAccount,
  bool? retailTransferPesonet,
  bool? retailTransfers,
  bool? retailTransferSigning,
  bool? retailUsernameRecovery,
  bool? retailUserSettings,
  bool? unifiedTransactionLimits,
  bool? retailInvestments,
  bool? retailChequeServices,
  bool? retailCardReplacement,
  bool? retailTimeDeposits,
  bool? retailServiceRequestTracker,
  bool? retailSafetyDepositBox,
  bool? retailTrustProductRequests,
  bool? retailAdvisories,
  bool? retailAdvisoryNotifications,
  bool? retailBroadcastNotifications,
  bool? retailChequeInquiry,
  bool? retailCoolingOffPeriod,
  bool? retailCyberHygieneHub,
  bool? retailDeviceTrustApproval,
  bool? retailDisputes,
  bool? retailFmsFraudCheck,
  bool? retailKillSwitch,
  bool? retailLoanApplication,
  bool? retailLoanPayments,
  bool? retailLoans,
  bool? retailMpinRecovery,
  bool? retailPasskeyLogin,
  bool? retailPasskeyRegistration,
  bool? retailPasskeyStepup,
  bool? retailRiskEngine,
  bool? retailScheduledBillsPayment,
  bool? retailScheduledBillsPaymentSigning,
  bool? retailScheduledTransfers,
  bool? retailScheduledTransferSigning,
  bool? retailServiceRequestStatusCallback,
  bool? retailStopCheque,
  bool? retailSuspiciousActivityReports,
  bool? retailTppEnabled,
}) =>
    WBFlagsStruct(
      instantTransfers: instantTransfers,
      mobileBanking: mobileBanking,
      retailAccountPreferences: retailAccountPreferences,
      retailBillPayments: retailBillPayments,
      retailBillsPayment: retailBillsPayment,
      retailBillsPaymentSaveBiller: retailBillsPaymentSaveBiller,
      retailBillsPaymentSigning: retailBillsPaymentSigning,
      retailBiometricLogin: retailBiometricLogin,
      retailCustomerInbox: retailCustomerInbox,
      retailDashboard: retailDashboard,
      retailDeviceRegistration: retailDeviceRegistration,
      retailLogin: retailLogin,
      retailMpinEnabled: retailMpinEnabled,
      retailMpinLogin: retailMpinLogin,
      retailNotificationPreferences: retailNotificationPreferences,
      retailOnboarding: retailOnboarding,
      retailPasswordReset: retailPasswordReset,
      retailPushNotifications: retailPushNotifications,
      retailQrPayments: retailQrPayments,
      retailQuickTransfers: retailQuickTransfers,
      retailSelfRegistration: retailSelfRegistration,
      retailTransferInstapay: retailTransferInstapay,
      retailTransferOtherPbb: retailTransferOtherPbb,
      retailTransferOwnAccount: retailTransferOwnAccount,
      retailTransferPesonet: retailTransferPesonet,
      retailTransfers: retailTransfers,
      retailTransferSigning: retailTransferSigning,
      retailUsernameRecovery: retailUsernameRecovery,
      retailUserSettings: retailUserSettings,
      unifiedTransactionLimits: unifiedTransactionLimits,
      retailInvestments: retailInvestments,
      retailChequeServices: retailChequeServices,
      retailCardReplacement: retailCardReplacement,
      retailTimeDeposits: retailTimeDeposits,
      retailServiceRequestTracker: retailServiceRequestTracker,
      retailSafetyDepositBox: retailSafetyDepositBox,
      retailTrustProductRequests: retailTrustProductRequests,
      retailAdvisories: retailAdvisories,
      retailAdvisoryNotifications: retailAdvisoryNotifications,
      retailBroadcastNotifications: retailBroadcastNotifications,
      retailChequeInquiry: retailChequeInquiry,
      retailCoolingOffPeriod: retailCoolingOffPeriod,
      retailCyberHygieneHub: retailCyberHygieneHub,
      retailDeviceTrustApproval: retailDeviceTrustApproval,
      retailDisputes: retailDisputes,
      retailFmsFraudCheck: retailFmsFraudCheck,
      retailKillSwitch: retailKillSwitch,
      retailLoanApplication: retailLoanApplication,
      retailLoanPayments: retailLoanPayments,
      retailLoans: retailLoans,
      retailMpinRecovery: retailMpinRecovery,
      retailPasskeyLogin: retailPasskeyLogin,
      retailPasskeyRegistration: retailPasskeyRegistration,
      retailPasskeyStepup: retailPasskeyStepup,
      retailRiskEngine: retailRiskEngine,
      retailScheduledBillsPayment: retailScheduledBillsPayment,
      retailScheduledBillsPaymentSigning: retailScheduledBillsPaymentSigning,
      retailScheduledTransfers: retailScheduledTransfers,
      retailScheduledTransferSigning: retailScheduledTransferSigning,
      retailServiceRequestStatusCallback: retailServiceRequestStatusCallback,
      retailStopCheque: retailStopCheque,
      retailSuspiciousActivityReports: retailSuspiciousActivityReports,
      retailTppEnabled: retailTppEnabled,
    );
