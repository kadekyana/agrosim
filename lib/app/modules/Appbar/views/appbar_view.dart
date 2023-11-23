import 'package:agrosim/app/widget/audioManager.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/appbar_controller.dart';

class AppbarView extends StatefulWidget implements PreferredSizeWidget {
  final bool back;
  AppbarView({Key? key, required this.back}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  State<AppbarView> createState() => _AppbarViewState();
}

class _AppbarViewState extends State<AppbarView> {
  @override
  Widget build(BuildContext context) {
    AudioManager audioManager = AudioManager();

    return AppBar(
      backgroundColor: Color(0xffEBE4D1),
      automaticallyImplyLeading: widget.back,
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
            ))
      ],
      title: Text(
        'AGROSIM',
        style: GoogleFonts.alfaSlabOne(color: Color(0xffE53E34)),
      ),
    );
  }
}
