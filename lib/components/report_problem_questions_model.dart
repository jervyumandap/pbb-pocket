import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'report_problem_questions_widget.dart' show ReportProblemQuestionsWidget;
import 'package:flutter/material.dart';

class ReportProblemQuestionsModel
    extends FlutterFlowModel<ReportProblemQuestionsWidget> {
  ///  Local state fields for this component.

  List<ReportSelectionItemsStruct> selectionItems = [];
  void addToSelectionItems(ReportSelectionItemsStruct item) =>
      selectionItems.add(item);
  void removeFromSelectionItems(ReportSelectionItemsStruct item) =>
      selectionItems.remove(item);
  void removeAtIndexFromSelectionItems(int index) =>
      selectionItems.removeAt(index);
  void insertAtIndexInSelectionItems(
          int index, ReportSelectionItemsStruct item) =>
      selectionItems.insert(index, item);
  void updateSelectionItemsAtIndex(
          int index, Function(ReportSelectionItemsStruct) updateFn) =>
      selectionItems[index] = updateFn(selectionItems[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future getIssues(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Fake text message',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Fake Facebook Page',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Fake Website',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Fake email',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Someone pretending to be the bank',
      ));
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cannot log-in',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'OTP not Received',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'App Crashes',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cash not dispended',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'ATM kept my card',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong amount dispensed',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Money deducted',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Recipient did not receive',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong recipient',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Pending Transfer',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Biller',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Reference Number',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Amount',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Payment Date',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cash Deposit Missing',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cheque Deposit Delayed',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Deposit Not Reflected',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.LOAN) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Payment not posted',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong balance',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong interest',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Loan Application Form',
        value: 'other',
      ));
    } else {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'I don\'t recognize this transaction. What should I do?',
        value: 'unauthorized',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'My card was stolen/lost, and there are charges I didn\'t make.',
        value: 'unauthorized',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'How do I report a fraudulent charge?',
        value: 'fraud',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'I was charged twice for the same transaction',
        value: 'duplicate',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'The ATM didn\'t dispense my cash, buy my account was debited',
        value: 'other',
      ));
    }
  }

  Future getContacted(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'SMS',
        value: 'phishing_email_sms',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Email',
        value: 'phishing_email_sms',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Call',
        value: 'suspicious_caller',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Facebook/Messenger',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Viber/WhatsApp',
        value: 'phishing_email_sms',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Website',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Other',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {}
  }

  Future getHappened(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'SMS',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'I clicked a suspicious link',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'I entered my banking credentials',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Facebook/Messenger',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'I downloaded an app',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Someone claimed to be from the Bank.',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'I transferred money because of the scam',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Other',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {}
  }

  Future getInformation(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'No',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Username',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Password',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'OTP',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Card Number',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'CVV',
        value: '',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'PIN',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Personal Information',
        value: 'other',
      ));
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {}
  }

  Future getTransactionType(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Own Account',
        value: 'Own Account',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Within Bank',
        value: 'Within Bank',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Instapay/PESONet',
        value: 'Instapay/PESONet',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Scheduled Transfer',
        value: 'Scheduled Transfer',
      ));
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Not Posted',
        value: 'Not Posted',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Duplicate',
        value: 'Duplicate',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong Amount',
        value: 'Wrong Amount',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong Amount',
        value: 'Wrong Amount',
      ));
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {
    } else {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Debit Card',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'ATM withdrawal',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Fund Transfer',
        value: 'transfer',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Bills Payment',
        value: 'bill_payment',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'QR Payment',
        value: 'qr_payment',
      ));
    }
  }

  Future getConcern(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Locked Account',
        value: 'Locked Account',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Forgot Username/Password',
        value: 'Forgot Username/Password',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'OTP not received',
        value: 'OTP not received',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Biometric/MPIN Problem',
        value: 'Biometric/MPIN Problem',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cannot register',
        value: 'Cannot register',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Error Message',
        value: 'Error Message',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'App crashing',
        value: 'other',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Slow Performance',
        value: 'Slow Performance',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cannot Generate QR',
        value: 'Cannot Generate QR',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cannot Transfer via QR',
        value: 'Cannot Transfer via QR',
      ));
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cash not dispensed',
        value: 'Cash not dispensed',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Partial cash dispensed',
        value: 'Partial cash dispensed',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'ATM retained card',
        value: 'ATM retained card',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'ATM offline',
        value: 'ATM offline',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Cash deposit not credited',
        value: 'Cash deposit not credited',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Other',
        value: 'Other',
      ));
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Failed',
        value: 'Failed',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Pending',
        value: 'Pending',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Wrong recipient',
        value: 'Wrong recipient',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Duplicate Transfer',
        value: 'Duplicate Transfer',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Recipient Didn\'t Receive',
        value: 'Recipient Didn\'t Receive',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Other',
        value: 'Other',
      ));
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {}
  }

  Future getDevice(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Andriod',
        value: 'Andriod',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Iphone',
        value: 'Iphone',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Browser',
        value: 'Browser',
      ));
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {}
  }

  Future getATMLocation(BuildContext context) async {
    if (widget!.reportType == ReportType.SCAM_PHISHING) {
    } else if (widget!.reportType == ReportType.BANKING_PROBLEM) {
    } else if (widget!.reportType == ReportType.ATM_PROBLEM) {
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Alabang Putatan Branch',
        value: 'Alabang Putatan Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Angeles Branch',
        value: 'Angeles Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Antipolo Branch',
        value: 'Antipolo Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Aseana 2 Branch',
        value: 'Aseana 2 Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Baguio Branch',
        value: 'Baguio Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Bajada Branch',
        value: 'Bajada Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Baliuag Onsite Branch',
        value: 'Baliuag Onsite Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Baliuag-Rugay',
        value: 'Baliuag-Rugay',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Balanga Branch',
        value: 'Balanga Branch',
      ));
      addToSelectionItems(ReportSelectionItemsStruct(
        item: 'Balayan Branch',
        value: 'Balayan Branch',
      ));
    } else if (widget!.reportType == ReportType.FUND_TRANSFER) {
    } else if (widget!.reportType == ReportType.BILLS_PAYMENT) {
    } else if (widget!.reportType == ReportType.DEPOSIT_PROBLEM) {
    } else if (widget!.reportType == ReportType.LOAN) {}
  }
}
