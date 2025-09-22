import 'package:flutter/material.dart';

class PhotosTopBar extends StatelessWidget {
  final double scale;
  const PhotosTopBar({super.key, this.scale = 1});

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
                    'Photos',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20 * scale,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 8 * scale),
                    _IconDot(scale: scale),
                    SizedBox(width: 8 * scale),
                    _IconDot(scale: scale),
                    SizedBox(width: 8 * scale),
                    _IconDot(scale: scale),
                    SizedBox(width: 16 * scale),
                  ],
                ),
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
  const _IconDot({this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24 * scale,
      height: 24 * scale,
      alignment: Alignment.center,
      child: Text(
        '•',
        style: TextStyle(fontSize: 20 * scale, color: Colors.black),
      ),
    );
  }
}
