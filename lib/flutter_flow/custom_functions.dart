import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/custom_auth/auth_util.dart';

FFUploadedFile? base64toFile(String base64Img) {
  return FFUploadedFile(bytes: base64Decode(base64Img));
}

String maskPhoneNumber(String phone) {
  if (phone.length < 10) return phone;
  // Example: +639171234567 → +63 917 *** **67
  final prefix = phone.substring(0, 6); // +63 91
  final lastTwo = phone.substring(phone.length - 2);
  return "$prefix*** **$lastTwo";
}

String generateRandomVarchar(int length) {
  const chars =
      'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
  final rand = math.Random.secure();
  return List.generate(length, (_) => chars[rand.nextInt(chars.length)]).join();
}

String? formatWithCommas(double value) {
  final formatter = NumberFormat('#,##0.##');
  return formatter.format(value);
}

double removeCommasAndToDouble(String value) {
  // Remove commas
  String cleaned = value.replaceAll(',', '');

  // Convert to double
  return double.tryParse(cleaned) ?? 0.0;
}

String maskLastThreeLetters(String username) {
  if (username.length <= 3) {
    // If the username is 3 letters or less, mask all of it
    return '*' * username.length;
  }

  // Keep the start of the username, replace last 3 letters with '*'
  String visiblePart = username.substring(0, username.length - 3);
  return '$visiblePart***';
}

dynamic getSMSBody(
  String type,
  String countryCode,
  String? pin,
  String phone,
  String? validity,
  String message,
) {
  try {
    final cleanPhone = phone.replaceAll(RegExp(r'[^0-9]'), '');

    if (cleanPhone.length != 10) return {"error": "INVALID_PHONE_LENGTH"};
    if (countryCode != "+63") return {"error": "UNSUPPORTED_COUNTRY"};

    switch (type.toUpperCase()) {
      case 'NOTIFICATION':
        return {
          "NotificationDetails": {
            "CountryCode": countryCode,
            "MobileNumber": int.parse(cleanPhone),
            "Message": message,
          }
        };

      case 'OTP':
        if (pin == null || validity == null) return {"error": "MISSING_FIELDS"};

        return {
          "OTPDetails": {
            "CountryCode": countryCode,
            "MobileNumber": int.parse(cleanPhone),
            "Message":
                "Your OTP is {PIN} valid for {validity} minute/s. DO NOT SHARE YOUR OTP WITH ANYONE.",
            "validity": validity,
            "PIN": pin,
          }
        };

      case 'VERIFYOTP':
        if (pin == null) return {"error": "MISSING_PIN"};
        return {
          "ValidityDetails": {
            "PIN": pin,
          }
        };

      default:
        return {"error": "UNKNOWN_CHECKPOINT"};
    }
  } catch (e) {
    return {"error": "PAYLOAD_PROCESSING_ERROR"};
  }
}

String normalizePhone(String phone) {
  // Remove non-digits first
  String cleaned = phone.replaceAll(RegExp(r'[^0-9]'), '');

  // Remove leading 0 if exists
  if (cleaned.startsWith('0')) {
    cleaned = cleaned.substring(1);
  }

  return cleaned;
}

/// Will return a random value of AccountsCardStylePreference.
AccountsCardStylePreference randomAccountsCardStylePreference() {
  final random = math.Random();
  return AccountsCardStylePreference.values[random.nextInt(4)];
}

String getPHT24HourLockout() {
  DateTime lockoutDateTime = DateTime.now().toUtc().add(Duration(hours: 32));

  // This produces a string like: 2026-01-31T05:05:09.386+08:00
  String isoString = lockoutDateTime.toIso8601String();

  // Replace the 'Z' (if present) with the explicit PH offset for Supabase safety
  return isoString.replaceFirst('Z', '+08:00');
}

int getRemainingMS(String lockoutTime) {
  try {
    // 1. Parse the lockout time from Supabase.
    // DateTime.parse handles the offset (+08:00 or Z) automatically.
    DateTime targetTime = DateTime.parse(lockoutTime).toUtc();

    // 2. Get the current time in UTC.
    // Using .toUtc() ensures we aren't affected by local phone settings.
    DateTime currentTime = DateTime.now().toUtc();

    // 3. Calculate the difference.
    int difference =
        targetTime.millisecondsSinceEpoch - currentTime.millisecondsSinceEpoch;

    // 4. Return 0 if the lockout has already passed (negative difference).
    return difference > 0 ? difference : 0;
  } catch (e) {
    // If parsing fails, default to no lockout (0 ms).
    return 0;
  }
}

String createOTP() {
  final random = math.Random();

  // Generate a random 5-digit number between 10000 and 99999.
  // Adding 10000 ensures the result is always 5 digits.
  // random.nextInt(90000) gives a number from 0 to 89999.

  int randomNumber = (10000 + random.nextInt(90000));

  return "$randomNumber";
}

DateTime addDaysToTime(
  DateTime time,
  int numDays,
) {
  return time.add(new Duration(days: numDays));
}

