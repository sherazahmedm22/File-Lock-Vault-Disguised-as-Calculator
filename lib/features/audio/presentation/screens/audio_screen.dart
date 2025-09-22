import 'package:flutter/material.dart';

import '../widgets/audio_widgets.dart';

class AudioScreen extends StatelessWidget {
  const AudioScreen({super.key});

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
              AudioTopBar(scale: scale),
              SizedBox(height: 12 * scale),
              AudioListSection(scale: scale),
              SizedBox(height: 12 * scale),
              AudioOutlinedButton(label: 'Add', scale: scale),
              SizedBox(height: 12 * scale),
              AudioPrimaryButton(label: 'Lock Vault', scale: scale),
              SizedBox(height: 12 * scale),
              AudioPrimaryButton(label: 'Record New Audio', scale: scale),
              SizedBox(height: 16 * scale),
            ],
          ),
        ),
      ),
    );
  }
}
