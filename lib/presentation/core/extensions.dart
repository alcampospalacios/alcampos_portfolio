import 'package:flutter/material.dart';

class Breakpoint {
  static const double sm = 500; // Small Mobile
  static const double md = 600; // Tablet
  static const double lg = 990; // Desktop
  static const double xl = 1240; // Large-desktop
  static const double xxl = 1440; // Extra extra large
}

extension MediaQueryValues on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
}

extension ContextEx on BuildContext {
  bool get isMobile => width <= Breakpoint.md;

  bool get isTablet => width < Breakpoint.lg && width >= Breakpoint.md;

  bool get isTabletOrLarger => width >= Breakpoint.md;

  bool get isDesktop => width >= Breakpoint.lg;

  //Orientation
  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;

  bool get isLandscape =>
      MediaQuery.of(this).orientation == Orientation.landscape;

  bool get isKeyboardVisible => MediaQuery.of(this).viewInsets.bottom > 100;
}

extension ContextSize on BuildContext {
  // responsive height (movile or tablet)
  double respWidgetH(movile, [tablet]) => tablet != null
      ? (isTablet ? respH * tablet : respH * movile)
      : respH * movile;

  double respText(num refSize, [num? tablet]) {
    num refSizeTemp = isTablet && tablet != null ? tablet : refSize;
    double unitHeightValue = respH * 0.001;
    double multiplier = 1.30;
    double value = (refSizeTemp * unitHeightValue) * multiplier;
    if ((refSizeTemp - value) > 1.5) {
      value = refSizeTemp - 1.5;
    }
    return value >= 11 ? value : 11;
  }

  double get respH => (isPortrait ? height : width);

  double get respW => (isPortrait ? width : height);
}

extension EnumToString on Enum {
  String toStr() => toString().split('.')[1].capitalizeString();
}

extension CapitalizeString on String {
  String capitalizeString() =>
      (length > 0) ? "${this[0].toUpperCase()}${substring(1)}" : '';
}
