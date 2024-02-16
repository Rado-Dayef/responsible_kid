import 'package:flutter/material.dart';

class GapWidget extends StatelessWidget {
  final double size;

  const GapWidget(this.size);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
    );
  }
}
