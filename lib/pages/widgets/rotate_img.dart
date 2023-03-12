import 'dart:math' as math;

import 'package:flutter/material.dart';

class RotatingImage extends StatefulWidget {
  final String imageUrl;

  RotatingImage({required this.imageUrl});

  @override
  _RotatingImageState createState() => _RotatingImageState();
}

class _RotatingImageState extends State<RotatingImage> {
  double _rotation = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _rotation -= details.delta.dx * 0.01;
        });
      },
      child: Transform(
        transform: Matrix4.rotationY(_rotation),
        alignment: Alignment.center,
        child: Image.asset(widget.imageUrl),
      ),
    );
  }
}