ParsedEMVCoDataModelStruct parseEmv(String emv) {
  bool _isTemplateTag(String tag) {
    final intTag = int.tryParse(tag);
    if (intTag == null) return false;

    return (intTag >= 26 && intTag <= 51) || intTag == 62 || intTag == 64;
  }

  Map<String, dynamic> _parseTlv(String data) {
    int index = 0;
    final Map<String, dynamic> map = {};

    while (index < data.length) {
      if (index + 4 > data.length) break;

      final tag = data.substring(index, index + 2);
      final lengthStr = data.substring(index + 2, index + 4);
      final length = int.tryParse(lengthStr);

      if (length == null) break;

      final valueStart = index + 4;
      final valueEnd = valueStart + length;

      if (valueEnd > data.length) break;

      final value = data.substring(valueStart, valueEnd);

      if (_isTemplateTag(tag)) {
        map[tag] = _parseTlv(value);
      } else {
        map[tag] = value;
      }

      index = valueEnd;
    }

    return map;
  }

  final result = _parseTlv(emv);
  final mai27 = result["27"] as Map<String, dynamic>?;

  var parsed = ParsedEMVCoDataModelStruct(
    payloadFormatIndicator: result["00"],
    pointInitiationMethod: result["01"],
    merchantAccountInformation27: MerchantAccountInformation27Struct(
      globalUniqueIdentifier: mai27?["00"],
      merchantPan: mai27?["01"],
      merchantId: mai27?["02"],
      merchantCriteria: mai27?["03"],
      merchantPrincipalMastercard: mai27?["04"],
    ),
    merchantCatergoryCode: result["52"],
    transactionCurrencyCode: result["53"],
    transactionAmount: double.tryParse(result["54"] ?? ""),
    countryCode: result["58"],
    merchantName: result["59"],
    merchantCity: result["60"],
    merchantPostalCode: result["61"],
    crc: result["63"],
  );

  print("ParsedEMVCoDataModelStruct: $parsed");
  print("mai27: $mai27");

  return parsed;
}

String maskAccountNumber(String accountNumber) {
  // Mask everything but the last 4 digits
  String maskedNumber = accountNumber.substring(0, accountNumber.length - 4);
  String last4Digits =
      accountNumber.substring(accountNumber.length - 4, accountNumber.length);
  maskedNumber = maskedNumber.replaceAll(RegExp(r'[0-9]'), '*');

  return maskedNumber + last4Digits;
}

/// Find the maturity value for deposit accounts.
double getMaturityValue(
  double amount,
  double rate,
  int time,
  int timesCompounded,
) {
  // For compounds not at maturity, check number of times compounded.
  // Parameter time is marked in days, so time is converted to years.
  double maturityValue = 0.00;
  if (timesCompounded > 0) {
    maturityValue = amount *
        math
            .pow(1 + rate / timesCompounded, (time / 365) * timesCompounded)
            .toDouble();
  } else {
    // When compounded at maturity, this is done once.
    maturityValue = amount * math.pow(1 + rate, time / 365).toDouble();
  }
  return maturityValue;
}

DateTime convertStringToDateTime(String dateStr) {
  List<String> splitDateStr = dateStr.split('\/');

  int year, month, day, hour, minute, second;
  month = int.parse(splitDateStr[0]);
  day = int.parse(splitDateStr[1]);

  String yearAndTime = splitDateStr[2];
  String time = yearAndTime.split(' ')[1];

  year = int.parse(yearAndTime.split(' ')[0]);

  hour = int.parse(time.split('\:')[0]);
  minute = int.parse(time.split('\:')[1]);
  second = int.parse(time.split('\:')[2]);

  return new DateTime(year, month, day, hour, minute, second);
}

String? updateNumpadValue(
  String? currentValue,
  String? pressedKey,
) {
  String value = currentValue ?? "0";
  String key = pressedKey ?? "";

  // DELETE
  if (key == "<") {
    if (value.length > 1) {
      return value.substring(0, value.length - 1);
    } else {
      return "0";
    }
  }

  // DECIMAL POINT
  if (key == ".") {
    if (value.contains(".")) {
      return value;
    }
    return value + ".";
  }

  // LIMIT TO 2 DECIMAL PLACES
  if (value.contains(".")) {
    int decimalIndex = value.indexOf(".");
    int decimals = value.length - decimalIndex - 1;

    if (decimals >= 2) {
      return value;
    }
  }

  // PREVENT MULTIPLE LEADING ZERO
  if (value == "0") {
    return key;
  }

  return value + key;
}

double? currencyToNumber(String? currNumVal) {
  // Ensure currNumVal is not null
  String currVal = currNumVal ?? '';

  // Remove non-digit characters
  String digitsOnly = currVal.replaceAll(RegExp(r'[^0-9]'), '');

  // Parse as integer (cents)
  int value = int.tryParse(digitsOnly) ?? 0;

  // Convert to double
  return value / 100.0;
}

String? formatTransactionDate(String? dateTime) {
  if (dateTime == null) return null;
  return DateFormat('yyyy-MM-dd h:mm a')
      .format(DateTime.parse(dateTime).toLocal());
}

double stringToDouble(String value) {
  if (value.isEmpty) return 0.0;

  // Remove currency symbols and commas
  String cleaned = value.replaceAll('₱', '').replaceAll(',', '').trim();

  return double.tryParse(cleaned) ?? 0.0;
}

int sortPriority(
  String accountNumber,
  String selectedAccountNumber,
) {
  return accountNumber == selectedAccountNumber ? 0 : 1;
}

DateTime createTokenExpirationDateTime(int expiresIn) {
  // add the expiresIn to the current time and return it as DateTime
  DateTime expiration = DateTime.now().add(Duration(seconds: expiresIn));
  print("DateTime token expiration: $expiration");
  return expiration;
}

bool shouldRefreshToken(DateTime? expiration) {
  if (expiration == null) return false;

  final buffer = const Duration(seconds: 60);
  return DateTime.now().isBefore(expiration.subtract(buffer));
}

List<String> extractAccountNumbers(List<AccountsStruct> accounts) {
  return accounts
      .map((e) => e.fullAccountNumber)
      .where((e) => e != null && e.isNotEmpty)
      .cast<String>()
      .toList();
}

double textToDouble(String input) {
  // 1. Pag empty ang input, ibalik ang 0.0
  if (input.isEmpty) {
    return 0.0;
  }

  // 2. Alisin ang lahat ng characters maliban sa digits at dot (.)
  // Hahawakan nito yung "₱" at ","
  String cleanStr = input.replaceAll(RegExp(r'[^0-9.]'), '');

  // 3. I-parse sa double, pag nag-fail (e.g. ".." ang tinype), return 0.0
  try {
    return double.parse(cleanStr);
  } catch (e) {
    return 0.0;
  }
}

