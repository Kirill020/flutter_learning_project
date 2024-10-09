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
    apiKey: 'AIzaSyDrjfMm7pZfa0DdNWfbRu1mvj0fjAfFYPg',
    appId: '1:464048030362:web:94412ed6b6e23673f71523',
    messagingSenderId: '464048030362',
    projectId: 'crypto-list-app-58d6e',
    authDomain: 'crypto-list-app-58d6e.firebaseapp.com',
    storageBucket: 'crypto-list-app-58d6e.appspot.com',
    measurementId: 'G-K350G7KY4Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCScTXDTEEi2FMOk6FFEpPuYud8wh3dshM',
    appId: '1:464048030362:android:f329ae552b6d5e3bf71523',
    messagingSenderId: '464048030362',
    projectId: 'crypto-list-app-58d6e',
    storageBucket: 'crypto-list-app-58d6e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAIeBWapPH_5S7pf4mZTnekfC3UsxS2CtY',
    appId: '1:464048030362:ios:97630643e60c48f8f71523',
    messagingSenderId: '464048030362',
    projectId: 'crypto-list-app-58d6e',
    storageBucket: 'crypto-list-app-58d6e.appspot.com',
    iosBundleId: 'com.example.cryptoCurrenciesList',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAIeBWapPH_5S7pf4mZTnekfC3UsxS2CtY',
    appId: '1:464048030362:ios:97630643e60c48f8f71523',
    messagingSenderId: '464048030362',
    projectId: 'crypto-list-app-58d6e',
    storageBucket: 'crypto-list-app-58d6e.appspot.com',
    iosBundleId: 'com.example.cryptoCurrenciesList',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDrjfMm7pZfa0DdNWfbRu1mvj0fjAfFYPg',
    appId: '1:464048030362:web:eb4081bc61f9e080f71523',
    messagingSenderId: '464048030362',
    projectId: 'crypto-list-app-58d6e',
    authDomain: 'crypto-list-app-58d6e.firebaseapp.com',
    storageBucket: 'crypto-list-app-58d6e.appspot.com',
    measurementId: 'G-8YNXBWETC2',
  );
}
