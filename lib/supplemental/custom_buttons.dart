import 'package:flutter/material.dart';

class CircleImageButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final Image image;
  final Color backgroundColor;

  const CircleImageButton({
    Key key,
    this.onTap,
    this.image,
    this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 48.0;

    return InkResponse(
        onTap: onTap,
        child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.5, 1.5),
                      blurRadius: 2.0
                  )
                ]
            ),
            child: Center(
              child: image,
            )
        )
    );
  }
}