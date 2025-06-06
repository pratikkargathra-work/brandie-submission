// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD17rgRh_SQ2xqjFDAYNv6JIKXDiApgwWs',
    appId: '1:393969239126:web:1bd82e35ec64260f9467f7',
    messagingSenderId: '393969239126',
    projectId: 'brandiesubmission',
    authDomain: 'brandiesubmission.firebaseapp.com',
    storageBucket: 'brandiesubmission.firebasestorage.app',
    measurementId: 'G-HTR0KLWCXX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPeFVkXiTwsGCVQ2KfemjuIIt3pJ4OR-Y',
    appId: '1:393969239126:android:b91640898b4d09119467f7',
    messagingSenderId: '393969239126',
    projectId: 'brandiesubmission',
    storageBucket: 'brandiesubmission.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjY4v6SQtglkeah2IrYFOboMEx1ki4yz8',
    appId: '1:393969239126:ios:08ea7dd77d1c2c639467f7',
    messagingSenderId: '393969239126',
    projectId: 'brandiesubmission',
    storageBucket: 'brandiesubmission.firebasestorage.app',
    iosBundleId: 'com.example.oriflame',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjY4v6SQtglkeah2IrYFOboMEx1ki4yz8',
    appId: '1:393969239126:ios:08ea7dd77d1c2c639467f7',
    messagingSenderId: '393969239126',
    projectId: 'brandiesubmission',
    storageBucket: 'brandiesubmission.firebasestorage.app',
    iosBundleId: 'com.example.oriflame',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD17rgRh_SQ2xqjFDAYNv6JIKXDiApgwWs',
    appId: '1:393969239126:web:5ef0be924d328a879467f7',
    messagingSenderId: '393969239126',
    projectId: 'brandiesubmission',
    authDomain: 'brandiesubmission.firebaseapp.com',
    storageBucket: 'brandiesubmission.firebasestorage.app',
    measurementId: 'G-T4DWJPMCN1',
  );
}
