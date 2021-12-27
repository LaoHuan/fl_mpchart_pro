import 'package:fl_mpchart_pro/mp/core/data_interfaces/i_line_data_set.dart';
import 'package:fl_mpchart_pro/mp/core/data_provider/line_data_provider.dart';

mixin IFillFormatter {
  double getFillLinePosition(
      ILineDataSet dataSet, LineDataProvider? dataProvider);
}
