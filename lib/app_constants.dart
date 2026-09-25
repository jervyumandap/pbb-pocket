import 'package:flutter/material.dart';

abstract class FFAppConstants {
  static const String BuildVersionNumber = '0.0.12';
  static const double maxDrawerWidth = 196.0;
  static const double minDrawerWidth = 80.0;
  static const Color ContextualColor1 = Color(4278796936);
  static const Color ContextualColor2 = Color(4278759341);
  static const Color ContextualColor3 = Color(4278345396);
  static const Color ContextualColor4 = Color(4280163870);
  static const Color ContextualColor5 = Color(4281150781);
  static const double MobileAppBarHeight = 95.0;
  static const double WebAppBarHeight = 72.0;
  static const Color AppBarSecondaryBackgroundColor = Color(4278293159);
  static const Color AppBarButtonSecondaryColor = Color(4283999927);
  static const double MobileNavBarHeight = 110.0;
  static const int CodeLength = 6;
  static const String dataPrivacyPolicyUrl = 'https://pbb.com.ph/data-privacy';

  /// Biometric signature created key
  static const String BioSigPublicKey = 'BS_PUBLIC_KEY';

  /// Biometric signature
  static const String BiometricSignatureKey = 'BS_SIGNATURE_KEY';
  static const String BiometricChallengeKey = 'BS_CHALLENGE_KEY';
  static const String WBUsernameKey = 'wb_username';
  static const double ContentMaxWidth = 900.0;
  static const double RightDrawerWidth = 450.0;

  /// for SessionTimeoutManager seconds
  static const int SessionLogoutTImer = 180;

  /// logout Session WarningTimer seconds
  static const int SessionWarningTimer = 60;

  /// Milliseconds
  static const int OTPTimer = 60000;
}
