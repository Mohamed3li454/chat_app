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
    apiKey: 'AIzaSyBTt0QQ_ZRBa_f6Kclrg8wl2ff8uv1wips',
    appId: '1:117740830014:web:fb594c166d6b92746e006f',
    messagingSenderId: '117740830014',
    projectId: 'chat-app-7c749',
    authDomain: 'chat-app-7c749.firebaseapp.com',
    storageBucket: 'chat-app-7c749.appspot.com',
    measurementId: 'G-XXV8780ZNJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyARgJ2j5rLT5EymWYoLDaXfKXTlKM3Nn-o',
    appId: '1:117740830014:android:51568b5cb6dc7dc56e006f',
    messagingSenderId: '117740830014',
    projectId: 'chat-app-7c749',
    storageBucket: 'chat-app-7c749.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWSqQyBo9sxYmh5IgacC7lvLN0pEpFfE8',
    appId: '1:117740830014:ios:8e386b7700d2421f6e006f',
    messagingSenderId: '117740830014',
    projectId: 'chat-app-7c749',
    storageBucket: 'chat-app-7c749.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWSqQyBo9sxYmh5IgacC7lvLN0pEpFfE8',
    appId: '1:117740830014:ios:57d7a048cd0ea6b36e006f',
    messagingSenderId: '117740830014',
    projectId: 'chat-app-7c749',
    storageBucket: 'chat-app-7c749.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