DateTime? stringToDateTimeWithFormat(String? dateString) {
  if (dateString == null || dateString.isEmpty) return null;

  try {
    return DateTime.parse(dateString).toLocal();
  } catch (e) {
    return null;
  }
}

FilterDateRangeModelStruct? getDateRangeByDays(int days) {
  final now = DateTime.now();

  // return {
  //   "fromDate": now.subtract(const Duration(days: 7)),
  //   "toDate": now,
  // };
  //
  final data = FilterDateRangeModelStruct(
      fromDate: now.subtract(Duration(days: days)), toDate: now);

  debugPrint("FilterDateRangeModelStruct: $data");

  return data;
}

String formatAmountDisplay(String value) {
  if (value.isEmpty) return '';

  value = value.replaceAll(RegExp(r'[^0-9.]'), '');

  final parts = value.split('.');

  String whole = parts[0];

  whole = whole.replaceAllMapped(
    RegExp(r'\B(?=(\d{3})+(?!\d))'),
    (match) => ',',
  );

  if (parts.length == 1) return whole;

  if (value.endsWith('.')) return '$whole.';

  return '$whole.${parts.sublist(1).join()}';
}

dynamic newCustomFunction(List list) {
  final jsonList = list.map((e) => e.toMap()).toList();
  return jsonEncode(jsonList);
}

String extractReceiver(String input) {
  if (input.isEmpty) return '';

  final parts = input.split(RegExp(r'\s+to\s+'));
  String result = parts.length > 1 ? parts.last.trim() : input.trim();

  final words =
      result.split(RegExp(r'\s+')).where((word) => word.isNotEmpty).toList();

  // No words
  if (words.isEmpty) return '';

  // One word → first 2 letters
  if (words.length == 1) {
    final word = words.first;

    return word.length >= 2
        ? word.substring(0, 2).toUpperCase()
        : word.toUpperCase();
  }

  // Two or more words → first letter of first & last word
  return '${words.first[0]}${words.last[0]}'.toUpperCase();
}

List<dynamic> mapLimitsToList(dynamic json) {
  if (json == null) return [];

  return [
    {
      "type": "dailyTransferLimit",
      "current": json["dailyTransferLimit"]?["current"],
      "default": json["dailyTransferLimit"]?["default"],
      "maximum": json["dailyTransferLimit"]?["maximum"],
    },
    {
      "type": "perTransactionLimit",
      "current": json["perTransactionLimit"]?["current"],
      "default": json["perTransactionLimit"]?["default"],
      "maximum": json["perTransactionLimit"]?["maximum"],
    },
    {
      "type": "dailyBillsPaymentLimit",
      "current": json["dailyBillsPaymentLimit"]?["current"],
      "default": json["dailyBillsPaymentLimit"]?["default"],
      "maximum": json["dailyBillsPaymentLimit"]?["maximum"],
    },
  ];
}

String? formatChatDate(String? isoDate) {
  try {
    if (isoDate == null || isoDate.isEmpty) {
      return '';
    }

    final dateTime = DateTime.parse(isoDate).toLocal();
    final now = DateTime.now();

    final difference = now.difference(dateTime);

    final timeFormat = DateFormat('hh:mm a');

    // TODAY
    final isToday = dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;

    // YESTERDAY
    final yesterday = now.subtract(const Duration(days: 1));

    final isYesterday = dateTime.year == yesterday.year &&
        dateTime.month == yesterday.month &&
        dateTime.day == yesterday.day;

    if (isToday) {
      return 'Today, ${timeFormat.format(dateTime)}';
    }

    if (isYesterday) {
      return 'Yesterday, ${timeFormat.format(dateTime)}';
    }

    // DAYS AGO
    if (difference.inDays < 7) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    }

    // WEEKS AGO
    if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();

      return '$weeks week${weeks > 1 ? 's' : ''} ago';
    }

    // MONTHS AGO
    if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();

      return '$months month${months > 1 ? 's' : ''} ago';
    }

    // YEARS AGO
    final years = (difference.inDays / 365).floor();

    return '$years year${years > 1 ? 's' : ''} ago';
  } catch (e) {
    return '';
  }
}

String? getDateandTimeForDevices(String? inputDateString) {
  if (inputDateString == null || inputDateString.isEmpty) {
    return "Last active: unknown";
  }

  try {
    final inputDateTime = DateTime.parse(inputDateString).toLocal();
    final now = DateTime.now();
    final difference = now.difference(inputDateTime);

    if (difference.inSeconds < 60) {
      return "Last active: just now";
    } else if (difference.inMinutes < 60) {
      final m = difference.inMinutes;
      return "Last active: $m minute${m > 1 ? 's' : ''} ago";
    } else if (difference.inHours < 24) {
      final h = difference.inHours;
      return "Last active: $h hour${h > 1 ? 's' : ''} ago";
    } else if (difference.inDays < 7) {
      final d = difference.inDays;
      return "Last active: $d day${d > 1 ? 's' : ''} ago";
    } else if (difference.inDays < 30) {
      final weeks = (difference.inDays / 7).floor();
      return "Last active: $weeks week${weeks > 1 ? 's' : ''} ago";
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return "Last active: $months month${months > 1 ? 's' : ''} ago";
    } else {
      final years = (difference.inDays / 365).floor();
      return "Last active: $years year${years > 1 ? 's' : ''} ago";
    }
  } catch (e) {
    return "Last active: invalid date";
  }
}

