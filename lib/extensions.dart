import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  MediaQueryData get media => MediaQuery.of(this);

  bool get isTabletSize {
    return this.media.size.shortestSide >= 768;
  }
}
