import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/home.dart';
import 'package:flutter_audioplayer/provider/music_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(SimpleAudioPlayer());
}

class SimpleAudioPlayer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MusicProvider(),
      child: MaterialApp(
        title: 'Simple Flutter Audio Player',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: Home(),
      ) 
    );
  }
}
