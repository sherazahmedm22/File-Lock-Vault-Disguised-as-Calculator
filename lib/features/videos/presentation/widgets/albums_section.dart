import 'package:flutter/material.dart';

class VideosAlbumsSection extends StatelessWidget {
  final double scale;
  const VideosAlbumsSection({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * scale),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'My Albums',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24 * scale,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  '+',
                  style: TextStyle(color: Colors.black, fontSize: 20 * scale),
                ),
              ],
            ),
          ),
          SizedBox(height: 8 * scale),
          _AlbumRow(
            title: 'Summer Vacation',
            subtitle: '10 Photos',
            emoji: '🎉',
            scale: scale,
          ),
          const _DividerLine(),
          _AlbumRow(
            title: 'Birthday Celebrations',
            subtitle: '15 Photos',
            emoji: '🎂',
            scale: scale,
          ),
          const _DividerLine(),
        ],
      ),
    );
  }
}

class _AlbumRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String emoji;
  final double scale;

  const _AlbumRow({
    required this.title,
    required this.subtitle,
    required this.emoji,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: SizedBox(
        height: 56 * scale,
        child: Row(
          children: <Widget>[
            Container(
              width: 32 * scale,
              height: 32 * scale,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16 * scale),
              ),
              alignment: Alignment.center,
              child: Text(emoji),
            ),
            SizedBox(width: 8 * scale),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20 * scale,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2 * scale),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16 * scale,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '+',
              style: TextStyle(color: Colors.black, fontSize: 20 * scale),
            ),
          ],
        ),
      ),
    );
  }
}

class _DividerLine extends StatelessWidget {
  const _DividerLine();
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Divider(height: 1, color: Colors.black12),
    );
  }
}
