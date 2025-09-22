import 'package:flutter/material.dart';

class PhotosQuickActions extends StatelessWidget {
  final double scale;
  const PhotosQuickActions({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Column(
        children: <Widget>[
          _SectionTitle(text: 'Quick Actions', scale: scale),
          SizedBox(height: 8 * scale),
          _ChipRow(
            leftIcon: '🔍',
            leftText: 'Search',
            rightIcon: '⚙️',
            rightText: 'Filter',
            scale: scale,
          ),
          SizedBox(height: 8 * scale),
          _ChipRow(
            leftIcon: '↕️',
            leftText: 'Sort',
            rightIcon: '📁',
            rightText: 'Albums',
            scale: scale,
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String text;
  final double scale;
  const _SectionTitle({required this.text, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16 * scale,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _ChipRow extends StatelessWidget {
  final String leftIcon;
  final String leftText;
  final String rightIcon;
  final String rightText;
  final double scale;

  const _ChipRow({
    required this.leftIcon,
    required this.leftText,
    required this.rightIcon,
    required this.rightText,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _ActionChip(icon: leftIcon, text: leftText, scale: scale),
        SizedBox(width: 8 * scale),
        _ActionChip(icon: rightIcon, text: rightText, scale: scale),
      ],
    );
  }
}

class _ActionChip extends StatelessWidget {
  final String icon;
  final String text;
  final double scale;
  const _ActionChip({required this.icon, required this.text, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56 * scale,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6 * scale),
          border: Border.all(color: Colors.black.withOpacity(0.1)),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 12 * scale),
            Container(
              width: 32 * scale,
              height: 32 * scale,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16 * scale),
              ),
              alignment: Alignment.center,
              child: Text(icon),
            ),
            SizedBox(width: 8 * scale),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: Colors.black, fontSize: 16 * scale),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
