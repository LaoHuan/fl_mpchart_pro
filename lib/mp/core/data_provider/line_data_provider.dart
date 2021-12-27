import 'package:fl_mpchart_pro/mp/core/axis/y_axis.dart';
import 'package:fl_mpchart_pro/mp/core/data/line_data.dart';
import 'package:fl_mpchart_pro/mp/core/data_provider/bar_line_scatter_candle_bubble_data_provider.dart';
import 'package:fl_mpchart_pro/mp/core/enums/axis_dependency.dart';

mixin LineDataProvider implements BarLineScatterCandleBubbleDataProvider {
  LineData? getLineData();

  YAxis? getAxis(AxisDependency dependency);
}
