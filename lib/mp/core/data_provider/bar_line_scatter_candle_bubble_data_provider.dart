import 'package:fl_mpchart_pro/mp/core/data/bar_line_scatter_candle_bubble_data.dart';
import 'package:fl_mpchart_pro/mp/core/data_provider/chart_interface.dart';
import 'package:fl_mpchart_pro/mp/core/enums/axis_dependency.dart';
import 'package:fl_mpchart_pro/mp/core/transformer/transformer.dart';

mixin BarLineScatterCandleBubbleDataProvider implements ChartInterface {
  Transformer? getTransformer(AxisDependency axis);

  bool isInverted(AxisDependency axis);

  double getLowestVisibleX();

  double getHighestVisibleX();

  BarLineScatterCandleBubbleData? getData();
}
