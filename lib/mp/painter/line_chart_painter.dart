import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:fl_mpchart_pro/mp/core/animator.dart';
import 'package:fl_mpchart_pro/mp/core/axis/x_axis.dart';
import 'package:fl_mpchart_pro/mp/core/axis/y_axis.dart';
import 'package:fl_mpchart_pro/mp/core/common_interfaces.dart';
import 'package:fl_mpchart_pro/mp/core/data/line_data.dart';
import 'package:fl_mpchart_pro/mp/core/data_provider/line_data_provider.dart';
import 'package:fl_mpchart_pro/mp/core/description.dart';
import 'package:fl_mpchart_pro/mp/core/functions.dart';
import 'package:fl_mpchart_pro/mp/core/legend/legend.dart';
import 'package:fl_mpchart_pro/mp/core/marker/i_marker.dart';
import 'package:fl_mpchart_pro/mp/core/render/legend_renderer.dart';
import 'package:fl_mpchart_pro/mp/core/render/line_chart_renderer.dart';
import 'package:fl_mpchart_pro/mp/core/render/x_axis_renderer.dart';
import 'package:fl_mpchart_pro/mp/core/render/y_axis_renderer.dart';
import 'package:fl_mpchart_pro/mp/core/chart_trans_listener.dart';
import 'package:fl_mpchart_pro/mp/core/transformer/transformer.dart';
import 'package:fl_mpchart_pro/mp/core/view_port.dart';
import 'package:fl_mpchart_pro/mp/painter/bar_line_chart_painter.dart';

class LineChartPainter extends BarLineChartBasePainter<LineData>
    implements LineDataProvider {
  LineChartPainter(
      LineData? data,
      Animator? animator,
      ViewPortHandler? viewPortHandler,
      double? maxHighlightDistance,
      bool highLightPerTapEnabled,
      double extraLeftOffset,
      double extraTopOffset,
      double extraRightOffset,
      double extraBottomOffset,
      IMarker? marker,
      Description? desc,
      bool drawMarkers,
      Color? infoBgColor,
      TextPainter? infoPainter,
      TextPainter? descPainter,
      XAxis? xAxis,
      Legend? legend,
      LegendRenderer? legendRenderer,
      DataRendererSettingFunction? rendererSettingFunction,
      OnChartValueSelectedListener? selectedListener,
      int maxVisibleCount,
      bool autoScaleMinMaxEnabled,
      bool pinchZoomEnabled,
      bool doubleTapToZoomEnabled,
      bool highlightPerDragEnabled,
      bool dragXEnabled,
      bool dragYEnabled,
      bool scaleXEnabled,
      bool scaleYEnabled,
      Paint? gridBackgroundPaint,
      Paint? backgroundPaint,
      Paint? borderPaint,
      bool drawGridBackground,
      bool drawBorders,
      bool clipValuesToContent,
      double minOffset,
      bool keepPositionOnRotation,
      OnDrawListener? drawListener,
      YAxis? axisLeft,
      YAxis? axisRight,
      YAxisRenderer? axisRendererLeft,
      YAxisRenderer? axisRendererRight,
      Transformer? leftAxisTransformer,
      Transformer? rightAxisTransformer,
      XAxisRenderer? xAxisRenderer,
      Matrix4? zoomMatrixBuffer,
      bool customViewPortEnabled,
      ChartTransListener? chartTransListener)
      : super(
            data,
            animator,
            viewPortHandler,
            maxHighlightDistance,
            highLightPerTapEnabled,
            extraLeftOffset,
            extraTopOffset,
            extraRightOffset,
            extraBottomOffset,
            marker,
            desc,
            drawMarkers,
            infoBgColor,
            infoPainter,
            descPainter,
            xAxis,
            legend,
            legendRenderer,
            rendererSettingFunction,
            selectedListener,
            maxVisibleCount,
            autoScaleMinMaxEnabled,
            pinchZoomEnabled,
            doubleTapToZoomEnabled,
            highlightPerDragEnabled,
            dragXEnabled,
            dragYEnabled,
            scaleXEnabled,
            scaleYEnabled,
            gridBackgroundPaint,
            borderPaint,
            drawGridBackground,
            drawBorders,
            clipValuesToContent,
            minOffset,
            keepPositionOnRotation,
            drawListener,
            axisLeft,
            axisRight,
            axisRendererLeft,
            axisRendererRight,
            leftAxisTransformer,
            rightAxisTransformer,
            xAxisRenderer,
            zoomMatrixBuffer,
            customViewPortEnabled,
            backgroundPaint,
            chartTransListener);

  @override
  void initDefaultWithData() {
    super.initDefaultWithData();
    renderer = LineChartRenderer(this, animator, viewPortHandler);
  }

  @override
  LineData? getLineData() {
    return getData() as LineData?;
  }
}
