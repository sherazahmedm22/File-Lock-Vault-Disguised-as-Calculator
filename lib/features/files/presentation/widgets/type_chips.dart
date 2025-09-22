import 'package:flutter/material.dart';

class FilesTypeChips extends StatelessWidget {
  final double scale;
  const FilesTypeChips({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'File Types',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24 * scale,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12 * scale),
          Row(
            children: <Widget>[
              _Chip(icon: '📄', label: 'Documents', scale: scale),
              SizedBox(width: 16 * scale),
              _Chip(icon: '🖼️', label: 'Images', scale: scale),
            ],
          ),
        ],
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String icon;
  final String label;
  final double scale;
  const _Chip({required this.icon, required this.label, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 72 * scale,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8 * scale),
          border: Border.all(color: Colors.black.withOpacity(0.1)),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 12 * scale),
            Container(
              width: 40 * scale,
              height: 40 * scale,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(20 * scale),
              ),
              alignment: Alignment.center,
              child: Text(icon),
            ),
            SizedBox(width: 12 * scale),
            Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18 * scale,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
