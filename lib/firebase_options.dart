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
    apiKey: 'AIzaSyBGPpZD7Q7GvA1vXTE-gBYVpAZPl_WUfCM',
    appId: '1:327495550598:web:a046e8ed1b7be25f75f307',
    messagingSenderId: '327495550598',
    projectId: 'spotify-1666e',
    authDomain: 'spotify-1666e.firebaseapp.com',
    storageBucket: 'spotify-1666e.appspot.com',
    measurementId: 'G-50BDJE0FXT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA_z0vxJu3yP4Ly18IbsYogAQTDeFVPSkU',
    appId: '1:327495550598:android:d19e00402f10de6875f307',
    messagingSenderId: '327495550598',
    projectId: 'spotify-1666e',
    storageBucket: 'spotify-1666e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCt2PRK914gJKVoLPE9z9WJuNmlzyFZQHA',
    appId: '1:327495550598:ios:a772d15a29b5c1b475f307',
    messagingSenderId: '327495550598',
    projectId: 'spotify-1666e',
    storageBucket: 'spotify-1666e.appspot.com',
    iosBundleId: 'com.example.spotifyApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCt2PRK914gJKVoLPE9z9WJuNmlzyFZQHA',
    appId: '1:327495550598:ios:a772d15a29b5c1b475f307',
    messagingSenderId: '327495550598',
    projectId: 'spotify-1666e',
    storageBucket: 'spotify-1666e.appspot.com',
    iosBundleId: 'com.example.spotifyApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBGPpZD7Q7GvA1vXTE-gBYVpAZPl_WUfCM',
    appId: '1:327495550598:web:4f0fbf31d8b4b7e275f307',
    messagingSenderId: '327495550598',
    projectId: 'spotify-1666e',
    authDomain: 'spotify-1666e.firebaseapp.com',
    storageBucket: 'spotify-1666e.appspot.com',
    measurementId: 'G-KFXXZGZKG9',
  );
}