int decrementValue(int sortOrder) {
  // 1. Safety check for invalid data
  if (sortOrder <= 0) {
    return 0;
  }

  // 2. Handle the "Default Lane" (1000, 1001, 1002...)
  // 1000 becomes 0, 1001 becomes 1, etc.
  if (sortOrder >= 1000) {
    return sortOrder - 1000;
  }

  // 3. Handle the "Priority Lane" (1, 2, 3, 4...)
  // 1 becomes 0, 2 becomes 1, etc.
  // This occurs after an alias update or manual sort.
  return sortOrder - 1;
}

String beautifyErrorMessage(String value) {
  return value
      .toLowerCase()
      .split('_')
      .map((word) =>
          word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : '')
      .join(' ');
}

dynamic getDynamicLimitUpdates(
  List<dynamic>? originalList,
  List<dynamic>? currentList,
) {
  if (originalList == null || currentList == null) {
    return [];
  }

  List<dynamic> updates = [];

  Map<String, dynamic> originalMap = {};
  for (var item in originalList) {
    if (item != null && item['typeKey'] != null) {
      originalMap[item['typeKey']] = item;
    }
  }

  for (var currentItem in currentList) {
    if (currentItem == null) continue;
    if (currentItem['isCustomizable'] != true) continue;

    var tKey = currentItem['typeKey'];
    if (tKey == null) continue;

    var originalItem = originalMap[tKey];
    if (originalItem == null) continue;

    var newEffective = currentItem['effective'] ?? {};
    var oldEffective = originalItem['effective'] ?? {};

    var newMax = newEffective['maxAmount'];
    var newDaily = newEffective['dailyLimit'];

    var oldMax = oldEffective['maxAmount'];
    var oldDaily = oldEffective['dailyLimit'];

    if (newMax != oldMax || newDaily != oldDaily) {
      updates.add({
        "typeKey": tKey,
        "maxAmount": newMax ?? 0,
        "dailyLimit": newDaily ?? 0,
      });
    }
  }

  return updates;
}

DateTime getFutureDateByDays(int days) {
  final now = DateTime.now();

  return now.add(Duration(days: days));
}

DateTime getDateAfter(String baseDate) {
  final parsedDate = DateTime.parse(baseDate);

  return parsedDate.add(Duration(days: 1));
}

double? intToDouble(dynamic value) {
  if (value == null) return null;

  if (value is double) {
    return value;
  }

  if (value is int) {
    return value.toDouble();
  }

  return double.tryParse(value.toString());
}

String extractInitials(String data) {
  if (data.trim().isEmpty) return '';

  final normalized = data.trim().replaceAll(RegExp(r'\s+'), ' ');

  // Extract after "to" if present
  final match = RegExp(r'\bto\b', caseSensitive: false).firstMatch(normalized);
  final result =
      match != null ? normalized.substring(match.end).trim() : normalized;

  // Split words properly
  final words = result.split(' ').where((w) => w.isNotEmpty).toList();

  if (words.isEmpty) return '';

  // ✅ One word
  if (words.length == 1) {
    final word = words.first;
    return word.length >= 2
        ? word.substring(0, 2).toUpperCase()
        : word.toUpperCase();
  }

  // ✅ Two or more words
  return '${words.first[0]}${words.last[0]}'.toUpperCase();
}

DateTime addDaysFromDate(
  DateTime date,
  int numberOfDays,
) {
  return date.add(Duration(days: numberOfDays));
}

int? multiplyAnimation(
  int? indexNumber,
  int? multiplyOf,
  int? addFrom,
) {
  if (indexNumber == null || multiplyOf == null || addFrom == null) {
    return null;
  }

  return addFrom + (indexNumber * multiplyOf);
}

int? subtractAnimation(
  int? indexNumber,
  int? multiplyOf,
  int? subtractFrom,
) {
  if (indexNumber == null || multiplyOf == null || subtractFrom == null) {
    return null;
  }

  return subtractFrom - (indexNumber * multiplyOf);
}

String createUuid() {
  // final uuid = Uuid();
  // final id = uuid.v4();

  // return id;

  final random = math.Random.secure();

  String hex(int length) =>
      List.generate(length, (_) => random.nextInt(16).toRadixString(16)).join();

  final result =
      '${hex(8)}-${hex(4)}-4${hex(3)}-${(8 + random.nextInt(4)).toRadixString(16)}${hex(3)}-${hex(12)}'
          .toUpperCase();

  print('createUuid: $result');
  return result;
}

List<dynamic> mapAccountTransactions(List<dynamic> transactions) {
  final formatter = DateFormat('MM/dd/yyyy');

  return transactions.map((item) {
    final json = Map<String, dynamic>.from(item);

    final amount = (json['amount'] as num?)?.toDouble();
    final direction = json['direction']?.toString().toUpperCase();

    String formatDate(dynamic value) {
      if (value == null) return '';
      try {
        return formatter.format(DateTime.parse(value.toString()));
      } catch (_) {
        return value.toString();
      }
    }

    return {
      'Txn. Date': formatDate(json['transactionDate']),
      'Description': json['description']?.toString(),
      'Ref. No.': json['referenceNumber']?.toString(),
      'Value Date': formatDate(json['valueDate']),
      'Currency': json['currency']?.toString(),
      'Debit': direction == 'DEBIT' ? amount : null,
      'Credit': direction == 'CREDIT' ? amount : null,
      'Balance': (json['runningBalance'] as num?)?.toDouble(),
    };
  }).toList();
}

String formatTenor(List<int> days) {
  if (days.isEmpty) return '';
  return '${days.first}-${days.last} Days';
}

int stringToInt(String value) {
  return int.tryParse(value) ?? 0;
}

String convertDaysToMonths(String days) {
  int parsedDays = int.tryParse(days) ?? 0;

  if (parsedDays <= 0) return '0 days';

  int months = parsedDays ~/ 30;
  int remainingDays = parsedDays % 30;

  if (months == 0) {
    return '$parsedDays ${parsedDays == 1 ? 'day' : 'days'}';
  }

  if (remainingDays == 0) {
    return '$months ${months == 1 ? 'month' : 'months'}';
  }

  return '$months ${months == 1 ? 'month' : 'months'} and $remainingDays ${remainingDays == 1 ? 'day' : 'days'}';
}

