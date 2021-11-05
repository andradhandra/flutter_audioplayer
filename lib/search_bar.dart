import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/provider/music_provider.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    this.padding = const EdgeInsets.all(8.0)
  }) : super(key: key);

  final EdgeInsets padding;

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController searchBarController = TextEditingController();
  
  // void searchMusic(String val) async {
  //   MusicProvider provider = Provider.of<MusicProvider>(context, listen: false);
  //   provider.changeTerm(val);
  //   await provider.fetchMusicList();
  // }

  @override
  void dispose() {
    searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextField(
        controller: searchBarController,
        // onSubmitted: searchMusic,
        decoration: InputDecoration(
          hintText: 'Search',
          prefixIcon: Icon(Icons.search_rounded),
          suffixIcon: IconButton(
            onPressed: () {
              searchBarController.clear();
            },
            icon: Icon(Icons.clear_rounded)
          )
        ),
      ),
    );
  }
}