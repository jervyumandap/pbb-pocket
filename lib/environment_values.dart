import 'dart:convert';
import 'package:flutter/services.dart';

class FFDevEnvironmentValues {
  static const String currentEnvironment = 'Dev';
  static const String environmentValuesPath =
      'assets/environment_values/environment.json';

  static final FFDevEnvironmentValues _instance =
      FFDevEnvironmentValues._internal();

  factory FFDevEnvironmentValues() {
    return _instance;
  }

  FFDevEnvironmentValues._internal();

  Future<void> initialize() async {
    try {
      final String response =
          await rootBundle.loadString(environmentValuesPath);
      final data = await json.decode(response);
      _BASEURL = data['BASEURL'];
      _APIKEY = data['APIKEY'];
      _ANONKEY = data['ANONKEY'];
      _PBBBaseURL = data['PBBBaseURL'];
      _SERVICEKEY = data['SERVICEKEY'];
      _WBPBASEURL = data['WBPBASEURL'];
      _apiKeyAndroid = data['apiKeyAndroid'];
      _appIdAndroid = data['appIdAndroid'];
      _apiKeyIOS = data['apiKeyIOS'];
      _appIdIOS = data['appIdIOS'];
      _messagingSenderId = data['messagingSenderId'];
      _projectId = data['projectId'];
      _EnvName = data['EnvName'];
      _DEVICEIDKEY = data['DEVICEIDKEY'];
      _AppInitializedKey = data['AppInitializedKey'];
      _PaygilantDomain = data['PaygilantDomain'];
      _PaygilantClientKey = data['PaygilantClientKey'];
    } catch (e) {
      print('Error loading environment values: $e');
    }
  }

  String _BASEURL = '';
  String get BASEURL => _BASEURL;

  String _APIKEY = '';
  String get APIKEY => _APIKEY;

  String _ANONKEY = '';
  String get ANONKEY => _ANONKEY;

  String _PBBBaseURL = '';
  String get PBBBaseURL => _PBBBaseURL;

  String _SERVICEKEY = '';
  String get SERVICEKEY => _SERVICEKEY;

  String _WBPBASEURL = '';
  String get WBPBASEURL => _WBPBASEURL;

  String _apiKeyAndroid = '';
  String get apiKeyAndroid => _apiKeyAndroid;

  String _appIdAndroid = '';
  String get appIdAndroid => _appIdAndroid;

  String _apiKeyIOS = '';
  String get apiKeyIOS => _apiKeyIOS;

  String _appIdIOS = '';
  String get appIdIOS => _appIdIOS;

  String _messagingSenderId = '';
  String get messagingSenderId => _messagingSenderId;

  String _projectId = '';
  String get projectId => _projectId;

  String _EnvName = '';
  String get EnvName => _EnvName;

  String _DEVICEIDKEY = '';
  String get DEVICEIDKEY => _DEVICEIDKEY;

  String _AppInitializedKey = '';
  String get AppInitializedKey => _AppInitializedKey;

  String _PaygilantDomain = '';
  String get PaygilantDomain => _PaygilantDomain;

  String _PaygilantClientKey = '';
  String get PaygilantClientKey => _PaygilantClientKey;
}
