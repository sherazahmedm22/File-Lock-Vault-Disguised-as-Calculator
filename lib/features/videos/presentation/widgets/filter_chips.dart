import 'package:flutter/material.dart';

class VideosFilterChips extends StatelessWidget {
  final double scale;
  const VideosFilterChips({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Filter By',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24 * scale,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 12 * scale),
          Row(
            children: <Widget>[
              _FilterChip(icon: '🏷️', label: 'Recently Added', scale: scale),
              SizedBox(width: 12 * scale),
              _FilterChip(icon: '⭐', label: 'Favorites', scale: scale),
            ],
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String icon;
  final String label;
  final double scale;
  const _FilterChip({required this.icon, required this.label, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56 * scale,
        decoration: BoxDecoration(
          color: Colors.white,
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
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.black, fontSize: 16 * scale),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
