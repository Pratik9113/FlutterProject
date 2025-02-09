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
    apiKey: 'AIzaSyAulidIvsWkWoQB5GHM7y8sXulgiBN11sA',
    appId: '1:175543833376:web:5401d7caef8bd89b83fd45',
    messagingSenderId: '175543833376',
    projectId: 'fir-questit',
    authDomain: 'fir-questit.firebaseapp.com',
    storageBucket: 'fir-questit.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDttzfGDuW8aBctlRJ5b-RxMhQGRn5siXo',
    appId: '1:175543833376:android:abc1884d8d271ff983fd45',
    messagingSenderId: '175543833376',
    projectId: 'fir-questit',
    storageBucket: 'fir-questit.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyWCymXvi4NBKIxlPDhGtU2LaIfFZY5dw',
    appId: '1:175543833376:ios:15201bb813ca0c4383fd45',
    messagingSenderId: '175543833376',
    projectId: 'fir-questit',
    storageBucket: 'fir-questit.firebasestorage.app',
    iosBundleId: 'com.example.questit',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyWCymXvi4NBKIxlPDhGtU2LaIfFZY5dw',
    appId: '1:175543833376:ios:15201bb813ca0c4383fd45',
    messagingSenderId: '175543833376',
    projectId: 'fir-questit',
    storageBucket: 'fir-questit.firebasestorage.app',
    iosBundleId: 'com.example.questit',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAulidIvsWkWoQB5GHM7y8sXulgiBN11sA',
    appId: '1:175543833376:web:f8617b3c67822fa483fd45',
    messagingSenderId: '175543833376',
    projectId: 'fir-questit',
    authDomain: 'fir-questit.firebaseapp.com',
    storageBucket: 'fir-questit.firebasestorage.app',
  );
}
