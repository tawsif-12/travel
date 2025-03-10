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
    apiKey: 'AIzaSyB06TTmv-o5uobzI37REdPpPRIQFRFs3Fg',
    appId: '1:245707331987:web:b7a4eae10924f037f3b066',
    messagingSenderId: '245707331987',
    projectId: 'travello-12',
    authDomain: 'travello-12.firebaseapp.com',
    storageBucket: 'travello-12.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC9Rm3god5lo97HUtmN4g2at2Hhfenezw4',
    appId: '1:245707331987:android:237de2c5a7dd18a9f3b066',
    messagingSenderId: '245707331987',
    projectId: 'travello-12',
    storageBucket: 'travello-12.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATxYJnGzgIMCUkJYVb6-wEqp0xeM0wea0',
    appId: '1:245707331987:ios:a638e6c6cbfc2504f3b066',
    messagingSenderId: '245707331987',
    projectId: 'travello-12',
    storageBucket: 'travello-12.firebasestorage.app',
    iosBundleId: 'com.example.travel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyATxYJnGzgIMCUkJYVb6-wEqp0xeM0wea0',
    appId: '1:245707331987:ios:a638e6c6cbfc2504f3b066',
    messagingSenderId: '245707331987',
    projectId: 'travello-12',
    storageBucket: 'travello-12.firebasestorage.app',
    iosBundleId: 'com.example.travel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB06TTmv-o5uobzI37REdPpPRIQFRFs3Fg',
    appId: '1:245707331987:web:a896ff03aff6c302f3b066',
    messagingSenderId: '245707331987',
    projectId: 'travello-12',
    authDomain: 'travello-12.firebaseapp.com',
    storageBucket: 'travello-12.firebasestorage.app',
  );
}
