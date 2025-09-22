import 'package:flutter/material.dart';

class AudioListSection extends StatelessWidget {
  final double scale;
  const AudioListSection({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'My Recordings',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24 * scale,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12 * scale),
          _AudioRow(
            title: 'Track 1',
            subtitle: 'Artist A',
            duration: '3:45',
            emoji: '🎵',
            scale: scale,
          ),
          const _DividerLine(),
          _AudioRow(
            title: 'Track 2',
            subtitle: 'Artist B',
            duration: '2:30',
            emoji: '🎤',
            scale: scale,
          ),
          const _DividerLine(),
          _AudioRow(
            title: 'Track 3',
            subtitle: 'Artist C',
            duration: '4:00',
            emoji: '🎼',
            scale: scale,
          ),
          const _DividerLine(),
        ],
      ),
    );
  }
}

class _AudioRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String duration;
  final String emoji;
  final double scale;
  const _AudioRow({
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.emoji,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72 * scale,
      child: Row(
        children: <Widget>[
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
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18 * scale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4 * scale),
                Text(
                  subtitle,
                  style: TextStyle(color: Colors.black54, fontSize: 14 * scale),
                ),
              ],
            ),
          ),
          Text(
            duration,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16 * scale,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 12 * scale),
          SizedBox(
            width: 24 * scale,
            child: const Center(child: Text('⋮')),
          ),
        ],
      ),
    );
  }
}

class _DividerLine extends StatelessWidget {
  const _DividerLine();
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Divider(height: 1, color: Colors.black12),
    );
  }
}
