import 'package:flutter/material.dart';

class PhotosBottomButtons extends StatelessWidget {
  final double scale;
  const PhotosBottomButtons({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8 * scale),
      child: Column(
        children: <Widget>[
          _SecondaryButton(label: 'Sync', scale: scale),
          SizedBox(height: 8 * scale),
          _SecondaryButton(label: 'Import to Vault', scale: scale),
        ],
      ),
    );
  }
}

class _SecondaryButton extends StatelessWidget {
  final String label;
  final double scale;
  const _SecondaryButton({required this.label, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Container(
        height: 42 * scale,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8 * scale),
          border: Border.all(color: Colors.black),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 18 * scale),
        ),
      ),
    );
  }
}
