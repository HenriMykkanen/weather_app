import 'package:json_annotation/json_annotation.dart';

class DoubleIntConverter implements JsonConverter<int, double> {
  const DoubleIntConverter();

  @override
  int fromJson(double json) => json.round();

  @override
  double toJson(int object) => object.toDouble();
}
