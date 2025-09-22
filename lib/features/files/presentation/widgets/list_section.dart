import 'package:flutter/material.dart';

class FilesListSection extends StatelessWidget {
  final double scale;
  const FilesListSection({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * scale),
            child: Text(
              'Your Files',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24 * scale,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 12 * scale),
          _FileRow(
            title: 'Document1.pdf',
            subtitle: 'PDF Document',
            size: '2 MB',
            emoji: '📄',
            scale: scale,
          ),
          const _DividerLine(),
          _FileRow(
            title: 'Image1.png',
            subtitle: 'PNG Image',
            size: '500 KB',
            emoji: '🖼️',
            scale: scale,
          ),
          const _DividerLine(),
          _FileRow(
            title: 'Video.mp4',
            subtitle: 'MP4 Video',
            size: '15 MB',
            emoji: '📹',
            scale: scale,
          ),
          const _DividerLine(),
        ],
      ),
    );
  }
}

class _FileRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final String size;
  final String emoji;
  final double scale;
  const _FileRow({
    required this.title,
    required this.subtitle,
    required this.size,
    required this.emoji,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: SizedBox(
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
                  SizedBox(height: 2 * scale),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14 * scale,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              size,
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
