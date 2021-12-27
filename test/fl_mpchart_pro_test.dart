import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fl_mpchart_pro/fl_mpchart_pro.dart';

void main() {
  const MethodChannel channel = MethodChannel('fl_mpchart_pro');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlMpchartPro.platformVersion, '42');
  });
}
