import 'package:flutter/material.dart';

class FilesStorageOverview extends StatelessWidget {
  final double scale;
  const FilesStorageOverview({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Storage Overview',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24 * scale,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12 * scale),
          Row(
            children: <Widget>[
              _StorageCard(
                title: 'Used Space',
                amount: '30 GB',
                delta: '+5 GB',
                scale: scale,
              ),
              SizedBox(width: 20 * scale),
              _StorageCard(
                title: 'Free Space',
                amount: '70 GB',
                delta: '-5 GB',
                scale: scale,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StorageCard extends StatelessWidget {
  final String title;
  final String amount;
  final String delta;
  final double scale;
  const _StorageCard({
    required this.title,
    required this.amount,
    required this.delta,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 120 * scale,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8 * scale),
          border: Border.all(color: Colors.black.withOpacity(0.1)),
        ),
        padding: EdgeInsets.all(16 * scale),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16 * scale,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 12 * scale),
            Text(
              amount,
              style: TextStyle(
                color: Colors.black,
                fontSize: 28 * scale,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 8 * scale),
            Text(
              delta,
              style: TextStyle(color: Colors.black54, fontSize: 16 * scale),
            ),
          ],
        ),
      ),
    );
  }
}
