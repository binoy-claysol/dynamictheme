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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
              'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAZnkKnVguE9GhTuc7YI6WVwZZ0UP0JgkY',
    authDomain: 'dynamicthemingplatform.firebaseapp.com',
    databaseURL: 'https://dynamicthemingplatform-default-rtdb.asia-southeast1.firebasedatabase.app',
    projectId: 'dynamicthemingplatform',
    storageBucket: 'dynamicthemingplatform.appspot.com',
    messagingSenderId: '665775063562',
    appId: '1:665775063562:web:f1df47b3a4e2310809d5f3',
    measurementId: 'G-RCCGWDBRFF',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAZnkKnVguE9GhTuc7YI6WVwZZ0UP0JgkY',
    appId: '1:665775063562:web:f1df47b3a4e2310809d5f3',
    messagingSenderId: '665775063562',
    projectId: 'dynamicthemingplatform',
    storageBucket: 'dynamicthemingplatform.appspot.com',
    iosClientId: '665775063562-xxxx.apps.googleusercontent.com',
    iosBundleId: 'dev.appainter.app',
  );
}