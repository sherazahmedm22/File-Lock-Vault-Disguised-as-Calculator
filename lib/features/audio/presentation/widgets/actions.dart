import 'package:flutter/material.dart';

class AudioOutlinedButton extends StatelessWidget {
  final String label;
  final double scale;
  const AudioOutlinedButton({super.key, required this.label, this.scale = 1});

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

class AudioPrimaryButton extends StatelessWidget {
  final String label;
  final double scale;
  const AudioPrimaryButton({super.key, required this.label, this.scale = 1});

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
          label,
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
