import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SeekerFirebaseUser {
  SeekerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

SeekerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SeekerFirebaseUser> seekerFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<SeekerFirebaseUser>(
      (user) {
        currentUser = SeekerFirebaseUser(user);
        return currentUser!;
      },
    );
