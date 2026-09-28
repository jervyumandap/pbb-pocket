import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PBBPocketAuthUser {
  PBBPocketAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  AuthenticatedUserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PBBPocketAuthUser> pBBPocketAuthUserSubject =
    BehaviorSubject.seeded(PBBPocketAuthUser(loggedIn: false));
Stream<PBBPocketAuthUser> pBBPocketAuthUserStream() => pBBPocketAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
