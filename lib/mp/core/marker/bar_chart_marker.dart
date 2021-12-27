import 'dart:ui';

import 'package:fl_mpchart_pro/mp/core/marker/line_chart_marker.dart';

class BarChartMarker extends LineChartMarker {
  BarChartMarker({Color? textColor, Color? backColor, double? fontSize})
      : super(textColor: textColor, backColor: backColor, fontSize: fontSize);

  @override
  Offset calculatePos(double posX, double posY, double textW, double textH) {
    return Offset(posX - textW / 2, posY - textH * 2);
  }
}
