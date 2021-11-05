import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/model/music_list_model.dart';
import 'package:flutter_audioplayer/provider/music_provider.dart';

class MusicTile extends StatefulWidget {
 MusicTile({
    Key? key,
    @required this.songIndex,
    @required this.musicModel
  }) : super(key: key);

  final int? songIndex;
  final MusicModel? musicModel;

  @override
  _MusicTileState createState() => _MusicTileState();
}

class _MusicTileState extends State<MusicTile> {
  @override
  Widget build(BuildContext context) {
    // MusicProvider provider = Provider.of<MusicProvider>(context, listen: false);
    return Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 80.0,
              maxWidth: 80.0,
            ),
            child: Image.network(
              widget.musicModel?.artworkUrl60 ?? 'http://bprpedungan.com/wp-content/uploads/2017/08/Person-placeholder.jpg'
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    widget.musicModel?.trackName ?? 'No title available',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600
                    ),
                    overflow: TextOverflow.fade,
                    softWrap: false,
                    maxLines: 1,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  widget.musicModel?.collectionName ?? 'No album available',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          // IconButton(
          //   onPressed: () {
          //     provider.playMusic(index: widget.songIndex);
          //   }, 
          //   icon: provider.nowPlayingModel.isPlaying && provider.nowPlayingModel.songIndex == widget.songIndex
          //     ? Icon(
          //         Icons.pause_rounded,
          //         size: 32.0,
          //       )
          //     : Icon(
          //         Icons.play_arrow_rounded,
          //         size: 32.0,
          //       )
          // )
        ],
      ),
    );
  }
}