import 'package:test/test.dart';
import 'package:weather_app/utilities/double_int_converter.dart';
import 'package:weather_app/utilities/epoch_datetime_converter.dart';

void main() {
  group('DoubleIntConverter', () {
    test('fromJson() should round double to the nearest integer', () {
      final converter = const DoubleIntConverter();

      expect(converter.fromJson(5.4), equals(5)); // Rounds down
      expect(converter.fromJson(5.6), equals(6)); // Rounds up
      expect(converter.fromJson(5.5), equals(6)); // Rounds up
      expect(converter.fromJson(-5.4), equals(-5)); // Rounds down
      expect(converter.fromJson(-5.6), equals(-6)); // Rounds down
      expect(converter.fromJson(-5.5), equals(-6)); // Rounds down
      expect(converter.fromJson(0.0), equals(0)); // No change
      expect(converter.fromJson(0.499), equals(0)); // Rounds down
      expect(converter.fromJson(0.5), equals(1)); // Rounds up
      expect(converter.fromJson(-0.499), equals(0)); // Rounds down
      expect(converter.fromJson(-0.5), equals(-1)); // Rounds down
    });

    test('toJson() should convert int to double', () {
      final converter = const DoubleIntConverter();

      expect(converter.toJson(5), equals(5.0));
      expect(converter.toJson(-5), equals(-5.0));
      expect(converter.toJson(0), equals(0.0));
    });
  });
  group('EpochDateTimeConverter', () {
    test('fromJson() should convert int to DateTime', () {
      const converter = EpochDateTimeConverter();

      // Sunday, February 14, 2021 11:20:00 PM GMT+02:00
      const int epochTime = 1613337600000;

      final expectedDateTime = DateTime.fromMillisecondsSinceEpoch(epochTime);
      print(expectedDateTime.toString());

      expect(converter.fromJson(epochTime), equals(expectedDateTime));
    });

    test('toJson() should convert DateTime to int', () {
      const converter = EpochDateTimeConverter();

      // Monday, February 15, 2021 12:00:00 AM GMT+02:00
      final dateTime = DateTime(2021, 2, 15);

      // 1613340000000
      final expectedEpochTime = dateTime.millisecondsSinceEpoch;
      print(expectedEpochTime);

      expect(converter.toJson(dateTime), equals(expectedEpochTime));
    });
  });
}
