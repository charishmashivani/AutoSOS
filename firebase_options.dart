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
    apiKey: 'AIzaSyB_bnBVxA2fLTypiLb9IJM-zeJ-o6QCDCw',
    appId: '1:593749138583:web:8d1eea35706dccc5611dd2',
    messagingSenderId: '593749138583',
    projectId: 'autosos-234d7',
    authDomain: 'autosos-234d7.firebaseapp.com',
    storageBucket: 'autosos-234d7.appspot.com',
    measurementId: 'G-E3WYZK31PC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2yanL1dTIRX_GoNUlT9i6RPHRU-LKAqM',
    appId: '1:593749138583:android:5d3d0e46b9d94f25611dd2',
    messagingSenderId: '593749138583',
    projectId: 'autosos-234d7',
    storageBucket: 'autosos-234d7.appspot.com',
  );

  static  FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'AIzaSyDj5WL8VWTtZA51sYiU7wMroC5UaKos03s',
    appId: '1:593749138583:ios:00bbc17b6841708a611dd2',
    messagingSenderId: '593749138583',
    projectId: 'autosos-234d7',
    storageBucket: 'autosos-234d7.appspot.com',
    iosBundleId: 'com.example.autososFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDj5WL8VWTtZA51sYiU7wMroC5UaKos03s',
    appId: '1:593749138583:ios:7a14e7acd6f9693d611dd2',
    messagingSenderId: '593749138583',
    projectId: 'autosos-234d7',
    storageBucket: 'autosos-234d7.appspot.com',
    iosBundleId: 'com.example.autososFlutter.RunnerTests',
  );
}
