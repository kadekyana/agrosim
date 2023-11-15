import 'package:agrosim/app/modules/Appbar/views/appbar_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/video_controller.dart';

class VideoView extends GetView<VideoController> {
  const VideoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarView(
        back: true,
      ),
      body: const Center(
        child: Text(
          'VideoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
