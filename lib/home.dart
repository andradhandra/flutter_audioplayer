import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/music_controller.dart';
import 'package:flutter_audioplayer/music_tile.dart';
import 'package:flutter_audioplayer/search_bar.dart';

class Home extends StatelessWidget {
 Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Simple Audioplayer'
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SearchBar(
            padding: EdgeInsets.symmetric(horizontal: 18)
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              "Current List",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              children: [
                MusicTile(),
                MusicTile(),
                MusicTile(),
                MusicTile(),
                MusicTile(),
                MusicTile(),
                MusicTile(),
                MusicTile(),
                MusicTile(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: MusicController(),
    );
  }
}