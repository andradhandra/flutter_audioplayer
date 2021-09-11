import 'package:flutter/material.dart';

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
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(flex: 2),
          IconButton(
            onPressed: () {
              print('Previous');
            }, 
            icon: Icon(
              Icons.skip_previous_rounded,
              size: 32.0,
            )
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              print('Previous');
            }, 
            icon: Icon(
              Icons.play_arrow_rounded,
              size: 40.0,
            )
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              print('Previous');
            }, 
            icon: Icon(
              Icons.skip_next_rounded,
              size: 32.0,
            )
          ),
          Spacer(flex: 2)
        ],
      ),
      decoration: BoxDecoration(
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