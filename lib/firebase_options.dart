// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA36Qxhp6DvE_LG7Kjw0bUNTBRa_9nfelU',
    appId: '1:120353426460:web:21dc77ccab9a68446d63d9',
    messagingSenderId: '120353426460',
    projectId: 'decisive-bazaar-302312',
    authDomain: 'decisive-bazaar-302312.firebaseapp.com',
    storageBucket: 'decisive-bazaar-302312.appspot.com',
    measurementId: 'G-GFZ85D20EE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuUqFn0cq_aobQfqexM6cr9Tzlng2AbLA',
    appId: '1:120353426460:android:8c8c563ee554efe96d63d9',
    messagingSenderId: '120353426460',
    projectId: 'decisive-bazaar-302312',
    storageBucket: 'decisive-bazaar-302312.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAd7rOhPPn2yklhC0-KFJhKiAvvYb8wsNU',
    appId: '1:120353426460:ios:2a6140930c2db0176d63d9',
    messagingSenderId: '120353426460',
    projectId: 'decisive-bazaar-302312',
    storageBucket: 'decisive-bazaar-302312.appspot.com',
    iosClientId: '120353426460-5bmr6ftubuev5e1f4b0pl94n87khn520.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplicationFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAd7rOhPPn2yklhC0-KFJhKiAvvYb8wsNU',
    appId: '1:120353426460:ios:2a6140930c2db0176d63d9',
    messagingSenderId: '120353426460',
    projectId: 'decisive-bazaar-302312',
    storageBucket: 'decisive-bazaar-302312.appspot.com',
    iosClientId: '120353426460-5bmr6ftubuev5e1f4b0pl94n87khn520.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplicationFirebase',
  );
}