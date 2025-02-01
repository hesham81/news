import 'package:flutter/material.dart';

extension alignment on Widget {
  Widget topLeft() => Align(
        alignment: Alignment.topLeft,
        child: this,
      );

  Widget topRight() => Align(
        alignment: Alignment.topRight,
        child: this,
      );

  Widget bottomLeft() => Align(
        alignment: Alignment.bottomLeft,
        child: this,
      );

  Widget bottomRight() => Align(
        alignment: Alignment.bottomRight,
        child: this,
      );

  Widget center() => Align(
        alignment: Alignment.center,
        child: this,
      );

  Widget centerLeft() => Align(
        alignment: Alignment.centerLeft,
        child: this,
      );

  Widget centerRight() => Align(
        alignment: Alignment.centerRight,
        child: this,
      );

  Widget topCenter() => Align(
        alignment: Alignment.topCenter,
        child: this,
      );

  Widget bottomCenter() => Align(
        alignment: Alignment.bottomCenter,
        child: this,
      );
}
