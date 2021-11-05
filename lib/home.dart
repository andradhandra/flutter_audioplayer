import 'package:flutter/material.dart';
import 'package:flutter_audioplayer/model/music_list_model.dart';
import 'package:flutter_audioplayer/music_controller.dart';
import 'package:flutter_audioplayer/music_tile.dart';
import 'package:flutter_audioplayer/provider/music_provider.dart';
import 'package:flutter_audioplayer/search_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<MusicListModel?>? musicList;

  // Future<void> loadData() async {
  //   musicList = context.read<MusicProvider>().fetchMusicList();
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple Audioplayer'),
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SearchBar(padding: EdgeInsets.symmetric(horizontal: 18)),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    "Current List",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10.0),
                Expanded(child: Consumer(
                  builder: (context, watch, child) {
                    return watch(musicListProvider).when(
                      data: (data) {
                        return ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(
                              bottom: 75.0, left: 18, right: 18),
                          itemCount: data.results?.length,
                          itemBuilder: (context, i) {
                            return MusicTile(
                              songIndex: i,
                              musicModel: data.results?[i],
                            );
                          },
                        );
                      },
                      loading: () => Center(child: CircularProgressIndicator()),
                      error: (e, stackTrace) => Center(child: Text(e.toString()))
                    );
                  },
                )
                    //   FutureBuilder (
                    //   future: musicList,
                    //   builder: (context, snapshot) {
                    //     if (snapshot.connectionState == ConnectionState.done) {
                    //       if (snapshot.hasError) return Center(child: Text("Cannot retrieve data. Please try again"));
                    //       return Consumer<MusicProvider>(
                    //         builder: (context, music, _) {
                    //           if (music.musicListModel.resultCount == 0) return Center(child: Text("No Music match search result"));
                    // return RefreshIndicator(
                    //   onRefresh: loadData,
                    //   child: ListView.builder(
                    //     shrinkWrap: true,
                    //     padding: EdgeInsets.only(
                    //       bottom: 75.0,
                    //       left: 18,
                    //       right: 18
                    //     ),
                    //     itemCount: music.musicListModel.results?.length,
                    //     itemBuilder: (context, i) {
                    //       return MusicTile(songIndex: i, musicModel: music.musicListModel.results?[i],);
                    //     },
                    //   ),
                    // );
                    //         }
                    //       );
                    //     } else return Center(child: CircularProgressIndicator());
                    //   },
                    // ),
                    ),
              ],
            ),
            // Consumer<MusicProvider>(
            //   builder: (context, music, _) {
            //     return AnimatedPositioned(
            //       duration: const Duration(milliseconds: 500),
            //       bottom: 0,
            //       height:  music.nowPlayingModel.isPlaying
            //         ? 70
            //         : 0,
            //       child: MusicController()
            //     );
            //   }
            // )
          ],
        )
        // bottomNavigationBar: MusicController(),
        );
  }
}
