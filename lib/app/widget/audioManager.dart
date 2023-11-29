// import 'package:assets_audio_player/assets_audio_player.dart';

// class AudioManager {
//   static final AudioManager _instance = AudioManager._internal();

//   factory AudioManager() {
//     return _instance;
//   }

//   AudioManager._internal();

//   final AssetsAudioPlayer _audioPlayer = AssetsAudioPlayer();
//   bool isPlaying = false;

//   // bool get isPlaying => _isPlaying;

//   void playMusic() {
//     _audioPlayer.open(Audio('images/home.mp3'),
//         autoStart: true, loopMode: LoopMode.single);
//     isPlaying = true;
//   }

//   void pauseMusic() {
//     _audioPlayer.pause();
//     isPlaying = false;
//   }
// }

import 'package:assets_audio_player/assets_audio_player.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();

  factory AudioManager() {
    return _instance;
  }

  AudioManager._internal();

  final AssetsAudioPlayer _audioPlayer = AssetsAudioPlayer();
  bool isPlaying = false;

  void init() {
    _audioPlayer.open(Audio('images/home.mp3'),
        autoStart: true, loopMode: LoopMode.single);
  }

  void playMusic() {
    _audioPlayer.play();
    isPlaying = true;
  }

  void pauseMusic() {
    _audioPlayer.pause();
    isPlaying = false;
  }
}
