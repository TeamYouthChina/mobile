import 'dart:ui';
import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();

  static const Color loginGradientStart = const Color(0xFFE1F5FE);
  static const Color loginGradientEnd = const Color(0xFF0277BD);
//粉色 0xFFf7418c 肉色0xFFfbab66
  static const Color activecolor = const Color(0xFF303F9F);
  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