double calculateProgressPercent(
  String openedDate,
  String maturityDate,
) {
  final start = DateTime.parse(openedDate);
  final end = DateTime.parse(maturityDate);
  final now = DateTime.now();

  final totalDays = end.difference(start).inDays;
  final elapsedDays = now.difference(start).inDays;

  if (totalDays <= 0) return 0.0;

  double percent = elapsedDays / totalDays;

  if (percent < 0) return 0.0;
  if (percent > 1) return 1.0;

  return percent;
}

String formatDateString(String? dateString) {
  if (dateString == null || dateString.trim().isEmpty) {
    return '';
  }

  final dateTime = DateTime.tryParse(dateString);
  if (dateTime == null) {
    return 'Invalid date';
  }

  return DateFormat('yyyy-MM-dd h:mm a').format(dateTime.toLocal());
}

dynamic parseArticleContent(String rawBody) {
// Automatic imports
// List<Double> etc. are handled by FlutterFlow, do not add them.

  String headerTitle = '';
  String bodyText = '';
  List<String> checklistItems = [];

  // Split raw markdown into lines
  List<String> lines = rawBody.split('\n');

  bool isCollectingChecklist = false;
  List<String> bodyParagraphs = [];

  for (var line in lines) {
    String trimmed = line.trim();
    if (trimmed.isEmpty) continue;

    // 1. Extract the main header title (e.g., "**The one rule that never changes**")
    if (trimmed.startsWith('**') &&
        trimmed.endsWith('**') &&
        headerTitle.isEmpty) {
      headerTitle = trimmed.replaceAll('**', '');
      continue;
    }

    // 2. Identify when the checkbox/list section starts
    if (trimmed.startsWith('- [x]') || trimmed.startsWith('- [ ]')) {
      isCollectingChecklist = true;
      String cleanItem =
          trimmed.replaceFirst(RegExp(r'-\s*\[[x ]\]'), '').trim();
      checklistItems.add(cleanItem);
      continue;
    }

    // 3. Continue collecting checklist items if we are in that section
    if (isCollectingChecklist) {
      if (trimmed.startsWith('- [x]') || trimmed.startsWith('- [ ]')) {
        String cleanItem =
            trimmed.replaceFirst(RegExp(r'-\s*\[[x ]\]'), '').trim();
        checklistItems.add(cleanItem);
      } else {
        // If we hit non-list text (like another header), stop collecting checklist items
        isCollectingChecklist = false;
      }
      continue;
    }

    // 4. Anything else before/between headers that isn't a list item becomes part of the body text
    if (!trimmed.startsWith('**')) {
      bodyParagraphs.add(trimmed);
    }
  }

  bodyText = bodyParagraphs.join('\n\n');

  // Returning a standard Dart Map.
  // FlutterFlow will successfully cast this Map as a JSON object.
  return {
    'title': headerTitle.isNotEmpty ? headerTitle : 'Security Advisory',
    'body': bodyText,
    'checklist': checklistItems,
  };
}

dynamic reportStringToJson(
  String? url,
  String? description,
) {
  return {
    "url": url ?? "",
    "description": description ?? "",
  };
}

dynamic fixJsonString(String input) {
  String output = input;

  // Quote property names
  output = output.replaceAllMapped(
    RegExp(r'([,{]\s*)([A-Za-z0-9_]+)\s*:'),
    (m) => '${m.group(1)}"${m.group(2)}":',
  );

  // Quote unquoted string values
  output = output.replaceAllMapped(
    RegExp(r':\s*([^"{\[\],}][^,}]*)'),
    (m) {
      final value = m.group(1)!.trim();

      // Leave numbers, booleans and null unchanged
      if (RegExp(r'^-?\d+(\.\d+)?$').hasMatch(value) ||
          value == 'true' ||
          value == 'false' ||
          value == 'null') {
        return ': $value';
      }

      return ': "${value.replaceAll('"', '\\"')}"';
    },
  );

  return jsonDecode(output);
}

String? reportFormatText(String? stringInput) {
  if (stringInput == null || stringInput.trim().isEmpty) {
    return stringInput;
  }

  // Convert the literal "\n" into an actual newline.
  return stringInput.replaceAll(r'\n', '\n');
}

bool? checkPaymentDateMissing(
  dynamic apiResponse,
  String? parameterName,
) {
  if (apiResponse == null || parameterName == null || parameterName.isEmpty) {
    return null;
  }

  if (apiResponse is Map<String, dynamic>) {
    return !apiResponse.containsKey(parameterName);
  }

  return null;
}

double? getPercentage(
  int? monthsPaid,
  int? totalMonths,
) {
  if (monthsPaid == null || totalMonths == null || totalMonths == 0) {
    return null;
  }

  return monthsPaid / totalMonths;
}

String buildLimitChangeContext(List<dynamic> updates) {
  final typeKeys = updates.map((u) => (u as Map)['typeKey'] as String).toList();

  return jsonEncode(typeKeys); // → ["INSTAPAY"]
}

String formatStatus(String status) {
  return status.trim().toLowerCase().replaceAll(RegExp(r'\s+'), '_');
}

String formatSubmittedDate(String isoDate) {
  final date = DateTime.parse(isoDate).toLocal();
  final now = DateTime.now();

  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));
  final dateOnly = DateTime(date.year, date.month, date.day);

  String dayLabel;
  if (dateOnly == today) {
    dayLabel = 'today';
  } else if (dateOnly == yesterday) {
    dayLabel = 'yesterday';
  } else {
    dayLabel = DateFormat('MMM d, yyyy').format(date);
  }

  final time = DateFormat('h:mm a').format(date);

  return 'Submitted $dayLabel · $time';
}

