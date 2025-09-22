import 'package:flutter/material.dart';

class DocumentsFileTypes extends StatelessWidget {
  final double scale;
  const DocumentsFileTypes({super.key, this.scale = 1});

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
              _TypeChip(label: 'DOCX', emoji: '📄', scale: scale),
              SizedBox(width: 12 * scale),
              _TypeChip(label: 'XLS', emoji: '📊', scale: scale),
            ],
          ),
          SizedBox(height: 12 * scale),
          _TypeChip(label: 'PDF', emoji: '📚', scale: scale, expand: true),
        ],
      ),
    );
  }
}

class _TypeChip extends StatelessWidget {
  final String label;
  final String emoji;
  final bool expand;
  final double scale;
  const _TypeChip({
    required this.label,
    required this.emoji,
    this.expand = false,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    final Widget chip = Container(
      height: 80 * scale,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8 * scale),
        border: Border.all(color: Colors.black.withOpacity(0.1)),
      ),
      child: Row(
        children: <Widget>[
          SizedBox(width: 16 * scale),
          Container(
            width: 48 * scale,
            height: 48 * scale,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(24 * scale),
            ),
            alignment: Alignment.center,
            child: Text(emoji),
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
          SizedBox(width: 12 * scale),
        ],
      ),
    );

    if (expand) {
      return chip;
    }
    return Expanded(child: chip);
  }
}
