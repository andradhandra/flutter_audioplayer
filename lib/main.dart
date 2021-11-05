import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/home.dart';
import 'package:flutter_audioplayer/provider/music_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: SimpleAudioPlayer()));
}

class SimpleAudioPlayer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Audio Player',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Home(),
    );
  }
}