String formatStatusV2(String status) {
  return status
      .split('_')
      .map((word) => word.isEmpty
          ? word
          : '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}')
      .join(' ');
}

ErrorMappingModelStruct mapError(String error) {
  switch (error) {
    // Session
    case 'INVALID_SESSION':
      return ErrorMappingModelStruct(
        title: 'Session Invalid',
        message: 'Your session is invalid. Please start over.',
      );

    case 'SESSION_EXPIRED':
      return ErrorMappingModelStruct(
        title: 'Session Expired',
        message: 'Your registration session has expired. Please start over.',
      );

    case 'SESSION_NOT_FOUND':
      return ErrorMappingModelStruct(
        title: 'Session Not Found',
        message:
            'Registration session not found. Please start a new registration.',
      );

    case 'INVALID_STATUS_TRANSITION':
      return ErrorMappingModelStruct(
        title: 'Invalid Status',
        message:
            'This action cannot be performed at this stage of registration.',
      );

    // Registration
    case 'ALREADY_REGISTERED':
      return ErrorMappingModelStruct(
        title: 'Already Registered',
        message:
            'This account already has digital banking credentials. Please log in instead.',
      );

    case 'CIF_ALREADY_REGISTERED':
      return ErrorMappingModelStruct(
        title: 'Already Registered',
        message:
            'This customer already has digital banking credentials. Please log in instead.',
      );

    case 'EMAIL_ALREADY_REGISTERED':
      return ErrorMappingModelStruct(
        title: 'Email Already Used',
        message: 'This email is already associated with an account.',
      );

    case 'USERNAME_TAKEN':
      return ErrorMappingModelStruct(
        title: 'Username Unavailable',
        message: 'This username is already taken. Please choose another.',
      );

    case 'RESERVED_USERNAME':
      return ErrorMappingModelStruct(
        title: 'Username Unavailable',
        message:
            'This username is reserved and cannot be used. Please choose another.',
      );

    case 'WEAK_PASSWORD':
      return ErrorMappingModelStruct(
        title: 'Password Too Weak',
        message: 'Your password does not meet the security requirements.',
      );

    case 'PASSWORD_MISMATCH':
      return ErrorMappingModelStruct(
        title: 'Passwords Do Not Match',
        message: 'The passwords you entered do not match. Please try again.',
      );

    // OTP
    case 'INVALID_OTP':
      return ErrorMappingModelStruct(
        title: 'Incorrect Code',
        message:
            'The code you entered is incorrect. Please check and try again.',
      );

    case 'OTP_EXPIRED':
      return ErrorMappingModelStruct(
        title: 'Code Expired',
        message:
            'The verification code has expired. Please request a new code.',
      );

    case 'NO_OTP_FOUND':
      return ErrorMappingModelStruct(
        title: 'No Code Found',
        message: 'No verification code was found. Please request a new code.',
      );

    case 'ALREADY_VERIFIED':
      return ErrorMappingModelStruct(
        title: 'Already Verified',
        message: 'This verification code has already been used.',
      );

    case 'MAX_ATTEMPTS_EXCEEDED':
      return ErrorMappingModelStruct(
        title: 'Too Many Attempts',
        message:
            'You\'ve exceeded the maximum verification attempts. Please request a new code.',
      );

    case 'MAX_OTP_SENDS_EXCEEDED':
      return ErrorMappingModelStruct(
        title: 'Too Many Requests',
        message: 'You\'ve requested too many codes. Please try again later.',
      );

    case 'COOLDOWN_ACTIVE':
      return ErrorMappingModelStruct(
        title: 'Please Wait',
        message: 'Please wait before requesting another verification code.',
      );

    // CBS Validation
    case 'ACCOUNT_NOT_FOUND':
      return ErrorMappingModelStruct(
        title: 'Account Not Found',
        message:
            'We couldn\'t find an account with the information provided. Please check and try again.',
      );

    case 'DETAILS_MISMATCH':
      return ErrorMappingModelStruct(
        title: 'Information Mismatch',
        message:
            'The details you provided don\'t match our records. Please check and try again.',
      );

    case 'ACCOUNT_CLOSED':
      return ErrorMappingModelStruct(
        title: 'Account Closed',
        message: 'This account is closed and cannot be used for registration.',
      );

    case 'ACCOUNT_BLOCKED':
      return ErrorMappingModelStruct(
        title: 'Account Blocked',
        message:
            'This account is blocked. Please contact your branch for assistance.',
      );

    case 'ACCOUNT_DORMANT':
      return ErrorMappingModelStruct(
        title: 'Account Dormant',
        message:
            'This account is dormant. Please contact your branch to reactivate it.',
      );

    case 'VALIDATION_FAILED':
      return ErrorMappingModelStruct(
        title: 'Validation Failed',
        message:
            'Account validation failed. Please check your information and try again.',
      );

    case 'PROVIDER_ERROR':
      return ErrorMappingModelStruct(
        title: 'Service Unavailable',
        message:
            'We couldn\'t verify your account right now. Please try again later.',
      );

    // Security
    case 'ACCOUNT_LOCKED':
      return ErrorMappingModelStruct(
        title: 'Account Locked',
        message:
            'Your account has been temporarily locked due to too many failed attempts. Please try again later.',
      );

    case 'FRAUD_CHECK_DENIED':
      return ErrorMappingModelStruct(
        title: 'Request Blocked',
        message:
            'This request could not be completed due to security checks. Please contact support if you need assistance.',
      );

    case 'INVALID_FMS_SESSION':
      return ErrorMappingModelStruct(
        title: 'Invalid Session',
        message:
            'Your device security session is invalid or expired. Please restart the app and try again.',
      );

    // Service
    case 'FEATURE_UNAVAILABLE':
      return ErrorMappingModelStruct(
        title: 'Feature Unavailable',
        message:
            'This feature is currently unavailable. Please try again later.',
      );

    case 'REGISTRATION_UNAVAILABLE':
      return ErrorMappingModelStruct(
        title: 'Service Unavailable',
        message:
            'Registration is currently unavailable. Please try again later.',
      );

    case 'RATE_LIMIT_EXCEEDED':
      return ErrorMappingModelStruct(
        title: 'Too Many Attempts',
        message:
            'You\'ve made too many attempts. Please wait a moment and try again.',
      );

    case 'REGISTRATION_RATE_LIMIT_EXCEEDED':
      return ErrorMappingModelStruct(
        title: 'Too Many Registration Attempts',
        message: 'Too many registration attempts. Please try again later.',
      );

    // Username validation
    case 'ALREADY_TAKEN':
      return ErrorMappingModelStruct(
        title: 'Username Unavailable',
        message: 'This username is already taken. Please choose another.',
      );

    case 'INVALID_FORMAT':
      return ErrorMappingModelStruct(
        title: 'Invalid Username',
        message:
            'Username must start with a letter and be 6–32 characters long.',
      );

    case 'RESERVED':
      return ErrorMappingModelStruct(
        title: 'Username Unavailable',
        message: 'This username is reserved and cannot be used.',
      );

    default:
      return ErrorMappingModelStruct(
        title: 'Something Went Wrong',
        message: 'An unexpected error occurred. Please try again later.',
      );
  }
}

