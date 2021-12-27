import 'package:fl_mpchart_pro/mp/core/data/chart_data.dart';
import 'package:fl_mpchart_pro/mp/core/data_interfaces/i_bar_line_scatter_candle_bubble_data_set.dart';
import 'package:fl_mpchart_pro/mp/core/entry/entry.dart';

class BarLineScatterCandleBubbleData<
    T extends IBarLineScatterCandleBubbleDataSet<Entry>> extends ChartData<T> {
  BarLineScatterCandleBubbleData() : super();

  BarLineScatterCandleBubbleData.fromList(List<T> sets) : super.fromList(sets);
}
