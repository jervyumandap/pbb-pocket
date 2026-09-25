import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  PBBPocketAuthUser? initialUser;
  PBBPocketAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(PBBPocketAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier, [Widget? entryPage]) =>
    GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? entryPage ?? DashboardWidget()
          : LandingPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? entryPage ?? DashboardWidget()
              : LandingPageWidget(),
        ),
        FFRoute(
          name: CheckStatusViewWidget.routeName,
          path: CheckStatusViewWidget.routePath,
          builder: (context, params) => CheckStatusViewWidget(),
        ),
        FFRoute(
          name: QuickSendViewUserPageWidget.routeName,
          path: QuickSendViewUserPageWidget.routePath,
          builder: (context, params) => QuickSendViewUserPageWidget(),
        ),
        FFRoute(
          name: QuickSendMoneyPageWidget.routeName,
          path: QuickSendMoneyPageWidget.routePath,
          builder: (context, params) => QuickSendMoneyPageWidget(),
        ),
        FFRoute(
          name: CheckDepositProcessingPageWidget.routeName,
          path: CheckDepositProcessingPageWidget.routePath,
          builder: (context, params) => CheckDepositProcessingPageWidget(),
        ),
        FFRoute(
          name: TransferToWalletPageWidget.routeName,
          path: TransferToWalletPageWidget.routePath,
          builder: (context, params) => TransferToWalletPageWidget(),
        ),
        FFRoute(
          name: LoanPageWidget.routeName,
          path: LoanPageWidget.routePath,
          builder: (context, params) => LoanPageWidget(),
        ),
        FFRoute(
          name: PayLoanPageWidget.routeName,
          path: PayLoanPageWidget.routePath,
          builder: (context, params) => PayLoanPageWidget(),
        ),
        FFRoute(
          name: LoansPageWidget.routeName,
          path: LoansPageWidget.routePath,
          builder: (context, params) => LoansPageWidget(),
        ),
        FFRoute(
          name: AccountIsLockedPageWidget.routeName,
          path: AccountIsLockedPageWidget.routePath,
          builder: (context, params) => AccountIsLockedPageWidget(
            lockedUntil: params.getParam(
              'lockedUntil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RegisterDeviceWidget.routeName,
          path: RegisterDeviceWidget.routePath,
          builder: (context, params) => RegisterDeviceWidget(),
        ),
        FFRoute(
          name: ServiceRequestEditPageWidget.routeName,
          path: ServiceRequestEditPageWidget.routePath,
          builder: (context, params) => ServiceRequestEditPageWidget(
            isEditMode: params.getParam(
              'isEditMode',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: AccountDetailsPaymentWidget.routeName,
          path: AccountDetailsPaymentWidget.routePath,
          builder: (context, params) => AccountDetailsPaymentWidget(),
        ),
        FFRoute(
          name: BiometricsPreferenceWidget.routeName,
          path: BiometricsPreferenceWidget.routePath,
          builder: (context, params) => BiometricsPreferenceWidget(
            userId: params.getParam(
              'userId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ServiceRequestPageWidget.routeName,
          path: ServiceRequestPageWidget.routePath,
          builder: (context, params) => ServiceRequestPageWidget(),
        ),
        FFRoute(
          name: BillsPaymentFormSummaryPageWidget.routeName,
          path: BillsPaymentFormSummaryPageWidget.routePath,
          builder: (context, params) => BillsPaymentFormSummaryPageWidget(
            biller: params.getParam(
              'biller',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillerInfoStruct.fromSerializableMap,
            ),
            billsHeader: params.getParam(
              'billsHeader',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsHeaderStruct.fromSerializableMap,
            ),
            billsBody: params.getParam(
              'billsBody',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsBodyStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: AccountIsLockedPageCopyWidget.routeName,
          path: AccountIsLockedPageCopyWidget.routePath,
          builder: (context, params) => AccountIsLockedPageCopyWidget(
            lockedUntil: params.getParam(
              'lockedUntil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: BlankPageCWidget.routeName,
          path: BlankPageCWidget.routePath,
          requireAuth: true,
          builder: (context, params) => BlankPageCWidget(),
        ),
        FFRoute(
          name: EBillingPageWidget.routeName,
          path: EBillingPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EBillingPageWidget(),
        ),
        FFRoute(
          name: InboxPageWidget.routeName,
          path: InboxPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => InboxPageWidget(),
        ),
        FFRoute(
          name: BlankPageDWidget.routeName,
          path: BlankPageDWidget.routePath,
          requireAuth: true,
          builder: (context, params) => BlankPageDWidget(),
        ),
        FFRoute(
          name: BlankPageBWidget.routeName,
          path: BlankPageBWidget.routePath,
          requireAuth: true,
          builder: (context, params) => BlankPageBWidget(),
        ),
        FFRoute(
          name: TermDepositOverviewPageWidget.routeName,
          path: TermDepositOverviewPageWidget.routePath,
          builder: (context, params) => TermDepositOverviewPageWidget(),
        ),
        FFRoute(
          name: TermDepositEditPageWidget.routeName,
          path: TermDepositEditPageWidget.routePath,
          builder: (context, params) => TermDepositEditPageWidget(
            bankName: params.getParam(
              'bankName',
              ParamType.String,
            ),
            accountName: params.getParam(
              'accountName',
              ParamType.String,
            ),
            depositPayload: params.getParam(
              'depositPayload',
              ParamType.DataStruct,
              isList: false,
              structBuilder: DepositAccountModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: TermDepositNewPageWidget.routeName,
          path: TermDepositNewPageWidget.routePath,
          builder: (context, params) => TermDepositNewPageWidget(
            bankName: params.getParam(
              'bankName',
              ParamType.String,
            ),
            accountName: params.getParam(
              'accountName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AccountValidationPageV1Widget.routeName,
          path: AccountValidationPageV1Widget.routePath,
          builder: (context, params) => AccountValidationPageV1Widget(
            module: params.getParam(
              'module',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: VerificationPageWidget.routeName,
          path: VerificationPageWidget.routePath,
          builder: (context, params) => VerificationPageWidget(
            userNumber: params.getParam(
              'userNumber',
              ParamType.String,
            ),
            userBirthDate: params.getParam(
              'userBirthDate',
              ParamType.String,
            ),
            cifDetails: params.getParam(
              'cifDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: CIFDetailsStruct.fromSerializableMap,
            ),
            onSuccessRouteName: params.getParam(
              'onSuccessRouteName',
              ParamType.String,
            ),
            accountNumber: params.getParam(
              'accountNumber',
              ParamType.String,
            ),
            jsonOutput: params.getParam(
              'jsonOutput',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: AccountDetailPageCopyWidget.routeName,
          path: AccountDetailPageCopyWidget.routePath,
          builder: (context, params) => AccountDetailPageCopyWidget(
            account: params.getParam(
              'account',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AccountsV2Struct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: TermDepositOverviewPageCopyWidget.routeName,
          path: TermDepositOverviewPageCopyWidget.routePath,
          builder: (context, params) => TermDepositOverviewPageCopyWidget(),
        ),
        FFRoute(
          name: GenerateQRPageWidget.routeName,
          path: GenerateQRPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => GenerateQRPageWidget(),
        ),
        FFRoute(
          name: BillsPaymentFormReviewPageWidget.routeName,
          path: BillsPaymentFormReviewPageWidget.routePath,
          builder: (context, params) => BillsPaymentFormReviewPageWidget(
            biller: params.getParam(
              'biller',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillerInfoStruct.fromSerializableMap,
            ),
            billsHeader: params.getParam(
              'billsHeader',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsHeaderStruct.fromSerializableMap,
            ),
            billsBody: params.getParam(
              'billsBody',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsBodyStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: RecoveryEntryPageWidget.routeName,
          path: RecoveryEntryPageWidget.routePath,
          builder: (context, params) => RecoveryEntryPageWidget(
            purpose: params.getParam<VerificationType>(
              'purpose',
              ParamType.Enum,
            ),
          ),
        ),
        FFRoute(
          name: ManageDevicePageWidget.routeName,
          path: ManageDevicePageWidget.routePath,
          builder: (context, params) => ManageDevicePageWidget(),
        ),
        FFRoute(
          name: BillsPaymentPageV2Widget.routeName,
          path: BillsPaymentPageV2Widget.routePath,
          builder: (context, params) => BillsPaymentPageV2Widget(),
        ),
        FFRoute(
          name: TransactionHistoryPageWidget.routeName,
          path: TransactionHistoryPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TransactionHistoryPageWidget(),
        ),
        FFRoute(
          name: CheckDepositConfirmPageWidget.routeName,
          path: CheckDepositConfirmPageWidget.routePath,
          builder: (context, params) => CheckDepositConfirmPageWidget(),
        ),
        FFRoute(
          name: TestPageForEMVCoWidget.routeName,
          path: TestPageForEMVCoWidget.routePath,
          builder: (context, params) => TestPageForEMVCoWidget(),
        ),
        FFRoute(
          name: TestDashboardWidget.routeName,
          path: TestDashboardWidget.routePath,
          builder: (context, params) => TestDashboardWidget(),
        ),
        FFRoute(
          name: UploadCheckComponentWidget.routeName,
          path: UploadCheckComponentWidget.routePath,
          builder: (context, params) => UploadCheckComponentWidget(),
        ),
        FFRoute(
          name: RegisterMPINPageWidget.routeName,
          path: RegisterMPINPageWidget.routePath,
          builder: (context, params) => RegisterMPINPageWidget(),
        ),
        FFRoute(
          name: ResetMPINPageWidget.routeName,
          path: ResetMPINPageWidget.routePath,
          builder: (context, params) => ResetMPINPageWidget(
            userID: params.getParam(
              'userID',
              ParamType.String,
            ),
            accessToken: params.getParam(
              'accessToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MPINSetupWidget.routeName,
          path: MPINSetupWidget.routePath,
          builder: (context, params) => MPINSetupWidget(
            userID: params.getParam(
              'userID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: InquireCheckStatusPageWidget.routeName,
          path: InquireCheckStatusPageWidget.routePath,
          builder: (context, params) => InquireCheckStatusPageWidget(),
        ),
        FFRoute(
          name: PayBillsOverviewPageWidget.routeName,
          path: PayBillsOverviewPageWidget.routePath,
          builder: (context, params) => PayBillsOverviewPageWidget(),
        ),
        FFRoute(
          name: PayBillsOverviewPageOldWidget.routeName,
          path: PayBillsOverviewPageOldWidget.routePath,
          builder: (context, params) => PayBillsOverviewPageOldWidget(),
        ),
        FFRoute(
          name: LandingPageV1Widget.routeName,
          path: LandingPageV1Widget.routePath,
          builder: (context, params) => LandingPageV1Widget(),
        ),
        FFRoute(
          name: AccountsPageWidget.routeName,
          path: AccountsPageWidget.routePath,
          builder: (context, params) => AccountsPageWidget(),
        ),
        FFRoute(
          name: AccountSetupPageWidget.routeName,
          path: AccountSetupPageWidget.routePath,
          builder: (context, params) => AccountSetupPageWidget(
            sessionToken: params.getParam(
              'sessionToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PayBillTestPageWidget.routeName,
          path: PayBillTestPageWidget.routePath,
          builder: (context, params) => PayBillTestPageWidget(),
        ),
        FFRoute(
          name: ReusableResetPageWidget.routeName,
          path: ReusableResetPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReusableResetPageWidget(
            sessionToken: params.getParam(
              'sessionToken',
              ParamType.String,
            ),
            purpose: params.getParam<VerificationType>(
              'purpose',
              ParamType.Enum,
            ),
          ),
        ),
        FFRoute(
          name: BillsPaymentTransactionSummaryPageWidget.routeName,
          path: BillsPaymentTransactionSummaryPageWidget.routePath,
          builder: (context, params) =>
              BillsPaymentTransactionSummaryPageWidget(
            billsHeader: params.getParam(
              'billsHeader',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsHeaderStruct.fromSerializableMap,
            ),
            billsBody: params.getParam(
              'billsBody',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsBodyStruct.fromSerializableMap,
            ),
            bpPaybillsResponseDetails: params.getParam(
              'bpPaybillsResponseDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ResponseDetailsStruct.fromSerializableMap,
            ),
            bpFieldsModel: params.getParam(
              'bpFieldsModel',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsPaymentFieldsModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: BillsPaymentPageWidget.routeName,
          path: BillsPaymentPageWidget.routePath,
          builder: (context, params) => BillsPaymentPageWidget(),
        ),
        FFRoute(
          name: BillsPaymentReviewPageWidget.routeName,
          path: BillsPaymentReviewPageWidget.routePath,
          builder: (context, params) => BillsPaymentReviewPageWidget(
            billsHeader: params.getParam(
              'billsHeader',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsHeaderStruct.fromSerializableMap,
            ),
            billsBody: params.getParam(
              'billsBody',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsBodyStruct.fromSerializableMap,
            ),
            bpFieldsModel: params.getParam(
              'bpFieldsModel',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsPaymentFieldsModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: BillsPaymentFormPageWidget.routeName,
          path: BillsPaymentFormPageWidget.routePath,
          builder: (context, params) => BillsPaymentFormPageWidget(
            biller: params.getParam(
              'biller',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillerInfoStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: SuccessDeleteDeviceWidget.routeName,
          path: SuccessDeleteDeviceWidget.routePath,
          builder: (context, params) => SuccessDeleteDeviceWidget(),
        ),
        FFRoute(
          name: TransactionHistoryV2Copy2Widget.routeName,
          path: TransactionHistoryV2Copy2Widget.routePath,
          requireAuth: true,
          builder: (context, params) => TransactionHistoryV2Copy2Widget(),
        ),
        FFRoute(
          name: SucessCancelledScheduledTransferWidget.routeName,
          path: SucessCancelledScheduledTransferWidget.routePath,
          builder: (context, params) =>
              SucessCancelledScheduledTransferWidget(),
        ),
        FFRoute(
          name: NotificationSettingsWidget.routeName,
          path: NotificationSettingsWidget.routePath,
          builder: (context, params) => NotificationSettingsWidget(),
        ),
        FFRoute(
          name: LoansPaymentHistoryWidget.routeName,
          path: LoansPaymentHistoryWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LoansPaymentHistoryWidget(),
        ),
        FFRoute(
          name: PayBillsWithChosenBillerPageWidget.routeName,
          path: PayBillsWithChosenBillerPageWidget.routePath,
          builder: (context, params) => PayBillsWithChosenBillerPageWidget(
            selectedBiller: params.getParam(
              'selectedBiller',
              ParamType.DataStruct,
              isList: false,
              structBuilder: FrequentBillerDataModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: LoansRepaymentScheduleWidget.routeName,
          path: LoansRepaymentScheduleWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LoansRepaymentScheduleWidget(),
        ),
        FFRoute(
          name: LoansRemindersWidget.routeName,
          path: LoansRemindersWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LoansRemindersWidget(),
        ),
        FFRoute(
          name: LoanPaymentHistoryPageWidget.routeName,
          path: LoanPaymentHistoryPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LoanPaymentHistoryPageWidget(),
        ),
        FFRoute(
          name: FundTransferPageCopyWidget.routeName,
          path: FundTransferPageCopyWidget.routePath,
          builder: (context, params) => FundTransferPageCopyWidget(
            bankName: params.getParam(
              'bankName',
              ParamType.String,
            ),
            accountName: params.getParam(
              'accountName',
              ParamType.String,
            ),
            fundTransferType: params.getParam(
              'fundTransferType',
              ParamType.String,
            ),
            accountNumber: params.getParam(
              'accountNumber',
              ParamType.String,
            ),
            qrParsedData: params.getParam(
              'qrParsedData',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ParsedEMVCoDataModelStruct.fromSerializableMap,
            ),
            accountType: params.getParam(
              'accountType',
              ParamType.String,
            ),
            isFromFavorites: params.getParam(
              'isFromFavorites',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: PayBillPageWidget.routeName,
          path: PayBillPageWidget.routePath,
          builder: (context, params) => PayBillPageWidget(
            bankName: params.getParam(
              'bankName',
              ParamType.String,
            ),
            accountName: params.getParam(
              'accountName',
              ParamType.String,
            ),
            fundTransferType: params.getParam(
              'fundTransferType',
              ParamType.String,
            ),
            accountNumber: params.getParam(
              'accountNumber',
              ParamType.String,
            ),
            qrParsedData: params.getParam(
              'qrParsedData',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ParsedEMVCoDataModelStruct.fromSerializableMap,
            ),
            accountType: params.getParam(
              'accountType',
              ParamType.String,
            ),
            isFromFavorites: params.getParam(
              'isFromFavorites',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: TransactionHistoryV2PageWidget.routeName,
          path: TransactionHistoryV2PageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => TransactionHistoryV2PageWidget(),
        ),
        FFRoute(
          name: FundTransferScheduledPaymentPageWidget.routeName,
          path: FundTransferScheduledPaymentPageWidget.routePath,
          builder: (context, params) =>
              FundTransferScheduledPaymentPageWidget(),
        ),
        FFRoute(
          name: RecoveryMpinPageWidget.routeName,
          path: RecoveryMpinPageWidget.routePath,
          builder: (context, params) => RecoveryMpinPageWidget(),
        ),
        FFRoute(
          name: TransferMoneySuccessfulWidget.routeName,
          path: TransferMoneySuccessfulWidget.routePath,
          builder: (context, params) => TransferMoneySuccessfulWidget(
            ownAccountName: params.getParam(
              'ownAccountName',
              ParamType.String,
            ),
            isFromFavorite: params.getParam(
              'isFromFavorite',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: LoanFailedPageWidget.routeName,
          path: LoanFailedPageWidget.routePath,
          builder: (context, params) => LoanFailedPageWidget(
            isLocked: params.getParam(
              'isLocked',
              ParamType.bool,
            ),
            lockedUntil: params.getParam(
              'lockedUntil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: StatementOfAccountPageWidget.routeName,
          path: StatementOfAccountPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => StatementOfAccountPageWidget(
            accountNumber: params.getParam(
              'accountNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MPINVerifyDeviceDeleteWidget.routeName,
          path: MPINVerifyDeviceDeleteWidget.routePath,
          builder: (context, params) => MPINVerifyDeviceDeleteWidget(
            id: params.getParam(
              'id',
              ParamType.String,
            ),
            deviceName: params.getParam(
              'deviceName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SelectBillerPageWidget.routeName,
          path: SelectBillerPageWidget.routePath,
          builder: (context, params) => SelectBillerPageWidget(),
        ),
        FFRoute(
          name: TrustProductSuccessPageWidget.routeName,
          path: TrustProductSuccessPageWidget.routePath,
          builder: (context, params) => TrustProductSuccessPageWidget(),
        ),
        FFRoute(
          name: LoginPageV1Widget.routeName,
          path: LoginPageV1Widget.routePath,
          builder: (context, params) => LoginPageV1Widget(),
        ),
        FFRoute(
          name: LoginPageOldWidget.routeName,
          path: LoginPageOldWidget.routePath,
          builder: (context, params) => LoginPageOldWidget(),
        ),
        FFRoute(
          name: BillsPaymentVerificationPageWidget.routeName,
          path: BillsPaymentVerificationPageWidget.routePath,
          builder: (context, params) => BillsPaymentVerificationPageWidget(
            billsHeader: params.getParam(
              'billsHeader',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsHeaderStruct.fromSerializableMap,
            ),
            billsBody: params.getParam(
              'billsBody',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsBodyStruct.fromSerializableMap,
            ),
            bpFieldsModel: params.getParam(
              'bpFieldsModel',
              ParamType.DataStruct,
              isList: false,
              structBuilder: BillsPaymentFieldsModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: PayLoanSuccessPageWidget.routeName,
          path: PayLoanSuccessPageWidget.routePath,
          builder: (context, params) => PayLoanSuccessPageWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            message: params.getParam(
              'message',
              ParamType.String,
            ),
            channel: params.getParam(
              'channel',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CheckDepositGuideWidget.routeName,
          path: CheckDepositGuideWidget.routePath,
          builder: (context, params) => CheckDepositGuideWidget(),
        ),
        FFRoute(
          name: LogInWithPasswordPageWidget.routeName,
          path: LogInWithPasswordPageWidget.routePath,
          builder: (context, params) => LogInWithPasswordPageWidget(
            username: params.getParam(
              'username',
              ParamType.String,
            ),
            deviceDetails: params.getParam(
              'deviceDetails',
              ParamType.JSON,
            ),
            outputToken: params.getParam(
              'outputToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ContentHubViewArticlePageWidget.routeName,
          path: ContentHubViewArticlePageWidget.routePath,
          builder: (context, params) => ContentHubViewArticlePageWidget(
            articleSlug: params.getParam(
              'articleSlug',
              ParamType.String,
            ),
            categoryName: params.getParam(
              'categoryName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ContentHubArticlePageWidget.routeName,
          path: ContentHubArticlePageWidget.routePath,
          builder: (context, params) => ContentHubArticlePageWidget(
            articleCountt: params.getParam(
              'articleCountt',
              ParamType.int,
            ),
            articleTitle: params.getParam(
              'articleTitle',
              ParamType.String,
            ),
            articleSlug: params.getParam(
              'articleSlug',
              ParamType.String,
            ),
            categoryId: params.getParam(
              'categoryId',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ChequeStopSuccessPageWidget.routeName,
          path: ChequeStopSuccessPageWidget.routePath,
          builder: (context, params) => ChequeStopSuccessPageWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            message: params.getParam(
              'message',
              ParamType.String,
            ),
            channel: params.getParam(
              'channel',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: StopChequeFailedPageWidget.routeName,
          path: StopChequeFailedPageWidget.routePath,
          builder: (context, params) => StopChequeFailedPageWidget(
            isLocked: params.getParam(
              'isLocked',
              ParamType.bool,
            ),
            lockedUntil: params.getParam(
              'lockedUntil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ReportSuccessPageWidget.routeName,
          path: ReportSuccessPageWidget.routePath,
          builder: (context, params) => ReportSuccessPageWidget(),
        ),
        FFRoute(
          name: TrustProductPageWidget.routeName,
          path: TrustProductPageWidget.routePath,
          builder: (context, params) => TrustProductPageWidget(),
        ),
        FFRoute(
          name: TimeDepositSuccessPageWidget.routeName,
          path: TimeDepositSuccessPageWidget.routePath,
          builder: (context, params) => TimeDepositSuccessPageWidget(),
        ),
        FFRoute(
          name: AccountEnrollmentWelcomePageWidget.routeName,
          path: AccountEnrollmentWelcomePageWidget.routePath,
          builder: (context, params) => AccountEnrollmentWelcomePageWidget(),
        ),
        FFRoute(
          name: BillsPaymentTransactionsPageWidget.routeName,
          path: BillsPaymentTransactionsPageWidget.routePath,
          builder: (context, params) => BillsPaymentTransactionsPageWidget(),
        ),
        FFRoute(
          name: PayTransferFailedPageWidget.routeName,
          path: PayTransferFailedPageWidget.routePath,
          builder: (context, params) => PayTransferFailedPageWidget(
            route: params.getParam(
              'route',
              ParamType.String,
            ),
            isLocked: params.getParam(
              'isLocked',
              ParamType.bool,
            ),
            lockedUntil: params.getParam(
              'lockedUntil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: InquireLoanPageWidget.routeName,
          path: InquireLoanPageWidget.routePath,
          builder: (context, params) => InquireLoanPageWidget(),
        ),
        FFRoute(
          name: DebitCardReplacementSuccessPageWidget.routeName,
          path: DebitCardReplacementSuccessPageWidget.routePath,
          builder: (context, params) => DebitCardReplacementSuccessPageWidget(
            debitCardReplacement: params.getParam(
              'debitCardReplacement',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  DebitCardReplacementSuccessModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: SafetyDepositSuccessPageWidget.routeName,
          path: SafetyDepositSuccessPageWidget.routePath,
          builder: (context, params) => SafetyDepositSuccessPageWidget(
            safetyDepositBoxModel: params.getParam(
              'safetyDepositBoxModel',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  SafetyDepositBoxSuccessModelStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: ReportDisputeFailedPageWidget.routeName,
          path: ReportDisputeFailedPageWidget.routePath,
          builder: (context, params) => ReportDisputeFailedPageWidget(
            isLocked: params.getParam(
              'isLocked',
              ParamType.bool,
            ),
            lockedUntil: params.getParam(
              'lockedUntil',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LoanInquireSuccessPageWidget.routeName,
          path: LoanInquireSuccessPageWidget.routePath,
          builder: (context, params) => LoanInquireSuccessPageWidget(),
        ),
        FFRoute(
          name: TrustFundSuccessPageWidget.routeName,
          path: TrustFundSuccessPageWidget.routePath,
          builder: (context, params) => TrustFundSuccessPageWidget(),
        ),
        FFRoute(
          name: ChequeDepositSuccessPageWidget.routeName,
          path: ChequeDepositSuccessPageWidget.routePath,
          builder: (context, params) => ChequeDepositSuccessPageWidget(),
        ),
        FFRoute(
          name: SecuritySettingsPageWidget.routeName,
          path: SecuritySettingsPageWidget.routePath,
          builder: (context, params) => SecuritySettingsPageWidget(),
        ),
        FFRoute(
          name: OpenTimeDepositConfirmationPageWidget.routeName,
          path: OpenTimeDepositConfirmationPageWidget.routePath,
          builder: (context, params) => OpenTimeDepositConfirmationPageWidget(),
        ),
        FFRoute(
          name: SafetyDepositPageWidget.routeName,
          path: SafetyDepositPageWidget.routePath,
          builder: (context, params) => SafetyDepositPageWidget(),
        ),
        FFRoute(
          name: ChequeDepositFormPageWidget.routeName,
          path: ChequeDepositFormPageWidget.routePath,
          builder: (context, params) => ChequeDepositFormPageWidget(),
        ),
        FFRoute(
          name: ChequeDepositConfirmPageWidget.routeName,
          path: ChequeDepositConfirmPageWidget.routePath,
          builder: (context, params) => ChequeDepositConfirmPageWidget(),
        ),
        FFRoute(
          name: ReportProblemsScamOrPhishingWidget.routeName,
          path: ReportProblemsScamOrPhishingWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsScamOrPhishingWidget(),
        ),
        FFRoute(
          name: LoanSchedulePageWidget.routeName,
          path: LoanSchedulePageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => LoanSchedulePageWidget(
            loanAccountNumber: params.getParam(
              'loanAccountNumber',
              ParamType.String,
            ),
            loanType: params.getParam(
              'loanType',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ReportProblemsInternetBankingWidget.routeName,
          path: ReportProblemsInternetBankingWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsInternetBankingWidget(),
        ),
        FFRoute(
          name: ReportProblemsATMRelatedProblemWidget.routeName,
          path: ReportProblemsATMRelatedProblemWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsATMRelatedProblemWidget(),
        ),
        FFRoute(
          name: ReportProblemsFundTransferProblemWidget.routeName,
          path: ReportProblemsFundTransferProblemWidget.routePath,
          requireAuth: true,
          builder: (context, params) =>
              ReportProblemsFundTransferProblemWidget(),
        ),
        FFRoute(
          name: ReportProblemsBillsPaymentProblemWidget.routeName,
          path: ReportProblemsBillsPaymentProblemWidget.routePath,
          requireAuth: true,
          builder: (context, params) =>
              ReportProblemsBillsPaymentProblemWidget(),
        ),
        FFRoute(
          name: ReportProblemsDepositProblemWidget.routeName,
          path: ReportProblemsDepositProblemWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsDepositProblemWidget(),
        ),
        FFRoute(
          name: ReportProblemsLoanConcernWidget.routeName,
          path: ReportProblemsLoanConcernWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsLoanConcernWidget(),
        ),
        FFRoute(
          name: ReportProblemsOtherWidget.routeName,
          path: ReportProblemsOtherWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsOtherWidget(),
        ),
        FFRoute(
          name: ApplyTrustProductPageWidget.routeName,
          path: ApplyTrustProductPageWidget.routePath,
          builder: (context, params) => ApplyTrustProductPageWidget(),
        ),
        FFRoute(
          name: ReportProblemsDisputeWidget.routeName,
          path: ReportProblemsDisputeWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsDisputeWidget(),
        ),
        FFRoute(
          name: LoanInquirePageWidget.routeName,
          path: LoanInquirePageWidget.routePath,
          builder: (context, params) => LoanInquirePageWidget(),
        ),
        FFRoute(
          name: PayBillsSuccessPageWidget.routeName,
          path: PayBillsSuccessPageWidget.routePath,
          builder: (context, params) => PayBillsSuccessPageWidget(
            paymentResponse: params.getParam(
              'paymentResponse',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  WBConfirmBillPaymentResponseStruct.fromSerializableMap,
            ),
            biller: params.getParam(
              'biller',
              ParamType.DataStruct,
              isList: false,
              structBuilder: WBBillerStruct.fromSerializableMap,
            ),
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            message: params.getParam(
              'message',
              ParamType.String,
            ),
            channel: params.getParam(
              'channel',
              ParamType.String,
            ),
            isScheculed: params.getParam(
              'isScheculed',
              ParamType.bool,
            ),
            scheduleDate: params.getParam(
              'scheduleDate',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ScheduledPayBillsPageWidget.routeName,
          path: ScheduledPayBillsPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ScheduledPayBillsPageWidget(),
        ),
        FFRoute(
          name: PayBillsFailedPageWidget.routeName,
          path: PayBillsFailedPageWidget.routePath,
          builder: (context, params) => PayBillsFailedPageWidget(
            paymentResponse: params.getParam(
              'paymentResponse',
              ParamType.DataStruct,
              isList: false,
              structBuilder:
                  WBConfirmBillPaymentResponseStruct.fromSerializableMap,
            ),
            isLocked: params.getParam(
              'isLocked',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: DebitCardReplacementPageWidget.routeName,
          path: DebitCardReplacementPageWidget.routePath,
          builder: (context, params) => DebitCardReplacementPageWidget(),
        ),
        FFRoute(
          name: SplashPageWidget.routeName,
          path: SplashPageWidget.routePath,
          builder: (context, params) => SplashPageWidget(),
        ),
        FFRoute(
          name: GeneratedQRPageWidget.routeName,
          path: GeneratedQRPageWidget.routePath,
          builder: (context, params) => GeneratedQRPageWidget(
            nickname: params.getParam(
              'nickname',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AccountSetupSuccessfulPageWidget.routeName,
          path: AccountSetupSuccessfulPageWidget.routePath,
          builder: (context, params) => AccountSetupSuccessfulPageWidget(),
        ),
        FFRoute(
          name: RecoveryUsernamePageWidget.routeName,
          path: RecoveryUsernamePageWidget.routePath,
          builder: (context, params) => RecoveryUsernamePageWidget(
            purpose: params.getParam<VerificationType>(
              'purpose',
              ParamType.Enum,
            ),
          ),
        ),
        FFRoute(
          name: VerifyMpinPageWidget.routeName,
          path: VerifyMpinPageWidget.routePath,
          builder: (context, params) => VerifyMpinPageWidget(),
        ),
        FFRoute(
          name: AIScanner2PageWidget.routeName,
          path: AIScanner2PageWidget.routePath,
          builder: (context, params) => AIScanner2PageWidget(),
        ),
        FFRoute(
          name: InboxDetailsPageWidget.routeName,
          path: InboxDetailsPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => InboxDetailsPageWidget(
            details: params.getParam(
              'details',
              ParamType.DataStruct,
              isList: false,
              structBuilder: InboxNotificationStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: AlertsAnnouncementPageWidget.routeName,
          path: AlertsAnnouncementPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AlertsAnnouncementPageWidget(),
        ),
        FFRoute(
          name: TermsAndConditionPageWidget.routeName,
          path: TermsAndConditionPageWidget.routePath,
          builder: (context, params) => TermsAndConditionPageWidget(),
        ),
        FFRoute(
          name: AccountValidationSuccessPageWidget.routeName,
          path: AccountValidationSuccessPageWidget.routePath,
          builder: (context, params) => AccountValidationSuccessPageWidget(
            sessionToken: params.getParam(
              'sessionToken',
              ParamType.String,
            ),
            accountNumber: params.getParam(
              'accountNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AccountCredentialsPageWidget.routeName,
          path: AccountCredentialsPageWidget.routePath,
          builder: (context, params) => AccountCredentialsPageWidget(
            sessionToken: params.getParam(
              'sessionToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ChequeInquiryPageWidget.routeName,
          path: ChequeInquiryPageWidget.routePath,
          builder: (context, params) => ChequeInquiryPageWidget(),
        ),
        FFRoute(
          name: ForgotPasswordPageWidget.routeName,
          path: ForgotPasswordPageWidget.routePath,
          builder: (context, params) => ForgotPasswordPageWidget(),
        ),
        FFRoute(
          name: ChequeDepositPageWidget.routeName,
          path: ChequeDepositPageWidget.routePath,
          builder: (context, params) => ChequeDepositPageWidget(),
        ),
        FFRoute(
          name: ReportProblemsPageWidget.routeName,
          path: ReportProblemsPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReportProblemsPageWidget(),
        ),
        FFRoute(
          name: ManageLoansPageWidget.routeName,
          path: ManageLoansPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ManageLoansPageWidget(),
        ),
        FFRoute(
          name: ActivityHistoryWidget.routeName,
          path: ActivityHistoryWidget.routePath,
          builder: (context, params) => ActivityHistoryWidget(),
        ),
        FFRoute(
          name: PaymentHistoryWidget.routeName,
          path: PaymentHistoryWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PaymentHistoryWidget(),
        ),
        FFRoute(
          name: TransactionHistoryV2Widget.routeName,
          path: TransactionHistoryV2Widget.routePath,
          requireAuth: true,
          builder: (context, params) => TransactionHistoryV2Widget(),
        ),
        FFRoute(
          name: ServiceRequestTrackerPageWidget.routeName,
          path: ServiceRequestTrackerPageWidget.routePath,
          builder: (context, params) => ServiceRequestTrackerPageWidget(),
        ),
        FFRoute(
          name: PayLoanAmountPageWidget.routeName,
          path: PayLoanAmountPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PayLoanAmountPageWidget(
            submitParams: params.getParam(
              'submitParams',
              ParamType.DataStruct,
              isList: false,
              structBuilder: WBBPSubmitParametersStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: WebViewPageWidget.routeName,
          path: WebViewPageWidget.routePath,
          builder: (context, params) => WebViewPageWidget(
            url: params.getParam(
              'url',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: QRPaymentHistoryPageWidget.routeName,
          path: QRPaymentHistoryPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => QRPaymentHistoryPageWidget(),
        ),
        FFRoute(
          name: QRScannerPageWidget.routeName,
          path: QRScannerPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => QRScannerPageWidget(
            account: params.getParam(
              'account',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AccountsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: ViewTransactionPageWidget.routeName,
          path: ViewTransactionPageWidget.routePath,
          builder: (context, params) => ViewTransactionPageWidget(
            status: params.getParam(
              'status',
              ParamType.String,
            ),
            amount: params.getParam(
              'amount',
              ParamType.double,
            ),
            referenceNumber: params.getParam(
              'referenceNumber',
              ParamType.String,
            ),
            dateCreated: params.getParam(
              'dateCreated',
              ParamType.String,
            ),
            recipientName: params.getParam(
              'recipientName',
              ParamType.String,
            ),
            currency: params.getParam(
              'currency',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: SavedDevicesWidget.routeName,
          path: SavedDevicesWidget.routePath,
          builder: (context, params) => SavedDevicesWidget(),
        ),
        FFRoute(
          name: CreateNewPasswordPageWidget.routeName,
          path: CreateNewPasswordPageWidget.routePath,
          builder: (context, params) => CreateNewPasswordPageWidget(
            purpose: params.getParam<VerificationType>(
              'purpose',
              ParamType.Enum,
            ),
            resetToken: params.getParam(
              'resetToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ChequeInquiryResultPageWidget.routeName,
          path: ChequeInquiryResultPageWidget.routePath,
          builder: (context, params) => ChequeInquiryResultPageWidget(),
        ),
        FFRoute(
          name: CreateMpinPageWidget.routeName,
          path: CreateMpinPageWidget.routePath,
          builder: (context, params) => CreateMpinPageWidget(
            isUpdating: params.getParam(
              'isUpdating',
              ParamType.bool,
            ),
            resetToken: params.getParam(
              'resetToken',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PersonalInformationPageWidget.routeName,
          path: PersonalInformationPageWidget.routePath,
          builder: (context, params) => PersonalInformationPageWidget(),
        ),
        FFRoute(
          name: ContentHubPageWidget.routeName,
          path: ContentHubPageWidget.routePath,
          builder: (context, params) => ContentHubPageWidget(),
        ),
        FFRoute(
          name: SecurityAndCredentialsPageWidget.routeName,
          path: SecurityAndCredentialsPageWidget.routePath,
          builder: (context, params) => SecurityAndCredentialsPageWidget(),
        ),
        FFRoute(
          name: ContactUsPageWidget.routeName,
          path: ContactUsPageWidget.routePath,
          builder: (context, params) => ContactUsPageWidget(),
        ),
        FFRoute(
          name: TransactionLimitsPageWidget.routeName,
          path: TransactionLimitsPageWidget.routePath,
          builder: (context, params) => TransactionLimitsPageWidget(),
        ),
        FFRoute(
          name: ReceiveGenerateQRPageWidget.routeName,
          path: ReceiveGenerateQRPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ReceiveGenerateQRPageWidget(
            account: params.getParam(
              'account',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AccountsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: ChangeMPinPageWidget.routeName,
          path: ChangeMPinPageWidget.routePath,
          builder: (context, params) => ChangeMPinPageWidget(
            isUpdating: params.getParam(
              'isUpdating',
              ParamType.bool,
            ),
            mpin: params.getParam(
              'mpin',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: MPINPageWidget.routeName,
          path: MPINPageWidget.routePath,
          builder: (context, params) => MPINPageWidget(
            mpinHash: params.getParam(
              'mpinHash',
              ParamType.String,
            ),
            trustedDevice: params.getParam(
              'trustedDevice',
              ParamType.DataStruct,
              isList: false,
              structBuilder: DeviceDataStruct.fromSerializableMap,
            ),
            loggedInDevice: params.getParam(
              'loggedInDevice',
              ParamType.DataStruct,
              isList: false,
              structBuilder: DeviceDataStruct.fromSerializableMap,
            ),
            trustedDeviceID: params.getParam(
              'trustedDeviceID',
              ParamType.String,
            ),
            loggedInDeviceID: params.getParam(
              'loggedInDeviceID',
              ParamType.String,
            ),
            forAuth: params.getParam(
              'forAuth',
              ParamType.bool,
            ),
            transferType: params.getParam(
              'transferType',
              ParamType.String,
            ),
            usage: params.getParam<MpinUsage>(
              'usage',
              ParamType.Enum,
            ),
            challenge: params.getParam(
              'challenge',
              ParamType.String,
            ),
            bpId: params.getParam(
              'bpId',
              ParamType.String,
            ),
            updateLimits: params.getParam<dynamic>(
              'updateLimits',
              ParamType.JSON,
              isList: true,
            ),
            biller: params.getParam(
              'biller',
              ParamType.DataStruct,
              isList: false,
              structBuilder: WBBillerStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: FundTransferAmountPageWidget.routeName,
          path: FundTransferAmountPageWidget.routePath,
          builder: (context, params) => FundTransferAmountPageWidget(
            isFromFavorite: params.getParam(
              'isFromFavorite',
              ParamType.bool,
            ),
            isQrPayment: params.getParam(
              'isQrPayment',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: ManageLoansPageCopyWidget.routeName,
          path: ManageLoansPageCopyWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ManageLoansPageCopyWidget(),
        ),
        FFRoute(
          name: UserProfilePageWidget.routeName,
          path: UserProfilePageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => UserProfilePageWidget(),
        ),
        FFRoute(
          name: AccountValidationPageWidget.routeName,
          path: AccountValidationPageWidget.routePath,
          builder: (context, params) => AccountValidationPageWidget(
            module: params.getParam(
              'module',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: FundTransferOptionsPageWidget.routeName,
          path: FundTransferOptionsPageWidget.routePath,
          builder: (context, params) => FundTransferOptionsPageWidget(
            isAccountSelected: params.getParam(
              'isAccountSelected',
              ParamType.bool,
            ),
            account: params.getParam(
              'account',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AccountsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: PayBillsAmountPageWidget.routeName,
          path: PayBillsAmountPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PayBillsAmountPageWidget(
            submitParams: params.getParam(
              'submitParams',
              ParamType.DataStruct,
              isList: false,
              structBuilder: WBBPSubmitParametersStruct.fromSerializableMap,
            ),
            billerDetails: params.getParam(
              'billerDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: WBBillerStruct.fromSerializableMap,
            ),
            isFromFavorite: params.getParam(
              'isFromFavorite',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: PasskeyCredentialsPageWidget.routeName,
          path: PasskeyCredentialsPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PasskeyCredentialsPageWidget(),
        ),
        FFRoute(
          name: ManageAccountPageWidget.routeName,
          path: ManageAccountPageWidget.routePath,
          builder: (context, params) => ManageAccountPageWidget(),
        ),
        FFRoute(
          name: TimeDepositDetailsPageWidget.routeName,
          path: TimeDepositDetailsPageWidget.routePath,
          builder: (context, params) => TimeDepositDetailsPageWidget(
            depositDetails: params.getParam(
              'depositDetails',
              ParamType.DataStruct,
              isList: false,
              structBuilder: TimeDepositsStruct.fromSerializableMap,
            ),
            remainingDays: params.getParam(
              'remainingDays',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: OpenTimeDepositProductSelectionPageWidget.routeName,
          path: OpenTimeDepositProductSelectionPageWidget.routePath,
          builder: (context, params) =>
              OpenTimeDepositProductSelectionPageWidget(),
        ),
        FFRoute(
          name: ManageTermDepositPageWidget.routeName,
          path: ManageTermDepositPageWidget.routePath,
          builder: (context, params) => ManageTermDepositPageWidget(),
        ),
        FFRoute(
          name: LoanDetailsPageWidget.routeName,
          path: LoanDetailsPageWidget.routePath,
          builder: (context, params) => LoanDetailsPageWidget(
            loanAccountNumber: params.getParam(
              'loanAccountNumber',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LandingPageWidget.routeName,
          path: LandingPageWidget.routePath,
          builder: (context, params) => LandingPageWidget(),
        ),
        FFRoute(
          name: AccountDetailPageWidget.routeName,
          path: AccountDetailPageWidget.routePath,
          builder: (context, params) => AccountDetailPageWidget(
            account: params.getParam(
              'account',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AccountsStruct.fromSerializableMap,
            ),
            rootPage: params.getParam(
              'rootPage',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PayBillsPageWidget.routeName,
          path: PayBillsPageWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PayBillsPageWidget(
            sourceAccount: params.getParam(
              'sourceAccount',
              ParamType.DataStruct,
              isList: false,
              structBuilder: AccountsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: DashboardWidget.routeName,
          path: DashboardWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DashboardWidget(
            username: params.getParam(
              'username',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RecoveryPasswordPageWidget.routeName,
          path: RecoveryPasswordPageWidget.routePath,
          builder: (context, params) => RecoveryPasswordPageWidget(
            purpose: params.getParam<VerificationType>(
              'purpose',
              ParamType.Enum,
            ),
          ),
        ),
        FFRoute(
          name: LoginPageWidget.routeName,
          path: LoginPageWidget.routePath,
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: FundTransferPageWidget.routeName,
          path: FundTransferPageWidget.routePath,
          builder: (context, params) => FundTransferPageWidget(
            bankName: params.getParam(
              'bankName',
              ParamType.String,
            ),
            accountName: params.getParam(
              'accountName',
              ParamType.String,
            ),
            accountNumber: params.getParam(
              'accountNumber',
              ParamType.String,
            ),
            qrParsedData: params.getParam(
              'qrParsedData',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ParsedEMVCoDataModelStruct.fromSerializableMap,
            ),
            accountType: params.getParam(
              'accountType',
              ParamType.String,
            ),
            isFromFavorites: params.getParam(
              'isFromFavorites',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: InvestmentSummaryPageWidget.routeName,
          path: InvestmentSummaryPageWidget.routePath,
          builder: (context, params) => InvestmentSummaryPageWidget(),
        ),
        FFRoute(
          name: OpenTimeDepositDetailsPageWidget.routeName,
          path: OpenTimeDepositDetailsPageWidget.routePath,
          builder: (context, params) => OpenTimeDepositDetailsPageWidget(
            product: params.getParam(
              'product',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ProductsStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: AccountVerificationPageWidget.routeName,
          path: AccountVerificationPageWidget.routePath,
          builder: (context, params) => AccountVerificationPageWidget(
            sessionToken: params.getParam(
              'sessionToken',
              ParamType.String,
            ),
            purpose: params.getParam<VerificationType>(
              'purpose',
              ParamType.Enum,
            ),
            deviceId: params.getParam(
              'deviceId',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/landingPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? isWeb
                  ? Container()
                  : Container(
                      color: Color(0x00FFFFFF),
                      child: Center(
                        child: Image.asset(
                          'assets/images/Splash_Screen-_Reference_as_Pattern_(2).png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  name: state.name,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(
                  key: state.pageKey, name: state.name, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
