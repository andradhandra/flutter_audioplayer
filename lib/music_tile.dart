import 'package:flutter/material.dart';

class MusicTile extends StatefulWidget {
 MusicTile({
    Key? key,
  }) : super(key: key);

  @override
  _MusicTileState createState() => _MusicTileState();
}

class _MusicTileState extends State<MusicTile> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 80.0,
              maxWidth: 80.0,
            ),
            child: Image.network('https://upload.wikimedia.org/wikipedia/en/7/73/TULUS_SELF_TITLED_COVER_ALBUM.jpg'),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Music Title",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                "Music description",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey
                ),
              )
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              setState(() {
                isPlaying = !isPlaying;
              });
            }, 
            icon: isPlaying
              ? Icon(
                  Icons.pause_rounded,
                  size: 32.0,
                )
              : Icon(
                  Icons.play_arrow_rounded,
                  size: 32.0,
                )
          )
        ],
      ),
    );
  }
}