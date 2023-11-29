import 'package:agrosim/app/modules/BottomBar/views/bottom_bar_view.dart';
import 'package:agrosim/app/widget/audioManager.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/appbar_controller.dart';

class AppbarView extends StatefulWidget implements PreferredSizeWidget {
  final bool back;
  final VoidCallback? data;
  AppbarView({Key? key, required this.back, required this.data})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  State<AppbarView> createState() => _AppbarViewState();
}

class _AppbarViewState extends State<AppbarView> {
  final AudioManager audioManager = AudioManager();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffEBE4D1),
      automaticallyImplyLeading: widget.back,
      leading: widget.back
          ? IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xffE53E34),
              ),
              onPressed: widget.data)
          : null,
      centerTitle: true,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            if (audioManager.isPlaying) {
              audioManager.pauseMusic();
            } else {
              audioManager.playMusic();
            }
          },
          icon: Icon(
            Icons.volume_up_outlined,
            color: Color(0xffE53E34),
          ),
        ),
      ],
      title: Text(
        'AGROSIM',
        style: GoogleFonts.alfaSlabOne(color: Color(0xffE53E34)),
      ),
    );
  }
}
