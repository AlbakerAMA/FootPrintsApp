import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDl4AovS9mqON-XJYTo6ieXu7gECT0yFyc",
            authDomain: "foot-print-kssiqj.firebaseapp.com",
            projectId: "foot-print-kssiqj",
            storageBucket: "foot-print-kssiqj.appspot.com",
            messagingSenderId: "775066332343",
            appId: "1:775066332343:web:83f7e5adf9ddc58783f132"));
  } else {
    await Firebase.initializeApp();
  }
}
