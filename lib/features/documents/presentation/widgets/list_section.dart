import 'package:flutter/material.dart';

class DocumentsListSection extends StatelessWidget {
  final double scale;
  const DocumentsListSection({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * scale),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'My Documents',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24 * scale,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 6 * scale),
                Text(
                  'Access your files',
                  style: TextStyle(color: Colors.black54, fontSize: 14 * scale),
                ),
              ],
            ),
          ),
          SizedBox(height: 12 * scale),
          _DocRow(
            title: 'Project Report.docx',
            date: '2023-10-05',
            emoji: '📄',
            scale: scale,
          ),
          const _DividerLine(),
          _DocRow(
            title: 'Sales Data.xlsx',
            date: '2023-10-01',
            emoji: '📊',
            scale: scale,
          ),
          const _DividerLine(),
          _DocRow(
            title: 'User Manual.pdf',
            date: '2023-09-30',
            emoji: '📚',
            scale: scale,
          ),
          const _DividerLine(),
        ],
      ),
    );
  }
}

class _DocRow extends StatelessWidget {
  final String title;
  final String date;
  final String emoji;
  final double scale;
  const _DocRow({
    required this.title,
    required this.date,
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
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18 * scale,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              date,
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
