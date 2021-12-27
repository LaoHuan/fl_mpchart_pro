import 'dart:ui';

import 'package:fl_mpchart_pro/mp/core/data/chart_data.dart';
import 'package:fl_mpchart_pro/mp/core/poolable/point.dart';
import 'package:fl_mpchart_pro/mp/core/value_formatter/value_formatter.dart';

mixin ChartInterface {
  /// Returns the minimum y value of the chart, regardless of zoom or translation.
  ///
  /// @return
  double? getYChartMin();

  /// Returns the maximum y value of the chart, regardless of zoom or translation.
  ///
  /// @return
  double? getYChartMax();

  /// Returns the maximum distance in scren dp a touch can be away from an entry to cause it to get highlighted.
  ///
  /// @return
  double? getMaxHighlightDistance();

  MPPointF getCenter(Size size);

  MPPointF getCenterOffsets();

  ValueFormatter getDefaultValueFormatter();

  int getMaxVisibleCount();

  ChartData? getData();
}
