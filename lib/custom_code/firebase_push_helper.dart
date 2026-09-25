import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';

import '/environment_values.dart';

const _notificationChannelId = 'pbb_pocket_high_importance';
const _notificationChannelName = 'PBB Pocket Notifications';

final FlutterLocalNotificationsPlugin _localNotifications =
    FlutterLocalNotificationsPlugin();

bool _pushHandlersConfigured = false;
bool _localNotificationsInitialized = false;

FirebaseOptions firebaseOptionsForEnvironment() {
  final env = FFDevEnvironmentValues.currentEnvironment;

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    switch (env) {
      case 'Dev':
        return const FirebaseOptions(
          apiKey: 'AIzaSyAPMEpd9laGx1UA0_haB9qQIPhc2HVuWUU',
          appId: '1:750819153189:android:fda563f72eb01c0e11b6cc',
          messagingSenderId: '750819153189',
          projectId: 'willow-2123e',
          storageBucket: 'willow-2123e.firebasestorage.app',
        );
      case 'SITMob':
      case 'SITWeb':
        return const FirebaseOptions(
          apiKey: 'AIzaSyAPMEpd9laGx1UA0_haB9qQIPhc2HVuWUU',
          appId: '1:750819153189:android:4cbc6d5b9d987a9e11b6cc',
          messagingSenderId: '750819153189',
          projectId: 'willow-2123e',
          storageBucket: 'willow-2123e.firebasestorage.app',
        );
      case 'UAT':
      case 'UATMob':
      case 'UATWeb':
      default:
        return const FirebaseOptions(
          apiKey: 'AIzaSyAPMEpd9laGx1UA0_haB9qQIPhc2HVuWUU',
          appId: '1:750819153189:android:55689b901038815f11b6cc',
          messagingSenderId: '750819153189',
          projectId: 'willow-2123e',
          storageBucket: 'willow-2123e.firebasestorage.app',
        );
    }
  }

  return const FirebaseOptions(
    apiKey: 'AIzaSyCBLDhtmZ2wvDRPWmUVUi2e7Bg8vjGDfVc',
    appId: '1:750819153189:ios:c1d32c8b3c8bc82b11b6cc',
    messagingSenderId: '750819153189',
    projectId: 'willow-2123e',
    storageBucket: 'willow-2123e.firebasestorage.app',
  );
}

Future<void> ensureFirebaseInitialized() async {
  if (Firebase.apps.isNotEmpty) {
    return;
  }

  await Firebase.initializeApp(
    options: firebaseOptionsForEnvironment(),
  );
}

@pragma('vm:entry-point')
void onBackgroundNotificationResponse(NotificationResponse response) {
  debugPrint('Background notification tapped: ${response.payload}');
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ensureFirebaseInitialized();

  debugPrint('FCM background message: ${message.messageId}');
  debugPrint('FCM background data: ${message.data}');

  await showLocalNotification(message);
}

Future<void> initLocalNotifications() async {
  if (_localNotificationsInitialized) {
    return;
  }

  // The correct directory for the custom app icon in FlutterFlow
  const androidSettings =
      AndroidInitializationSettings('@mipmap/launcher_icon');

  const iosSettings = DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestSoundPermission: true,
  );

  const settings = InitializationSettings(
    android: androidSettings,
    iOS: iosSettings,
  );

  await _localNotifications.initialize(
    settings: settings,
    onDidReceiveNotificationResponse: (NotificationResponse response) {
      debugPrint('Notification tapped: ${response.payload}');
    },
    onDidReceiveBackgroundNotificationResponse:
        onBackgroundNotificationResponse,
  );

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    const channel = AndroidNotificationChannel(
      _notificationChannelId,
      _notificationChannelName,
      importance: Importance.max,
      playSound: true,
      enableVibration: true,
    );

    final androidPlugin =
        _localNotifications.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

    await androidPlugin?.createNotificationChannel(channel);
  }

  _localNotificationsInitialized = true;
}

String? readPayloadField(Map<String, dynamic> data, List<String> keys) {
  for (final key in keys) {
    final value = data[key];
    if (value != null && value.toString().trim().isNotEmpty) {
      return value.toString();
    }
  }
  return null;
}

Future<void> showLocalNotification(RemoteMessage message) async {
  await initLocalNotifications();

  final data = message.data;
  final notification = message.notification;

  final title = notification?.title ??
      readPayloadField(data, [
        'title',
        'notification_title',
        'subject',
        'heading',
      ]) ??
      'PBB Pocket';

  var body = notification?.body ??
      readPayloadField(data, [
        'body',
        'message',
        'notification_body',
        'alert',
        'content',
        'text',
      ]);

  body ??= data.isNotEmpty ? data.values.join(' ') : null;

  if (body == null || body.trim().isEmpty) {
    debugPrint('FCM: empty notification payload');
    return;
  }

  debugPrint('FCM showing notification: $title | $body');

  await _localNotifications.show(
    id: message.hashCode.abs(),
    title: title,
    body: body,
    notificationDetails: const NotificationDetails(
      android: AndroidNotificationDetails(
        _notificationChannelId,
        _notificationChannelName,
        importance: Importance.max,
        priority: Priority.high,
        // The correct directory for the custom app icon in FlutterFlow
        icon: '@mipmap/launcher_icon',
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    ),
  );
}

/// Safe to call from [main] before [runApp]. Does not request permissions.
Future<void> initFirebaseMessagingCore() async {
  try {
    await ensureFirebaseInitialized();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    debugPrint(
      'FCM core initialized for ${FFDevEnvironmentValues.currentEnvironment}',
    );
  } catch (e, stack) {
    debugPrint('FCM core init failed: $e\n$stack');
  }
}

Future<void> setupPushNotifications() async {
  if (_pushHandlersConfigured) {
    return;
  }

  debugPrint(
    'FCM setup env: ${FFDevEnvironmentValues.currentEnvironment}',
  );

  try {
    await ensureFirebaseInitialized();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      final status = await Permission.notification
          .request()
          .timeout(const Duration(seconds: 30), onTimeout: () {
        debugPrint('Notification permission request timed out');
        return PermissionStatus.denied;
      });
      debugPrint('Notification permission: $status');
    }

    await initLocalNotifications();

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      debugPrint('FCM foreground: ${message.messageId}');
      debugPrint('FCM data: ${message.data}');
      await showLocalNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('FCM opened: ${message.messageId}');
    });

    _pushHandlersConfigured = true;
    debugPrint('FCM fully initialized');
  } catch (e, stack) {
    debugPrint('FCM setup failed: $e\n$stack');
  }
}
