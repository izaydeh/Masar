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
    apiKey: 'AIzaSyBq3wORvib-V_fpG2IxC-juG__DB8OCLio',
    appId: '1:727683642913:web:a53b169afe9de0f3959560',
    messagingSenderId: '727683642913',
    projectId: 'masar-486a4',
    authDomain: 'masar-486a4.firebaseapp.com',
    storageBucket: 'masar-486a4.appspot.com',
    measurementId: 'G-9557MK2D79',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA9Qzcdk78nfFLt8L__cemFUp9Q1gNKeYk',
    appId: '1:727683642913:android:0994d0e4694522de959560',
    messagingSenderId: '727683642913',
    projectId: 'masar-486a4',
    storageBucket: 'masar-486a4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDiq2NFBXMETAKnhkq6mWyThlJ_iMVcyr4',
    appId: '1:727683642913:ios:b1f151d47e6d2793959560',
    messagingSenderId: '727683642913',
    projectId: 'masar-486a4',
    storageBucket: 'masar-486a4.appspot.com',
    iosBundleId: 'com.example.masar',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDiq2NFBXMETAKnhkq6mWyThlJ_iMVcyr4',
    appId: '1:727683642913:ios:b1f151d47e6d2793959560',
    messagingSenderId: '727683642913',
    projectId: 'masar-486a4',
    storageBucket: 'masar-486a4.appspot.com',
    iosBundleId: 'com.example.masar',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBq3wORvib-V_fpG2IxC-juG__DB8OCLio',
    appId: '1:727683642913:web:101315d15942dda3959560',
    messagingSenderId: '727683642913',
    projectId: 'masar-486a4',
    authDomain: 'masar-486a4.firebaseapp.com',
    storageBucket: 'masar-486a4.appspot.com',
    measurementId: 'G-WCGLM19RXE',
  );
}