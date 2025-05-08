import 'package:freezed_annotation/freezed_annotation.dart';

part 'earthquake.freezed.dart';
part 'earthquake.g.dart';

@freezed
class EarthquakeResponse with _$EarthquakeResponse {
  const factory EarthquakeResponse({
    required String type,
    required Metadata metadata,
    required List<Feature> features,
    required List<double> bbox,
  }) = _EarthquakeResponse;

  factory EarthquakeResponse.fromJson(Map<String, dynamic> json) =>
      _$EarthquakeResponseFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    required int generated,
    required String url,
    required String title,
    required String api,
    required int count,
    required int status,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
class Feature with _$Feature {
  const factory Feature({
    required String type,
    required Properties properties,
    required Geometry geometry,
    required String id,
  }) = _Feature;

  factory Feature.fromJson(Map<String, dynamic> json) =>
      _$FeatureFromJson(json);
}

@freezed
class Properties with _$Properties {
  const factory Properties({
    required double mag,
    required String place,
    required int time,
    required int updated,
    required int? tz,
    required String url,
    required String detail,
    required int? felt,
    required double? cdi,
    required double? mmi,
    required String? alert,
    required String status,
    required int tsunami,
    required int sig,
    required String net,
    required String code,
    required String ids,
    required String sources,
    required String types,
    required int? nst,
    required double? dmin,
    required double? rms,
    required double? gap,
    required String magType,
    required String type,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required String type,
    required List<double> coordinates,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}
