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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCrBdZ6XQo5P_xeZWBAyaUyZ4_GOXeFcRI',
    appId: '1:816581674914:web:206027eaac8e83def954fb',
    messagingSenderId: '816581674914',
    projectId: 'easyhotel-9f8f5',
    authDomain: 'easyhotel-9f8f5.firebaseapp.com',
    storageBucket: 'easyhotel-9f8f5.appspot.com',
    measurementId: 'G-BHS88R8LWJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCCHTWYaKxh07vpp3olydxGLCzBPCV3bBM',
    appId: '1:816581674914:android:5f3224e0f9232398f954fb',
    messagingSenderId: '816581674914',
    projectId: 'easyhotel-9f8f5',
    storageBucket: 'easyhotel-9f8f5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC0wN-XOpWaqf9El5NEdPnnjySdvV3NOV4',
    appId: '1:816581674914:ios:b56387329c7062cef954fb',
    messagingSenderId: '816581674914',
    projectId: 'easyhotel-9f8f5',
    storageBucket: 'easyhotel-9f8f5.appspot.com',
    iosBundleId: '1',
  );
}
