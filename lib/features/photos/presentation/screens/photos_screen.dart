import 'package:flutter/material.dart';

import '../widgets/photos_widgets.dart';

class PhotosScreen extends StatelessWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double scale = size.width / 360.0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  PhotosTopBar(scale: scale),
                  SizedBox(height: 12 * scale),
                  PhotosQuickActions(scale: scale),
                  SizedBox(height: 12 * scale),
                  PhotosVaultSection(scale: scale),
                  PhotosHeroImage(scale: scale),
                  PhotosBottomButtons(scale: scale),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
