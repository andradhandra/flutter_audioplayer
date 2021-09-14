import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/provider/music_provider.dart';
import 'package:provider/provider.dart';

class MusicController extends StatefulWidget {
  const MusicController({
    Key? key,
  }) : super(key: key);

  @override
  _MusicControllerState createState() => _MusicControllerState();
}

class _MusicControllerState extends State<MusicController> {
  @override
  Widget build(BuildContext context) {
    MusicProvider provider = Provider.of<MusicProvider>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(flex: 2),
          IconButton(
            onPressed: provider.nowPlayingModel.songIndex <= 0
              ? null
              : provider.previousSong, 
            icon: Icon(
              Icons.skip_previous_rounded,
              size: 32.0,
            )
          ),
          Spacer(),
          IconButton(
            onPressed: provider.playMusic, 
            icon: provider.nowPlayingModel.isPlaying 
              ? Icon(
                  Icons.pause_rounded,
                  size: 40.0,
                )
              : Icon(
                  Icons.play_arrow_rounded,
                  size: 40,
                )
          ),
          Spacer(),
          IconButton(
            onPressed: provider.nowPlayingModel.songIndex >= ((provider.musicListModel.resultCount ?? -1) - 1)
              ? null
              : provider.nextSong, 
            icon: Icon(
              Icons.skip_next_rounded,
              size: 32.0,
            )
          ),
          Spacer(flex: 2)
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.75),
        border: Border(
          top: BorderSide(
            width: 1.0,
            color: Colors.grey
          )
        )
      ),
    );
  }
}