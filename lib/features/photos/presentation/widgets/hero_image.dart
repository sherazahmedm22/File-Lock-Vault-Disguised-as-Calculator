import 'package:flutter/material.dart';

class PhotosHeroImage extends StatelessWidget {
  final double scale;
  const PhotosHeroImage({super.key, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12 * scale),
      child: SizedBox(
        height: 360 * scale,
        child: Row(
          children: <Widget>[
            SizedBox(width: 12 * scale),
            Expanded(
              child: Container(
                height: 360 * scale,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(6 * scale),
                ),
                child: Stack(
                  children: <Widget>[
                    // Center title
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16 * scale),
                        child: Text(
                          'Featured Album',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14 * scale,
                          ),
                        ),
                      ),
                    ),
                    // Pagination bottom center
                    Positioned(
                      bottom: 12 * scale,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _PagerDot(
                            width: 20 * scale,
                            active: true,
                            scale: scale,
                          ),
                          SizedBox(width: 4 * scale),
                          _PagerDot(width: 4 * scale, scale: scale),
                          SizedBox(width: 4 * scale),
                          _PagerDot(width: 4 * scale, scale: scale),
                          SizedBox(width: 4 * scale),
                          _PagerDot(width: 4 * scale, scale: scale),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 12 * scale),
          ],
        ),
      ),
    );
  }
}

class _PagerDot extends StatelessWidget {
  final double width;
  final bool active;
  final double scale;
  const _PagerDot({this.width = 4, this.active = false, this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 4 * scale,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(100 * scale),
      ),
    );
  }
}
