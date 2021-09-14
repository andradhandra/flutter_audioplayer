# flutter_audioplayer
Simple Flutter audioplayer app for job recruitment test

## Supported Devices
This app supports: 
  - Android from Android 4.1 (Jelly Bean) and beyond
  - iOS from iOS 9 and beyond

## Supported Features
Features:
  - Streaming audio from <a href="https://affiliate.itunes.apple.com/resources/documentation/itunes-store-web-service-search-api">iTunes Affiliate API</a>
  - Play, pause, and skip song
  - Search song

## Requirenments
This app is made with flutter. Therefore need to follow flutter requirenemnts. For more details go to <a href="https://flutter.dev/">flutter.dev</a>

## Instructions
To run the app:
  - Make sure you already have flutter and dart SDK installed
  - To run apk in Android:
    - Make sure you have android emulator or android dveice connected to you computer
    - If using terminal run ```flutter run```
  - To run ipa in iOS:
    - Make sure you have iOS emulator or iOS device connected to your Mac.
    - In terminal, run ```flutter run```

To build the app
  - For Android:
    - Place key.properties in project adroid folder
    - Place ```uplaod-keystore.jks``` in project ```android/app``` folder
    - If using terminal, run ```flutter build apk```
  - For iOS:
    - Make sure you fill the app signing in Xcode project.
    - In terminal, run ```flutter build ipa```
