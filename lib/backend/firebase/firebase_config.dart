import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCeJLGLOLm9yJFG50LpWQBzpktLe4iAq6E",
            authDomain: "nevengi.firebaseapp.com",
            projectId: "nevengi",
            storageBucket: "nevengi.appspot.com",
            messagingSenderId: "10243904131",
            appId: "1:10243904131:web:29d73f365b6583859141b6"));
  } else {
    await Firebase.initializeApp();
  }
}
