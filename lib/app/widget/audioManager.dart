import 'package:assets_audio_player/assets_audio_player.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();

  factory AudioManager() {
    return _instance;
  }

  AudioManager._internal();

  final AssetsAudioPlayer _audioPlayer = AssetsAudioPlayer();
  bool _isPlaying = false;

  bool get isPlaying => _isPlaying;

  void playMusic() {
    _audioPlayer.open(Audio('images/tes.mp3'),
        autoStart: true, loopMode: LoopMode.single);
    _isPlaying = true;
  }

  void pauseMusic() {
    _audioPlayer.pause();
    _isPlaying = false;
  }
}
