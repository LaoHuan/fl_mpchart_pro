
import 'dart:async';

import 'package:flutter/services.dart';

class FlMpchartPro {
  static const MethodChannel _channel = MethodChannel('fl_mpchart_pro');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
