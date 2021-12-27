import 'package:fl_mpchart_pro/mp/core/view_port.dart';

abstract class Renderer {
  /// the component that handles the drawing area of the chart and it's offsets
  ViewPortHandler? _viewPortHandler;

  Renderer(this._viewPortHandler);

  // ignore: unnecessary_getters_setters
  ViewPortHandler? get viewPortHandler => _viewPortHandler;

  // ignore: unnecessary_getters_setters
  set viewPortHandler(ViewPortHandler? value) {
    _viewPortHandler = value;
  }
}
