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
    apiKey: 'AIzaSyCaZ7TgrXgWIvpeHRMi5Q9JN32n2W2BolE',
    appId: '1:251050965507:web:2d6e85488ef4c3eb41ec36',
    messagingSenderId: '251050965507',
    projectId: 'flash-chat-bloc-2a61f',
    authDomain: 'flash-chat-bloc-2a61f.firebaseapp.com',
    storageBucket: 'flash-chat-bloc-2a61f.appspot.com',
    measurementId: 'G-0MVW9ESVLG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDI3wjvK0OhJaeKZdMf-RPIha8jl0iEvi8',
    appId: '1:251050965507:android:6e4dbd5fa918558b41ec36',
    messagingSenderId: '251050965507',
    projectId: 'flash-chat-bloc-2a61f',
    storageBucket: 'flash-chat-bloc-2a61f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDX9iJy3LwHBWrgiflXLZjEXLSjtD1hAXQ',
    appId: '1:251050965507:ios:150c8e811e68601841ec36',
    messagingSenderId: '251050965507',
    projectId: 'flash-chat-bloc-2a61f',
    storageBucket: 'flash-chat-bloc-2a61f.appspot.com',
    iosBundleId: 'com.example.flashChatWithBloc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDX9iJy3LwHBWrgiflXLZjEXLSjtD1hAXQ',
    appId: '1:251050965507:ios:7b61d77f5216552541ec36',
    messagingSenderId: '251050965507',
    projectId: 'flash-chat-bloc-2a61f',
    storageBucket: 'flash-chat-bloc-2a61f.appspot.com',
    iosBundleId: 'com.example.flashChatWithBloc.RunnerTests',
  );
}