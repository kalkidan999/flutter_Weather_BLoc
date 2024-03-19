import 'package:test/test.dart';

import 'package:open_meteo_api/open_meteo_api.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test('return correct Weather object', () {
        expect(
            Weather.fromJson(
              <String, dynamic>{'temperature': 15.3, 'weathercode': 63},
            ),
            isA<Weather>()
                .having((w) => w.temperature, 'temperature', 15.3)
                .having((w) => w.weatherCode, 'weatherCode', 63));
      });
    });
  });
}
