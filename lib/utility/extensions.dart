import 'package:flutter/material.dart';

extension PercentSize on double {
  double get hp => (MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height) * (this / 100);
  double get wp => (MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width) * (this / 100);
}

extension ResponsiveText on double {
  double get sp => ((MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width) / 100) * (this / 3);
}
