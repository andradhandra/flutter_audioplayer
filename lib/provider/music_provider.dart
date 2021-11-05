import 'package:flutter_audioplayer/model/music_list_model.dart';
import 'package:flutter_audioplayer/model/now_playing_model.dart';
import 'package:flutter_audioplayer/service/network_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';

final musicListProvider =
    StateNotifierProvider<MusicProvider, AsyncValue<MusicListModel>>((ref) => MusicProvider());
MusicListModel musicListModel = MusicListModel();
NowPlayingModel nowPlayingModel = NowPlayingModel();

class MusicProvider extends StateNotifier<AsyncValue<MusicListModel>> {
  MusicProvider() : super(AsyncLoading()) {
    _init();
  }

  String? term;
  final player = AudioPlayer();

  void _init() {
    state = AsyncData(MusicListModel());
  }

  Future<MusicListModel> fetchMusicList() async {
    try {
      final Uri typesUrl = Uri.parse(
          'https://itunes.apple.com/search?entity=song&term=${term ?? "cinta"}&limit=30');
      NetworkHelper getMusic = NetworkHelper(typesUrl);
      var response = await getMusic.getData();
      musicListModel = MusicListModel.fromJson(response);
      // notifyListeners();
      return musicListModel;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  void playMusic({
    index,
  }) async {
    if (index != null && index != nowPlayingModel.songIndex) {
      nowPlayingModel.songIndex = index;
      nowPlayingModel.isPlaying = false;
      await player.stop();
    }
    nowPlayingModel.isPlaying = !nowPlayingModel.isPlaying;
    // notifyListeners();

    try {
      await player.setUrl(
          musicListModel.results?[nowPlayingModel.songIndex]?.previewUrl ?? '');
      if (nowPlayingModel.isPlaying) {
        player.play();
      } else {
        await player.pause();
      }
    } catch (e) {
      print(e);
    }
  }

  void previousSong() async {
    if (nowPlayingModel.songIndex > 0) {
      nowPlayingModel.isPlaying = false;
      await player.stop();
      nowPlayingModel.songIndex -= 1;
      playMusic(index: nowPlayingModel.songIndex);
    }
  }

  void nextSong() async {
    if (nowPlayingModel.songIndex < (musicListModel.resultCount ?? -1)) {
      nowPlayingModel.isPlaying = false;
      await player.stop();
      nowPlayingModel.songIndex += 1;
      playMusic(index: nowPlayingModel.songIndex);
    }
  }

  void changeTerm(String newTerm) {
    term = newTerm;
    // notifyListeners();
  }
}
