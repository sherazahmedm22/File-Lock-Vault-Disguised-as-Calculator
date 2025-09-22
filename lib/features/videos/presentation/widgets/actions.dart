import 'package:flutter/material.dart';

class VideosPrimaryAction extends StatelessWidget {
  final double scale;
  const VideosPrimaryAction({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Container(
        height: 56 * scale,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8 * scale),
        ),
        alignment: Alignment.center,
        child: Text(
          'Lock Vault',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22 * scale,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class VideosOutlinedAction extends StatelessWidget {
  final String label;
  final double scale;
  const VideosOutlinedAction({super.key, required this.label, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Container(
        height: 56 * scale,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8 * scale),
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22 * scale,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
