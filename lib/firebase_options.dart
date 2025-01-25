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
    apiKey: 'AIzaSyCSIKP0FBzKkuLeA7agzmexoUN3Sbp4CkU',
    appId: '1:455848217362:web:768dc2f87386db373281cb',
    messagingSenderId: '455848217362',
    projectId: 'lab8-032',
    authDomain: 'lab8-032.firebaseapp.com',
    storageBucket: 'lab8-032.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2F9nK0rKMrZLPJwfSaEkwV4SO45-6yEg',
    appId: '1:455848217362:android:fa26de2de76329d93281cb',
    messagingSenderId: '455848217362',
    projectId: 'lab8-032',
    storageBucket: 'lab8-032.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKMCSq2tM03x70QS8A0-PiXU33KRBC6Nc',
    appId: '1:455848217362:ios:1e450c5742ea201f3281cb',
    messagingSenderId: '455848217362',
    projectId: 'lab8-032',
    storageBucket: 'lab8-032.firebasestorage.app',
    iosClientId: '455848217362-7jvb5heni24hdguiqp3pvmc5hern8eha.apps.googleusercontent.com',
    iosBundleId: 'com.example.lab8032',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKMCSq2tM03x70QS8A0-PiXU33KRBC6Nc',
    appId: '1:455848217362:ios:1e450c5742ea201f3281cb',
    messagingSenderId: '455848217362',
    projectId: 'lab8-032',
    storageBucket: 'lab8-032.firebasestorage.app',
    iosClientId: '455848217362-7jvb5heni24hdguiqp3pvmc5hern8eha.apps.googleusercontent.com',
    iosBundleId: 'com.example.lab8032',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCSIKP0FBzKkuLeA7agzmexoUN3Sbp4CkU',
    appId: '1:455848217362:web:1a830cc832c8a50b3281cb',
    messagingSenderId: '455848217362',
    projectId: 'lab8-032',
    authDomain: 'lab8-032.firebaseapp.com',
    storageBucket: 'lab8-032.firebasestorage.app',
  );
}
