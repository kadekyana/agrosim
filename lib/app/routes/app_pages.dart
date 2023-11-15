import 'package:get/get.dart';

import '../modules/Appbar/bindings/appbar_binding.dart';
import '../modules/Appbar/views/appbar_view.dart';
import '../modules/BottomBar/bindings/bottom_bar_binding.dart';
import '../modules/BottomBar/views/bottom_bar_view.dart';
import '../modules/Game/bindings/game_binding.dart';
import '../modules/Game/views/game_view.dart';
import '../modules/Home/bindings/home_binding.dart';
import '../modules/Home/views/home_view.dart';
import '../modules/Knowledge/bindings/knowledge_binding.dart';
import '../modules/Knowledge/views/knowledge_view.dart';
import '../modules/Komponen/bindings/komponen_binding.dart';
import '../modules/Komponen/views/komponen_view.dart';
import '../modules/Langkah/bindings/langkah_binding.dart';
import '../modules/Langkah/views/langkah_view.dart';
import '../modules/OnBoarding/bindings/on_boarding_binding.dart';
import '../modules/OnBoarding/views/on_boarding_view.dart';
import '../modules/Pengertian/bindings/pengertian_binding.dart';
import '../modules/Pengertian/views/pengertian_view.dart';
import '../modules/Simulation/bindings/simulation_binding.dart';
import '../modules/Simulation/views/simulation_view.dart';
import '../modules/Statistic/bindings/statistic_binding.dart';
import '../modules/Statistic/views/statistic_view.dart';
import '../modules/Video/bindings/video_binding.dart';
import '../modules/Video/views/video_view.dart';
import '../modules/VideoPlayer/bindings/video_player_binding.dart';
import '../modules/VideoPlayer/views/video_player_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => const OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.KNOWLEDGE,
      page: () => const KnowledgeView(),
      binding: KnowledgeBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO,
      page: () => VideoView(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: _Paths.SIMULATION,
      page: () => const SimulationView(),
      binding: SimulationBinding(),
    ),
    GetPage(
      name: _Paths.GAME,
      page: () => const GameView(),
      binding: GameBinding(),
    ),
    GetPage(
      name: _Paths.STATISTIC,
      page: () => const StatisticView(),
      binding: StatisticBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_BAR,
      page: () => BottomBarView(),
      binding: BottomBarBinding(),
    ),
    GetPage(
      name: _Paths.PENGERTIAN,
      page: () => const PengertianView(),
      binding: PengertianBinding(),
    ),
    GetPage(
      name: _Paths.KOMPONEN,
      page: () => KomponenView(),
      binding: KomponenBinding(),
    ),
    GetPage(
      name: _Paths.LANGKAH,
      page: () => LangkahView(),
      binding: LangkahBinding(),
    ),
    GetPage(
      name: _Paths.APPBAR,
      page: () => AppbarView(
        back: false,
      ),
      binding: AppbarBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_PLAYER,
      page: () => VideoPlayerView(
        videoUrl: '',
      ),
      binding: VideoPlayerBinding(),
    ),
  ];
}
