import 'package:flutter/material.dart';

import '../widgets/videos_widgets.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.of(context).size.width / 360.0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              VideosTopBar(scale: scale),
              SizedBox(height: 12 * scale),
              VideosFilterChips(scale: scale),
              SizedBox(height: 12 * scale),
              VideosAlbumsSection(scale: scale),
              VideosHeroVideo(scale: scale),
              SizedBox(height: 12 * scale),
              VideosPrimaryAction(scale: scale),
              SizedBox(height: 8 * scale),
              VideosOutlinedAction(label: 'Add', scale: scale),
              SizedBox(height: 8 * scale),
              VideosOutlinedAction(label: 'Hide Selected', scale: scale),
              SizedBox(height: 8 * scale),
              VideosOutlinedAction(label: 'Unhide Selected', scale: scale),
              SizedBox(height: 16 * scale),
            ],
          ),
        ),
      ),
    );
  }
}
