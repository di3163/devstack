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
    apiKey: 'AIzaSyDCKx7th8D3qR0ab7U-zQEEjGsMAF73FKA',
    appId: '1:558643870525:web:85d23c556f856a95baa354',
    messagingSenderId: '558643870525',
    projectId: 'devstack-8043e',
    authDomain: 'devstack-8043e.firebaseapp.com',
    storageBucket: 'devstack-8043e.appspot.com',
    measurementId: 'G-7FCK4BBNY1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDccWjh7h5nCEYJrAt4IF2yYSxzGypEwII',
    appId: '1:558643870525:android:7c4130c085387e2dbaa354',
    messagingSenderId: '558643870525',
    projectId: 'devstack-8043e',
    storageBucket: 'devstack-8043e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_FwNR3OzSwrckPI4_OnuDXX1RUV_dyVU',
    appId: '1:558643870525:ios:d7e21d4be29eed08baa354',
    messagingSenderId: '558643870525',
    projectId: 'devstack-8043e',
    storageBucket: 'devstack-8043e.appspot.com',
    iosClientId: '558643870525-kpfufmbmrr770m3a1drq8all5jdv8g40.apps.googleusercontent.com',
    iosBundleId: 'com.example.devstack',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_FwNR3OzSwrckPI4_OnuDXX1RUV_dyVU',
    appId: '1:558643870525:ios:d7e21d4be29eed08baa354',
    messagingSenderId: '558643870525',
    projectId: 'devstack-8043e',
    storageBucket: 'devstack-8043e.appspot.com',
    iosClientId: '558643870525-kpfufmbmrr770m3a1drq8all5jdv8g40.apps.googleusercontent.com',
    iosBundleId: 'com.example.devstack',
  );
}