bool? isLessThan24Hours(String? dateTimeString) {
  if (dateTimeString == null || dateTimeString.trim().isEmpty) {
    return false;
  }

  try {
    final dateTime = DateTime.parse(dateTimeString);
    final now = DateTime.now();

    // Return true only if the datetime is in the past
    // and less than 24 hours have elapsed.
    return dateTime.isBefore(now) && now.difference(dateTime).inHours < 24;
  } catch (_) {
    return false;
  }
}

String? checkMpin(String? mpin) {
  if (mpin == null || mpin.isEmpty) {
    return 'other';
  }

  // Check if all digits are the same
  final isRepeating = mpin.split('').every((digit) => digit == mpin[0]);

  if (isRepeating) {
    return 'repeating';
  }

  // Check if MPIN contains digits only
  if (!RegExp(r'^\d+$').hasMatch(mpin)) {
    return 'other';
  }

  // Check for sequential digits (ascending or descending)
  final digits = mpin.split('').map(int.parse).toList();

  bool ascending = true;
  bool descending = true;

  for (int i = 0; i < digits.length - 1; i++) {
    if (digits[i + 1] - digits[i] != 1) {
      ascending = false;
    }

    if (digits[i + 1] - digits[i] != -1) {
      descending = false;
    }
  }

  if (ascending || descending) {
    return 'sequential';
  }

  return 'other';
}

bool? isMaxLimitExceeded(
  String? maxLimit,
  String? currentLimit,
) {
  if (maxLimit == null || currentLimit == null) {
    return false;
  }

  final max = double.tryParse(
    maxLimit.replaceAll(',', '').trim(),
  );

  final current = double.tryParse(
    currentLimit.replaceAll(',', '').trim(),
  );

  if (max == null || current == null) {
    return false;
  }

  return current > max;
}

String? removeHyphens(String? value) {
  if (value == null) {
    return '';
  }

  return value.replaceAll('-', '');
}

int getDaysBetween(
  String openedDate,
  String maturityDate,
) {
  final start = DateTime.parse(openedDate);
  final current = DateTime.now();
  final end = DateTime.parse(maturityDate);

  return end.difference(current).inDays;
}

String? longStringEllipsis(String? accountNickname) {
  if (accountNickname == null || accountNickname.isEmpty) {
    return accountNickname;
  }

  const int maxCharacters = 12;

  if (accountNickname.length <= maxCharacters) {
    return accountNickname;
  }

  return '${accountNickname.substring(0, maxCharacters)}...';
}

/// Returns the current time in milliseconds since epoch
/// Use this when saving the cache timestamp.
int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch;
}

/// Returns true when the cached limits are older than [ttlSeconds] seconds
/// (default 60 s).
bool isLimitCacheStale(
  int cachedAt,
  int ttlSeconds,
) {
  if (cachedAt == 0) return true; // never been cached
  final now = DateTime.now().millisecondsSinceEpoch;
  return (now - cachedAt) > (ttlSeconds * 1000);
}

/// Safely converts a text-field string to double.
///
/// Returns 0.0 on empty or invalid input instead of throwing.
double parseDoubleFromString(String raw) {
  if (raw.isEmpty) return 0.0;
  // Strip commas used as thousand separators (e.g. "1,500.00")
  final cleaned = raw.replaceAll(',', '').trim();
  return double.tryParse(cleaned) ?? 0.0;
}

/// Finds a single limit object from the limits array
///
///  by typeKey and returns it as a Map.
///
/// Returns null if not found.
dynamic getLimitForType(
  dynamic limitsJson,
  String typeKey,
) {
  try {
    final List<dynamic> list = limitsJson as List<dynamic>;
    return list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
  } catch (_) {
    return null;
  }
}

/// Returns the remaining daily limit for a typeKey.
///
/// This is the primary cap to validate against since it already accounts for
/// what was spent today.
double getRemainingLimit(
  dynamic limitsJson,
  String typeKey,
) {
  try {
    final List<dynamic> list = limitsJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
    if (match == null) return 0.0;
    return (match['remaining'] as num).toDouble();
  } catch (_) {
    return 0.0;
  }
}

/// Returns the minimum allowed amount for a typeKey from the limits response.
double getMinAmountFromLimits(
  dynamic limitsJson,
  String typeKey,
) {
  try {
    final List<dynamic> list = limitsJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
    if (match == null) return 0.0;
    return (match['minAmount'] as num).toDouble();
  } catch (_) {
    return 0.0;
  }
}

