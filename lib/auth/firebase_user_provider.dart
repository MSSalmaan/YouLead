import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class YouLeadFirebaseUser {
  YouLeadFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

YouLeadFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<YouLeadFirebaseUser> youLeadFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<YouLeadFirebaseUser>(
        (user) => currentUser = YouLeadFirebaseUser(user));
