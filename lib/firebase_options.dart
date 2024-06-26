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
    apiKey: 'AIzaSyBd1thE7Ey8Mrtt-eQ4V9vHQ1ErJP0lvX8',
    appId: '1:745682396077:web:6fe0e421f007913275b724',
    messagingSenderId: '745682396077',
    projectId: 'uber-clone-e61fe',
    authDomain: 'uber-clone-e61fe.firebaseapp.com',
    storageBucket: 'uber-clone-e61fe.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDXAG4CZGjSSLyN5Vj2pH4twRiXLIjYpP4',
    appId: '1:745682396077:android:cd45dddc92b9f78275b724',
    messagingSenderId: '745682396077',
    projectId: 'uber-clone-e61fe',
    storageBucket: 'uber-clone-e61fe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMV1cT0vEeBevjkO7i5fh5oBXRIDf3eGg',
    appId: '1:745682396077:ios:5e659818b454fc8b75b724',
    messagingSenderId: '745682396077',
    projectId: 'uber-clone-e61fe',
    storageBucket: 'uber-clone-e61fe.appspot.com',
    iosBundleId: 'com.example.uberclone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMV1cT0vEeBevjkO7i5fh5oBXRIDf3eGg',
    appId: '1:745682396077:ios:5e659818b454fc8b75b724',
    messagingSenderId: '745682396077',
    projectId: 'uber-clone-e61fe',
    storageBucket: 'uber-clone-e61fe.appspot.com',
    iosBundleId: 'com.example.uberclone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBd1thE7Ey8Mrtt-eQ4V9vHQ1ErJP0lvX8',
    appId: '1:745682396077:web:ea70e4899d679bb075b724',
    messagingSenderId: '745682396077',
    projectId: 'uber-clone-e61fe',
    authDomain: 'uber-clone-e61fe.firebaseapp.com',
    storageBucket: 'uber-clone-e61fe.appspot.com',
  );

}