/// Returns a display string showing daily usage and remaining limit.
///
/// Used in the transfer page UI. e.g.  "P8,500.00 remaining  (P1,500.00 used
/// today)"
String buildLimitSummaryText(
  dynamic limitsJson,
  String typeKey,
) {
  try {
    final List<dynamic> list = limitsJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
    if (match == null) return 'Limit information unavailable.';

    final remaining = (match['remaining'] as num).toDouble();
    final usedToday = (match['usedToday'] as num).toDouble();
    final dailyLimit = (match['dailyLimit'] as num).toDouble();

    return 'P${_numFmt(remaining)} remaining of P${_numFmt(dailyLimit)} daily limit'
        '  (P${_numFmt(usedToday)} used today)';
  } catch (_) {
    return 'Limit information unavailable.';
  }
}

String _numFmt(double v) {
  final parts = v.toStringAsFixed(2).split('.');
  final whole = parts[0];
  final buf = StringBuffer();
  int c = 0;
  for (int i = whole.length - 1; i >= 0; i--) {
    if (c > 0 && c % 3 == 0) buf.write(',');
    buf.write(whole[i]);
    c++;
  }
  return '${buf.toString().split('').reversed.join()}.${parts[1]}';
}

/// Returns a formatted fee label for the modal tile or
///
///      transfer page summary.
String getFeeText(
  dynamic typesJson,
  String typeKey,
) {
  try {
    final List<dynamic> list = typesJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
    if (match == null) return 'Fee: —';

    final feeType = (match['feeType'] as String? ?? '').toUpperCase();
    final feeAmount = (match['feeAmount'] as num? ?? 0).toDouble();

    switch (feeType) {
      case 'FREE':
        return 'Fee: Free';
      case 'FIXED':
        return 'Fee: P${_numFmt(feeAmount)}';
      case 'PERCENT':
        return 'Fee: ${feeAmount.toStringAsFixed(1)}%';
      default:
        return 'Fee: —';
    }
  } catch (_) {
    return 'Fee: —';
  }
}

/// One-line summary shown under the type name in the modal.
///
/// e.g.  "Processed in 1-3 mins  ·  Cut-off: 9:30 PM"
String getTypeDetailText(
  dynamic typesJson,
  String typeKey,
) {
  try {
    final List<dynamic> list = typesJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
    if (match == null) return '';

    final processing = match['processingTime'] as String? ?? '';
    final cutOff = match['cutOffTime'] as String? ?? '';

    if (processing.isNotEmpty && cutOff.isNotEmpty) {
      return '$processing  ·  Cut-off: $cutOff';
    }
    if (processing.isNotEmpty) return processing;
    if (cutOff.isNotEmpty) return 'Cut-off: $cutOff';
    return '';
  } catch (_) {
    return '';
  }
}

/// Calculates the actual fee charged for a given transfer amount.
///
/// Useful for showing a "You will be charged P X" breakdown on the transfer
/// page.
double computeFeeAmount(
  dynamic typesJson,
  String typeKey,
  double transferAmount,
) {
  try {
    final List<dynamic> list = typesJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );
    if (match == null) return 0.0;

    final feeType = (match['feeType'] as String? ?? '').toUpperCase();
    final feeAmount = (match['feeAmount'] as num? ?? 0).toDouble();

    switch (feeType) {
      case 'FREE':
        return 0.0;
      case 'FIXED':
        return feeAmount;
      case 'PERCENT':
        return (transferAmount * feeAmount) / 100.0;
      default:
        return 0.0;
    }
  } catch (_) {
    return 0.0;
  }
}

/// Full validation against the limits response.
///
/// Checks: minAmount, maxAmount (per-transaction cap),
/// and remaining daily limit.
/// Returns "" when valid, or a user-facing error string.
String validateAmount(
  double amount,
  dynamic limitsJson,
  String typeKey,
) {
  if (amount <= 0) {
    return 'Please enter an amount greater than zero.';
  }
  String _numFmt(double v) {
    final parts = v.toStringAsFixed(2).split('.');
    final whole = parts[0];
    final buf = StringBuffer();
    int c = 0;
    for (int i = whole.length - 1; i >= 0; i--) {
      if (c > 0 && c % 3 == 0) buf.write(',');
      buf.write(whole[i]);
      c++;
    }
    return '${buf.toString().split('').reversed.join()}.${parts[1]}';
  }

  try {
    final List<dynamic> list = limitsJson as List<dynamic>;
    final match = list.firstWhere(
      (item) =>
          (item['typeKey'] as String).toLowerCase() == typeKey.toLowerCase(),
      orElse: () => null,
    );

    if (match == null) {
      return 'Transfer type not found. Please go back and reselect.';
    }

    final minAmount = (match['minAmount'] as num).toDouble();
    final maxAmount = (match['maxAmount'] as num).toDouble();
    final remaining = (match['remaining'] as num).toDouble();

    if (amount < minAmount) {
      return 'Minimum amount for this transfer is P${_numFmt(minAmount)}.';
    }
    if (amount > maxAmount) {
      return 'Maximum per-transaction amount is P${_numFmt(maxAmount)}.';
    }
    if (amount > remaining) {
      return 'Amount exceeds your remaining daily limit of P${_numFmt(remaining)}.';
    }

    return ''; // valid
  } catch (_) {
    return 'Unable to validate amount. Please try again.';
  }
}

/// Boolean gate for the Send button Enabled Condition.
///
/// Returns true only when all checks pass.
bool isFormValid(
  double amount,
  dynamic limitsJson,
  String typeKey,
) {
  if (typeKey.isEmpty) return false;
  final error = validateAmount(amount, limitsJson, typeKey);
  return error.isEmpty;
}
