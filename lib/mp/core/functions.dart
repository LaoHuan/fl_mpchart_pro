import 'package:fl_mpchart_pro/mp/controller/bar_line_scatter_candle_bubble_controller.dart';
import 'package:fl_mpchart_pro/mp/controller/controller.dart';
import 'package:fl_mpchart_pro/mp/core/axis/x_axis.dart';
import 'package:fl_mpchart_pro/mp/core/axis/y_axis.dart';
import 'package:fl_mpchart_pro/mp/core/legend/legend.dart';
import 'package:fl_mpchart_pro/mp/core/render/data_renderer.dart';

typedef XAxisSettingFunction = void Function(
    XAxis xAxis, Controller controller);
typedef LegendSettingFunction = void Function(
    Legend legend, Controller controller);
typedef AxisLeftSettingFunction = void Function(
    YAxis axisLeft, BarLineScatterCandleBubbleController controller);
typedef AxisRightSettingFunction = void Function(
    YAxis axisRight, BarLineScatterCandleBubbleController controller);
typedef DataRendererSettingFunction = void Function(DataRenderer renderer);
