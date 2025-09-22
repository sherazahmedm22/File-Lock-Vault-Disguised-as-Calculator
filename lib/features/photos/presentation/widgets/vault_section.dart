import 'package:flutter/material.dart';

class PhotosVaultSection extends StatelessWidget {
  final double scale;
  const PhotosVaultSection({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12 * scale),
      child: Column(
        children: <Widget>[
          _SectionHeader(title: 'Vault', showPlus: true, scale: scale),
          _VaultItem(
            icon: '🖼',
            title: 'All Photos',
            subtitle: '2,451 items',
            scale: scale,
          ),
          _DividerLine(scale: scale),
          _VaultItem(
            icon: '📸',
            title: 'Camera',
            subtitle: '1,023 items',
            scale: scale,
          ),
          _DividerLine(scale: scale),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final bool showPlus;
  final double scale;
  const _SectionHeader({
    required this.title,
    this.showPlus = false,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: SizedBox(
        height: 40 * scale,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16 * scale,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            if (showPlus)
              Text(
                '+',
                style: TextStyle(color: Colors.black, fontSize: 20 * scale),
              ),
            SizedBox(width: 12 * scale),
          ],
        ),
      ),
    );
  }
}

class _VaultItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final double scale;
  const _VaultItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.scale = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: SizedBox(
        height: 60 * scale,
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
              child: Text(icon),
            ),
            SizedBox(width: 8 * scale),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 16 * scale),
                  ),
                  SizedBox(height: 2 * scale),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 12 * scale,
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
  final double scale;
  const _DividerLine({this.scale = 1});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12 * scale),
      child: const Divider(height: 1, color: Colors.black12),
    );
  }
}
