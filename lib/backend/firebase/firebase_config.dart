import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCYf2nWlNOCxc_Qe0GvtNoAbWeY9O7a1hQ",
            authDomain: "first-20abb.firebaseapp.com",
            projectId: "first-20abb",
            storageBucket: "first-20abb.appspot.com",
            messagingSenderId: "794276244547",
            appId: "1:794276244547:web:709619741907e2178838f6"));
  } else {
    await Firebase.initializeApp();
  }
}
