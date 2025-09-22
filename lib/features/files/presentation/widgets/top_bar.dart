import 'package:flutter/material.dart';

class FilesTopBar extends StatelessWidget {
  final double scale;
  const FilesTopBar({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 72 * scale,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.12), blurRadius: 6),
        ],
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 24 * scale),
          SizedBox(
            height: 48 * scale,
            child: Row(
              children: <Widget>[
                SizedBox(width: 16 * scale),
                Expanded(
                  child: Text(
                    'Files Vault',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20 * scale,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 8 * scale),
                _IconDot(scale: scale),
                SizedBox(width: 8 * scale),
                _IconDot(scale: scale),
                SizedBox(width: 8 * scale),
                _IconDot(scale: scale),
                SizedBox(width: 16 * scale),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IconDot extends StatelessWidget {
  final double scale;
  const _IconDot({required this.scale});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24 * scale,
      height: 24 * scale,
      child: const Center(
        child: Text('•', style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
